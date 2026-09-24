# Link Health Scanner

A link-rot scanner for large curated lists (awesome-lists, resource collections,
documentation indexes).

Large curated lists accumulate dead links faster than any maintainer can check by
hand. A list with 500 links needs roughly two hours of manual clicking to audit
once. This tool does that audit in a few minutes, and — importantly — does it
without generating false reports.

## Why false positives matter more than coverage

Most naive link checkers report anything that isn't HTTP 200 as broken. On real
curated lists that produces a report that is roughly half wrong, because:

| Status | What it usually means | Actually dead? |
|---|---|---|
| 403 | Bot protection (Cloudflare, Medium, Twitter) | No |
| 429 | Rate limiting — often caused by the checker itself | No |
| 412 | Precondition/bot challenge | No |
| 000 | DNS failure, TLS error, or the checker's own network | Unknown |
| 521/522 | Origin down, may be temporary | Unknown |
| **404/410** | **Resource genuinely gone** | **Yes** |

A maintainer who receives a report where half the entries are wrong will not
read the second one. So this scanner only reports **404 and 410**, and verifies
each one a second time at low concurrency before including it.

Everything else is counted but not reported as broken.

## What it checks

**1. Hard dead links** — 404/410 only, double-verified, redirects followed to
final destination.

**2. GitHub repositories that no longer exist** — checked via the GitHub API
rather than HTTP. Note the GraphQL API does not follow rename/transfer
redirects, so every repository it reports missing is re-checked through REST,
which does. Renamed repositories are listed separately with their new name.

**3. GitHub repositories that are archived** — still reachable, but the owner
has marked them read-only. Usually worth flagging in a curated list.

**4. GitHub repositories with no activity in 2+ years** — not necessarily
removal candidates, but useful for a maintainer deciding what to prune.

**5. Replacement candidates** — for dead links, queries the Wayback Machine for
the closest snapshot. For deleted GitHub repos, searches for a same-named
successor (projects are frequently transferred to an org without the list being
updated).

## Usage

```sh
./scan.sh owner/repo              # scan one repository's README
./scan.sh -f targets.txt          # scan many
```

Output is a per-repository report under `reports/`.

## Survey results

Run across 159 widely-used curated lists holding roughly 4.2 million GitHub
stars between them. It checked 37,203 links and found 1,081 genuinely dead
ones, plus 205 linked repositories that have since been deleted, 794 that are
archived, and 5,035 with no activity in two or more years.

A naive checker would have reported **6,979** broken links against the same
corpus. 5,877 of those - 84% - would have been wrong: 2,458 bot-protection
403s, 1,553 DNS/TLS failures, 439 self-inflicted 429s, and so on. That gap is
the whole point of the tool.

Full survey and per-repository detail: [reports/](reports/).

## Limitations

- Only reads the README. Lists split across multiple files need `-r` (recursive),
  which is slower and not enabled by default.
- The Wayback Machine has no snapshot for roughly a third of dead links.
- A successor-repository suggestion is a *candidate*, not a confirmation. Always
  verify before applying.
- Network position matters. A site unreachable from the scanning host may be
  perfectly alive elsewhere — this is why `000` is never reported as dead.

## License

MIT
