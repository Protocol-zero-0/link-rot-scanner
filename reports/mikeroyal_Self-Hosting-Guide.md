# Link health: mikeroyal/Self-Hosting-Guide

Scanned 2026-09-22 against 2395 links found in the README.

Only HTTP 404/410 count as dead. 403/412 (bot protection), 429 (rate
limiting) and 000 (DNS/TLS failure) are excluded - on a list this size
they are overwhelmingly false alarms. Every link below returned 404/410
on two separate passes with redirects followed. GitHub entries are
resolved through the API, so a renamed or transferred repository is not
mistaken for a deleted one.

| | count |
|---|---|
| Dead links | 57 |
| Deleted repositories | 7 |
| Archived repositories | 49 |
| No activity in 2+ years | 150 |

## Dead links (57)

Clustered on hosts that went away wholesale:

- `dl.min.io` - 7 links
- `www.amd.com` - 3 links

1 have an archived copy, linked inline.

- http://coqui.ai/
- http://www.fail2ban.org/wiki/index.php/Main_Page
- https://blog.getalby.com/introducing-the-alby-wallet-api/
- https://blowater.deno.dev
- https://developer.ibm.com/technologies/containers/tutorials/yaml-basics-and-usage-in-kubernetes/
- https://dl.min.io/server/minio/release/darwin-amd64/minio
- https://dl.min.io/server/minio/release/linux-amd64/minio
- https://dl.min.io/server/minio/release/linux-amd64/minio|
- https://dl.min.io/server/minio/release/linux-arm64/minio|
- https://dl.min.io/server/minio/release/linux-ppc64le/minio|
- https://dl.min.io/server/minio/release/linux-s390x/minio|
- https://dl.min.io/server/minio/release/windows-amd64/minio.exe
- https://docs.fluentd.org/v/0.12/articles/kubernetes-fluentd
- https://en.wikipedia.org/wiki/Docker_(software
- https://enchantedcode.co.uk/hasty-paste/
- https://eventql.io/documentation/
- https://forums.ghostbsd.org/index.php
- https://get.opensuse.org/kubic/
- https://grafana.com/training/aws/
- https://help.beeper.com/beeper-mini/beeper-mini-getting-started-guide-site
- https://help.beeper.com/chat-networks/imessage
- https://index.ros.org/doc/ros2/
- https://investor.salesforce.com/press-releases/press-release-details/2019/Salesforce-Completes-Acquisition-of-Tableau/default.aspx
- https://kodi.tv/download/853
- https://m64p.github.io/
- https://nanne.dev/k8s-at-home-search/#/
- https://netmaker.readthedocs.io/en/v0.7.2/index.html
- https://nostr-registry.netlify.app/
- https://spatial-labs.dev/posts/202101072328-intro-to-ansible-on-linode/
- https://techhub.hpe.com/eginfolib/servers/docs/Telco/Blueprints/infocenter/index.html#GUID-9906A227-C1FB-4FD5-A3C3-F3B72EC81CAB.html
- https://upscayl.github.io/
- https://wiki.ghostbsd.org/index.php/Main_Page
- https://www.aicpa.org/interestareas/frc/assuranceadvisoryservices/aicpasoc2report.html
- https://www.amd.com/en/graphics/workstation-virtual-graphics
- https://www.amd.com/en/processors/athlon-pro
- https://www.amd.com/en/processors/threadripper-creators
- https://www.cloudlinux.com/all-products/product-overview/cloudlinuxos
- https://www.coursera.org/projects/ansible-fundamentals
- https://www.docker.com/dockercon/training
- https://www.ibm.com/analytics/db2
- https://www.ikoolcore.com/products/ikoolcore
- https://www.kali.org/docs/arm/kali-linux-raspberry-pi/
- https://www.katacoda.com/courses/kubernetes/playground
- https://www.linuxfoundation.org/blog/2017/11/best-practices-using-open-source-code/
- https://www.microsoft.com/en-us/research/project/homomorphic-encryption/
- https://www.nist.gov/national-security-standards
- https://www.owasp.org/index.php/Main_Page
  - archived copy: https://web.archive.org/web/20240103065711/https://owasp.org/
- https://www.pluralsight.com/courses/ansible-fundamentals
- https://www.silicondust.com/product/hdhomerun-scribe-4k/
- https://www.veracode.com/sites/default/files/Resources/eBooks/7-kinds-of-security.pdf
- https://www.veracrypt.fr/code/VeraCrypt/
- https://www.verizon.com/about/news/verizon-unity-partner-5g-mec-gaming-enterprise
- https://www.vmware.com/topics/glossary/content/network-functions-virtualization-nfv
- https://www.vmware.com/topics/glossary/content/software-defined-networking
- https://www.weka.io/resources/datasheet/wekafs-the-weka-file-system/
- https://www.westerndigital.com/c/internal-drives.0_TB-4_TB.11_TB-20_TB.5_TB-10_TB.hard_drives
- https://zwave-js.github.io/zwavejs2mqtt/

## Deleted repositories (7)

- ArcadeCity/app
- Russell91/sshrc
- ShawnCN/cinny_nostsr2
- fboender/ansible-cmdb
- groupon/ansible-silo
- kaiwolfram/Nozzle
- miollek/Free-Database-Books

## Archived repositories (49)

- BrightonBTC/bija (last push 2023-08-27)
- ConfusedPolarBear/intro-skipper (last push 2023-09-04)
- Dolu89/nodestr-relay (last push 2022-12-19)
- EmbarkStudios/wg-ui (last push 2023-04-12)
- KoalaSat/nostros (last push 2025-02-02)
- KotlinGeekDev/Nosky (last push 2024-11-05)
- LibrePhotos/librephotos-docker (last push 2026-04-23)
- LibrePhotos/librephotos-frontend (last push 2026-04-23)
- LibrePhotos/librephotos-mobile (last push 2026-04-23)
- Microsoft/azuredatastudio (last push 2026-02-28)
- NervanaSystems/ngraph (last push 2020-10-15)
- OneFolderApp/OneFolder (last push 2026-06-29)
- Rudloff/alltube (last push 2023-04-22)
- StackExchange/blackbox (last push 2025-11-05)
- Zebradil/Gimme-iPhotos (last push 2024-03-24)
- ajnart/homarr (last push 2026-06-01)
- ansible-collections/overview (last push 2024-05-28)
- beeper/self-host (last push 2024-02-05)
- benbusby/whoogle-search (last push 2026-08-14)
- dominis/ansible-shell (last push 2025-01-07)
- fastenhealth/fasten-onprem (last push 2026-02-13)
- fiatjaf/expensive-relay (last push 2022-08-20)
- fiatjaf/noscl (last push 2024-01-27)
- futurepaul/nostr-rs (last push 2023-03-29)
- google/schedviz (last push 2024-06-11)
- hassio-addons/addon-home-panel (last push 2024-01-06)
- hassio-addons/addon-ide (last push 2020-02-14)
- hassio-addons/addon-log-viewer (last push 2026-08-28)
- hassio-addons/addon-matrix (last push 2023-03-26)
- intel/gvt-linux (last push 2024-10-03)
- inverse/hassio-addon-emoncms (last push 2025-09-16)
- irislib/iris-messenger (last push 2024-10-19)
- ksync/ksync (last push 2024-05-17)
- lucoiso/UEHttpGPT (last push 2024-05-24)
- matrix-org/matrix-react-sdk (last push 2024-09-11)
- microsoft/sql-spark-connector (last push 2025-02-27)
- microsoft/vscode-dev-containers (last push 2023-11-30)
- moby/datakit (last push 2023-08-21)
- monty888/nostrpy (last push 2023-01-25)
- mozilla/DeepSpeech (last push 2025-06-19)
- paolomainardi/hugo-lyra (last push 2023-07-12)
- plaidml/plaidml (last push 2023-07-23)
- ravenscroftj/turbopilot (last push 2023-09-30)
- rhasspy/piper (last push 2025-08-26)
- rhasspy/rhasspy3 (last push 2023-12-26)
- rhasspy/wyoming-porcupine1 (last push 2024-02-26)
- rhasspy/wyoming-snowboy (last push 2024-02-19)
- serge-chat/serge (last push 2025-11-21)
- zedeus/nitter (last push 2026-09-07)

## No activity in 2+ years (150)

- BVLC/caffe (last push 2024-07-31, 34552 stars)
- mckaywrigley/chatbot-ui (last push 2024-08-03, 33349 stars)
- tatsu-lab/stanford_alpaca (last push 2024-07-17, 30232 stars)
- Vision-CAIR/MiniGPT-4 (last push 2024-09-02, 25610 stars)
- karpathy/llama2.c (last push 2024-08-06, 20097 stars)
- tloen/alpaca-lora (last push 2024-07-29, 18903 stars)
- bcicen/ctop (last push 2024-07-08, 17839 stars)
- yahoo/CMAK (last push 2023-08-02, 11923 stars)
- getumbrel/llama-gpt (last push 2024-04-23, 10935 stars)
- mozilla/TTS (last push 2023-11-09, 10174 stars)
- antimatter15/alpaca.cpp (last push 2023-04-19, 10110 stars)
- Theano/Theano (last push 2024-01-15, 10002 stars)
- ggerganov/kbd-audio (last push 2023-01-15, 9029 stars)
- apenwarr/sshuttle (last push 2018-02-15, 8854 stars)
- statping/statping (last push 2024-07-05, 7292 stars)
- Freeboard/freeboard (last push 2023-09-23, 6506 stars)
- FD-/RPiPlay (last push 2023-04-14, 5223 stars)
- miroslavpejic85/p2p (last push 2024-06-11, 4072 stars)
- moby/hyperkit (last push 2023-04-28, 3714 stars)
- OmniDB/OmniDB (last push 2023-02-01, 3285 stars)
- archivy/archivy (last push 2023-07-25, 3277 stars)
- ha/doozerd (last push 2016-03-16, 3250 stars)
- kimchi-project/kimchi (last push 2023-01-04, 3196 stars)
- subspacecloud/subspace (last push 2022-09-05, 2590 stars)
- selfspy/selfspy (last push 2019-03-06, 2495 stars)
- Aloshi/EmulationStation (last push 2024-07-15, 2300 stars)
- berthubert/googerteller (last push 2024-04-29, 2225 stars)
- pimox/pimox7 (last push 2024-01-08, 1998 stars)
- liltom-eth/llama2-webui (last push 2024-03-22, 1936 stars)
- pstadler/flightplan (last push 2022-01-18, 1812 stars)
- buildfoundation/mainframer (last push 2023-11-08, 1756 stars)
- desaster/kippo (last push 2023-11-19, 1714 stars)
- solusipse/fiche (last push 2023-07-14, 1550 stars)
- MaxLeiter/drift (last push 2023-10-25, 1364 stars)
- YinHangCode/homebridge-mi-aqara (last push 2024-03-26, 1075 stars)
- ivandokov/phockup (last push 2024-05-06, 1012 stars)
- tailscale/tailscale-synology (last push 2023-06-12, 991 stars)
- mckaywrigley/chatbot-ui-lite (last push 2023-04-24, 972 stars)
- HclX/WyzeHacks (last push 2022-10-19, 887 stars)
- nachoparker/dutree (last push 2022-06-29, 877 stars)
- automaticmode/active_workflow (last push 2023-04-03, 864 stars)
- accelerated-text/accelerated-text (last push 2023-03-10, 806 stars)
- nervetattoo/simple-thermostat (last push 2024-08-19, 806 stars)
- PatrickHallek/automated-irrigation-system (last push 2024-02-18, 778 stars)
- nervetattoo/banner-card (last push 2023-02-03, 705 stars)
- MarceauKa/shaark (last push 2024-05-30, 590 stars)
- danielwelch/hassio-zigbee2mqtt (last push 2023-02-23, 570 stars)
- bramkragten/weather-card (last push 2024-05-04, 556 stars)
- OpenIotOrg/openiot (last push 2023-02-22, 471 stars)
- nickjj/ansigenome (last push 2019-05-30, 446 stars)
- Kinoma/kinomajs (last push 2023-10-10, 444 stars)
- custom-cards/spotify-card (last push 2023-05-29, 408 stars)
- l3uddz/plex_dupefinder (last push 2024-02-21, 345 stars)
- kalkih/simple-weather-card (last push 2023-05-12, 342 stars)
- kennethreitz/requests (last push 2024-03-30, 312 stars)
- unclebob/more-speech (last push 2024-02-06, 311 stars)
- LudwigStumpp/llm-leaderboard (last push 2024-08-23, 306 stars)
- gadgetchnnel/lovelace-home-feed-card (last push 2024-02-23, 305 stars)
- podify-org/podify (last push 2023-06-22, 300 stars)
- jeffthibault/python-nostr (last push 2024-08-14, 280 stars)
- unclebacon-live/cartridge (last push 2022-05-12, 257 stars)
- monoid-privacy/monoid (last push 2023-03-01, 238 stars)
- cbulock/lovelace-battery-entity (last push 2022-07-06, 237 stars)
- ironsheep/lovelace-rpi-monitor-card (last push 2024-04-22, 233 stars)
- ChrisTitusTech/TitusPi (last push 2024-03-25, 214 stars)
- ingyamilmolinar/doctorgpt (last push 2023-05-10, 209 stars)
- danimtb/dasshio (last push 2023-09-05, 206 stars)
- postlund/home-card (last push 2023-04-04, 198 stars)
- PurritoBin/PurritoBin (last push 2022-04-11, 193 stars)
- raftario/filite (last push 2023-04-16, 189 stars)
- gurbyz/power-wheel-card (last push 2022-06-06, 183 stars)
- MutinyWallet/blastr (last push 2024-01-26, 155 stars)
- custom-cards/bignumber-card (last push 2022-01-31, 148 stars)
- pseudozach/nostr.directory (last push 2023-10-20, 146 stars)
- xy2z/PineDocs (last push 2023-03-08, 143 stars)
- Kanga-Who/home-assistant (last push 2024-06-28, 136 stars)
- rajarshimaitra/rust-nostr (last push 2022-12-26, 130 stars)
- monlovesmango/astral (last push 2023-02-20, 100 stars)
- nickfarrow/frostr (last push 2024-01-22, 97 stars)
- metasikander/s0str (last push 2023-01-02, 92 stars)
- damwhit/harvest_helper (last push 2023-06-06, 89 stars)
- dolezsa/Xiaomi_Hygrothermo (last push 2021-12-26, 89 stars)
- lapulpeta/Nostrid (last push 2023-06-22, 89 stars)
- t4t5/nostr-react (last push 2024-02-20, 86 stars)
- ruscur/snowpatch (last push 2024-04-19, 84 stars)
- kalkih/forked-daapd-card (last push 2022-05-27, 78 stars)
- DuinOS/DuinOS (last push 2020-07-10, 73 stars)
- digi-monkey/flycat-web (last push 2024-02-27, 71 stars)
- nostr-connect/nostrum (last push 2023-12-06, 65 stars)
- styppo/hamstr (last push 2023-07-28, 63 stars)
- 0xtlt/nostr_rust (last push 2023-02-15, 62 stars)
- jesterui/jesterui (last push 2024-05-24, 62 stars)
- dolu89/nostr-proxy (last push 2024-06-01, 57 stars)
- nostr-connect/connect (last push 2023-12-17, 57 stars)
- microgit-com/microgit (last push 2022-09-29, 55 stars)
- atdixon/me.untethr.nostr-relay (last push 2024-08-18, 49 stars)
- slaninas/nostr-bot (last push 2023-06-03, 49 stars)
- 8go/matrix-nostr-bridge (last push 2022-12-15, 48 stars)
- memberapp/memberapp.github.io (last push 2024-09-04, 48 stars)
- cmdruid/nostr-emitter (last push 2023-02-05, 46 stars)
- barkyq/gnost-relay (last push 2023-09-06, 45 stars)
- vinliao/nashboard (last push 2023-08-14, 45 stars)
- Giszmo/NostrPostr (last push 2023-10-13, 44 stars)
- johnny423/pyrelay (last push 2023-04-08, 44 stars)
- keystr/keystr-rs (last push 2023-06-15, 42 stars)
- neb-b/daisy (last push 2023-02-07, 42 stars)
- Cameri/smtp-nostr-gateway (last push 2024-06-19, 40 stars)
- emeceve/loquaz (last push 2022-06-16, 36 stars)
- aitechguy/nostr-address-book (last push 2024-07-06, 33 stars)
- cmdruid/nostr-terminal (last push 2023-02-05, 32 stars)
- colealbon/git-nostr (last push 2023-10-10, 32 stars)
- nodetec/ublog (last push 2024-03-10, 32 stars)
- Nostrology/astro (last push 2023-02-21, 30 stars)
- leesalminen/nostr-broadcast (last push 2024-06-10, 30 stars)
- blakejakopovic/nostreq (last push 2023-05-19, 28 stars)
- lpicanco/knostr (last push 2023-03-08, 28 stars)
- sebastiaanwouters/emon (last push 2023-02-03, 27 stars)
- dyegolara/nostr-attached (last push 2023-01-07, 26 stars)
- blakejakopovic/nostr-spam-detection (last push 2023-02-25, 24 stars)
- erdaltoprak/tamga (last push 2023-03-10, 24 stars)
- KiPSOFT/nostr-deno (last push 2023-02-05, 23 stars)
- pjv/nostrtium (last push 2023-10-20, 20 stars)
- jaonoctus/nip06-cli (last push 2024-05-12, 19 stars)
- opencontainers/container-images (last push 2023-03-22, 18 stars)
- canostrical/blogsync (last push 2023-03-10, 17 stars)
- cnixbtc/NostrKit (last push 2024-01-25, 17 stars)
- getAlby/http-nostr-publisher (last push 2023-05-16, 17 stars)
- keatontaylor/alexa_media_player (last push 2023-11-28, 17 stars)
- silencesoft/written (last push 2023-07-05, 17 stars)
- cynsar-foundation/second.exchange (last push 2024-04-01, 15 stars)
- jb55/nostr-notify (last push 2022-11-27, 15 stars)
- vdo/nostr-rs-relay-compose (last push 2023-02-03, 14 stars)
- ryogrid/algia-web (last push 2023-10-26, 12 stars)
- wds4/electron-react-boilerplate-nostr (last push 2023-06-07, 12 stars)
- barkyq/gnost-deflate-client (last push 2023-02-22, 9 stars)
- bluejekyll/trust-dns (last push 2024-08-04, 9 stars)
- sepehr-safari/listr (last push 2024-01-01, 9 stars)
- Cameri/nostrillery (last push 2022-09-16, 8 stars)
- ekimber/nostromat (last push 2023-02-02, 8 stars)
- vinliao/anonroom (last push 2022-03-05, 8 stars)
- mdzz-club/nkcli (last push 2023-04-11, 7 stars)
- neeboo/schnorr_snap (last push 2022-12-21, 7 stars)
- xbol0/nostring (last push 2023-04-06, 7 stars)
- BEEBSDONE/MeShell_Nodejs (last push 2024-05-27, 6 stars)
- LightningK0ala/nostr-wtf (last push 2023-06-06, 5 stars)
- bennyhodl/hexynip5 (last push 2023-02-10, 4 stars)
- leesalminen/nostr-follow-bundler (last push 2023-02-06, 4 stars)
- lightningorb/nostrify.me (last push 2023-02-01, 2 stars)
- melvincarvalho/nostrefresh (last push 2024-05-28, 2 stars)
- leesalminen/nostr-bulk-dm (last push 2023-07-21, 1 stars)

---

Generated by [link-rot-scanner](https://github.com/Protocol-zero-0/link-rot-scanner).
