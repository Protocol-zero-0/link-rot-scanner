#!/usr/bin/env bash
# Link Health Scanner - audit link rot in large curated lists.
# Usage: ./scan.sh owner/repo [owner/repo ...]
#        ./scan.sh -f targets.txt
set -uo pipefail
OUT="${OUT:-reports}"; JOBS="${JOBS:-20}"; STALE_YEARS="${STALE_YEARS:-2}"
command -v gh >/dev/null || { echo "need: gh" >&2; exit 1; }
command -v jq >/dev/null || { echo "need: jq" >&2; exit 1; }

targets=()
if [ "${1:-}" = "-f" ]; then mapfile -t targets < "$2"; else targets=("$@"); fi
[ ${#targets[@]} -gt 0 ] || { sed -n '2,4p' "$0"; exit 1; }
mkdir -p "$OUT" .cache

# 1. pull README, extract links
fetch() {
  local r="$1" s="${1//\//_}"
  mkdir -p ".cache/$s"
  gh api "repos/$r/readme" 2>/dev/null | jq -r '.content // empty' | base64 -d > ".cache/$s/README.md" 2>/dev/null
  grep -oE 'https?://[^ )>"'"'"'`]+' ".cache/$s/README.md" 2>/dev/null \
    | sed 's/[.,;:]$//' | grep -vE 'shields\.io|badgen|camo\.github|/badge' \
    | sort -u > ".cache/$s/links.txt"
}

# 2. HTTP check. Only 404/410 count as dead - everything else is either
#    bot protection (403/412), our own rate limiting (429), or ambiguous (000).
UA='Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
probe() { printf '%s\t%s\n' "$(curl -s -o /dev/null -w '%{http_code}' -L --max-time 9 -A "$UA" "$1" 2>/dev/null)" "$1"; }
export -f probe; export UA

# 3. GitHub refs go through the API, not HTTP: this distinguishes a deleted
#    repository from one that was merely renamed or transferred.
gh_batch() {
  python3 - "$1" <<'PY'
import json,subprocess,sys
repos=[l.strip() for l in open(sys.argv[1]) if l.strip() and '/' in l]
for i in range(0,len(repos),80):
    ch=repos[i:i+80]; parts=[]
    for j,r in enumerate(ch):
        o,_,n=r.partition('/')
        parts.append(f'r{j}: repository(owner:"{o}", name:"{n}"){{ nameWithOwner isArchived pushedAt stargazerCount }}')
    p=subprocess.run(['gh','api','graphql','-f','query=query{'+' '.join(parts)+'}'],capture_output=True,text=True)
    try: d=(json.loads(p.stdout).get('data') or {})
    except Exception: continue
    for j,r in enumerate(ch):
        v=d.get(f'r{j}')
        print(f"{r}\tGONE\t-\t-\t-" if v is None else
              f"{v['nameWithOwner']}\tOK\t{str(v['isArchived']).lower()}\t{v['pushedAt'][:10]}\t{v['stargazerCount']}")
PY
}

# 4. Wayback lookup for a replacement.
snapshot() {
  local r; r=$(curl -s -o /dev/null -w '%{http_code}|%{url_effective}' -L --max-time 20 \
        "https://web.archive.org/web/2023/$1" 2>/dev/null)
  [ "${r%%|*}" = "200" ] && [ "${r#*|}" != "${r#*|https://web.archive.org/}" ] && printf '%s' "${r#*|}"
}

cutoff=$(date -u -d "$STALE_YEARS years ago" +%Y-%m-%d)
for r in "${targets[@]}"; do
  [ -n "$r" ] || continue
  s="${r//\//_}"; echo "== $r"
  fetch "$r"
  [ -s ".cache/$s/links.txt" ] || { echo "   no links found"; continue; }
  grep -vE '^https?://github\.com/' ".cache/$s/links.txt" > ".cache/$s/http.txt"
  grep -oE '^https?://github\.com/[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+' ".cache/$s/links.txt" \
    | sed -E 's#^https?://github\.com/##; s#\.git$##' \
    | grep -vE '^(sponsors|orgs|features|about|pricing|topics|collections|events|login|join|settings|marketplace|apps|codespaces|security|readme|explore|trending)(/|$)' \
    | sort -u > ".cache/$s/ghrefs.txt"

  xargs -a ".cache/$s/http.txt" -P "$JOBS" -I{} bash -c 'probe "$@"' _ {} > ".cache/$s/pass1.tsv"
  # second pass: a transient failure should not be reported as rot
  awk -F'\t' '$1=="404"||$1=="410"{print $2}' ".cache/$s/pass1.tsv" > ".cache/$s/cand.txt"
  xargs -a ".cache/$s/cand.txt" -P 6 -I{} bash -c 'probe "$@"' _ {} > ".cache/$s/pass2.tsv"
  awk -F'\t' '$1=="404"||$1=="410"{print $2}' ".cache/$s/pass2.tsv" | sort -u > ".cache/$s/dead.txt"
  gh_batch ".cache/$s/ghrefs.txt" > ".cache/$s/gh.tsv"

  { echo "# Link health: $r"; echo; echo "_Scanned $(date -u +%Y-%m-%d). Only HTTP 404/410 are reported as dead;"
    echo "403/412 (bot protection), 429 (rate limit) and 000 (network) are excluded._"; echo
    n=$(wc -l < ".cache/$s/dead.txt")
    echo "## Dead links ($n)"; echo
    while read -r u; do [ -n "$u" ] || continue
      snap=$(snapshot "$u"); if [ -n "$snap" ]; then echo "- $u"; echo "  - replacement: $snap"; else echo "- $u"; fi
    done < ".cache/$s/dead.txt"
    echo; echo "## Deleted repositories ($(awk -F'\t' '$2=="GONE"' ".cache/$s/gh.tsv"|wc -l))"; echo
    awk -F'\t' '$2=="GONE"{print "- "$1}' ".cache/$s/gh.tsv"
    echo; echo "## Archived repositories ($(awk -F'\t' '$3=="true"' ".cache/$s/gh.tsv"|wc -l))"; echo
    awk -F'\t' '$3=="true"{print "- "$1" (last push "$4")"}' ".cache/$s/gh.tsv"
    echo; echo "## No activity in ${STALE_YEARS}+ years ($(awk -F'\t' -v d="$cutoff" '$2=="OK"&&$4<d' ".cache/$s/gh.tsv"|wc -l))"; echo
    awk -F'\t' -v d="$cutoff" '$2=="OK"&&$4<d{print "- "$1" (last push "$4", "$5" stars)"}' ".cache/$s/gh.tsv" | sort
  } > "$OUT/${s}.md"
  echo "   -> $OUT/${s}.md"
done
