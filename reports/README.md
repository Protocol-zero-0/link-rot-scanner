# Link rot across 159 large curated lists

A survey run on 2026-09-22. Every repository below is a widely-used curated
list or resource collection; together they hold roughly
4234k GitHub stars.

## What was found

| | total |
|---|---|
| Repositories scanned | 159 |
| Links checked | 37,203 |
| Dead links (404/410, double-verified) | 1,121 (1,102 unique URLs) |
| Linked repositories since deleted | 206 |
| Linked repositories now archived | 794 |
| Linked repositories idle 2+ years | 5,035 |

## Method, and why the numbers are lower than a naive checker's

A naive link checker flags everything that is not HTTP 200. Run against
this corpus it would have reported **6,979 broken links**. 5,877 of those
- 84% - would have been wrong:

| status | count | what it actually is |
|---|---:|---|
| 403 | 2,458 | bot protection (Cloudflare, Medium, news sites) |
| 000 | 1,553 | DNS/TLS failure, possibly local to the scanning host |
| 429 | 439 | the checker rate-limiting itself |
| 521 | 315 | origin temporarily down |
| 412 | 168 | bot challenge |
| other | 944 | 202, 400, 5xx and similar |

A report that is 84% false is worse than no report: the maintainer reads
the first three entries, finds them all alive, and never opens the next
one. So only 404 and 410 are counted here, each re-checked on a separate
second pass with redirects followed to their final destination. Of 1,104
first-pass candidates, 1,102 survived.

GitHub links are resolved through the API rather than over HTTP, which is
what makes the deleted/archived/idle split possible at all - over plain
HTTP a transferred repository and a deleted one look the same.

## Per-repository results

Sorted by the number of actionable findings.

| repository | stars | links | dead | deleted | archived | idle 2y+ |
|---|---:|---:|---:|---:|---:|---:|
| [jnv/lists](https://github.com/jnv/lists) | 11,504 | 1787 | 25 | 16 | 86 | 708 |
| [mikeroyal/Self-Hosting-Guide](https://github.com/mikeroyal/Self-Hosting-Guide) | 22,847 | 2395 | 57 | 7 | 48 | 172 |
| [rShetty/awesome-podcasts](https://github.com/rShetty/awesome-podcasts) | 13,100 | 805 | 86 | 0 | 0 | 3 |
| [thangchung/awesome-dotnet-core](https://github.com/thangchung/awesome-dotnet-core) | 21,389 | 818 | 6 | 7 | 73 | 210 |
| [prakhar1989/awesome-courses](https://github.com/prakhar1989/awesome-courses) | 71,312 | 658 | 79 | 0 | 1 | 12 |
| [xgrommx/awesome-redux](https://github.com/xgrommx/awesome-redux) | 12,287 | 465 | 16 | 21 | 43 | 229 |
| [trimstray/the-book-of-secret-knowledge](https://github.com/trimstray/the-book-of-secret-knowledge) | 245,131 | 1001 | 43 | 7 | 29 | 116 |
| [ChristosChristofidis/awesome-deep-learning](https://github.com/ChristosChristofidis/awesome-deep-learning) | 28,950 | 600 | 52 | 11 | 8 | 53 |
| [LiLittleCat/awesome-free-chatgpt](https://github.com/LiLittleCat/awesome-free-chatgpt) | 21,278 | 935 | 68 | 0 | 2 | 5 |
| [bharathgs/Awesome-pytorch-list](https://github.com/bharathgs/Awesome-pytorch-list) | 16,676 | 742 | 3 | 10 | 57 | 483 |
| [sdras/awesome-actions](https://github.com/sdras/awesome-actions) | 28,247 | 406 | 0 | 6 | 58 | 153 |
| [wasabeef/awesome-android-ui](https://github.com/wasabeef/awesome-android-ui) | 57,670 | 336 | 7 | 6 | 44 | 237 |
| [binhnguyennus/awesome-scalability](https://github.com/binhnguyennus/awesome-scalability) | 74,134 | 921 | 56 | 0 | 0 | 0 |
| [jbhuang0604/awesome-computer-vision](https://github.com/jbhuang0604/awesome-computer-vision) | 23,568 | 501 | 53 | 2 | 1 | 51 |
| [dipakkr/A-to-Z-Resources-for-Students](https://github.com/dipakkr/A-to-Z-Resources-for-Students) | 22,273 | 905 | 52 | 0 | 1 | 15 |
| [fighting41love/funNLP](https://github.com/fighting41love/funNLP) | 83,305 | 595 | 16 | 12 | 25 | 269 |
| [eugeneyan/applied-ml](https://github.com/eugeneyan/applied-ml) | 30,382 | 744 | 45 | 1 | 6 | 13 |
| [visenger/awesome-mlops](https://github.com/visenger/awesome-mlops) | 14,219 | 518 | 48 | 0 | 1 | 26 |
| [JStumpp/awesome-android](https://github.com/JStumpp/awesome-android) | 12,338 | 330 | 7 | 2 | 36 | 151 |
| [ujjwalkarn/Machine-Learning-Tutorials](https://github.com/ujjwalkarn/Machine-Learning-Tutorials) | 18,215 | 532 | 43 | 1 | 1 | 45 |
| [brillout/awesome-react-components](https://github.com/brillout/awesome-react-components) | 48,464 | 749 | 11 | 5 | 22 | 172 |
| [paralax/awesome-honeypots](https://github.com/paralax/awesome-honeypots) | 10,565 | 338 | 10 | 11 | 17 | 162 |
| [sbilly/awesome-security](https://github.com/sbilly/awesome-security) | 14,875 | 339 | 12 | 5 | 17 | 63 |
| [diff-usion/Awesome-Diffusion-Models](https://github.com/diff-usion/Awesome-Diffusion-Models) | 12,370 | 2487 | 17 | 2 | 11 | 281 |
| [hslatman/awesome-threat-intelligence](https://github.com/hslatman/awesome-threat-intelligence) | 10,665 | 279 | 11 | 4 | 14 | 50 |
| [rshipp/awesome-malware-analysis](https://github.com/rshipp/awesome-malware-analysis) | 14,209 | 422 | 8 | 5 | 14 | 96 |
| [bobeff/open-source-games](https://github.com/bobeff/open-source-games) | 15,282 | 412 | 16 | 0 | 10 | 33 |
| [dastergon/awesome-sre](https://github.com/dastergon/awesome-sre) | 13,530 | 486 | 24 | 1 | 1 | 9 |
| [alexpate/awesome-design-systems](https://github.com/alexpate/awesome-design-systems) | 25,991 | 279 | 2 | 8 | 14 | 16 |
| [tiimgreen/github-cheat-sheet](https://github.com/tiimgreen/github-cheat-sheet) | 59,200 | 184 | 3 | 19 | 1 | 6 |
| [bayandin/awesome-awesomeness](https://github.com/bayandin/awesome-awesomeness) | 33,679 | 336 | 1 | 4 | 16 | 113 |
| [Wechat-ggGitHub/Awesome-GitHub-Repo](https://github.com/Wechat-ggGitHub/Awesome-GitHub-Repo) | 17,259 | 502 | 0 | 2 | 18 | 118 |
| [carpedm20/awesome-hacking](https://github.com/carpedm20/awesome-hacking) | 17,108 | 200 | 9 | 2 | 9 | 30 |
| [chaozh/awesome-blockchain-cn](https://github.com/chaozh/awesome-blockchain-cn) | 18,949 | 195 | 8 | 5 | 7 | 22 |
| [ZuzooVn/machine-learning-for-software-engineers](https://github.com/ZuzooVn/machine-learning-for-software-engineers) | 28,866 | 270 | 17 | 1 | 1 | 18 |
| [sindresorhus/awesome-electron](https://github.com/sindresorhus/awesome-electron) | 27,285 | 245 | 6 | 0 | 13 | 46 |
| [alebcay/awesome-shell](https://github.com/alebcay/awesome-shell) | 37,658 | 377 | 2 | 1 | 15 | 135 |
| [terryum/awesome-deep-learning-papers](https://github.com/terryum/awesome-deep-learning-papers) | 26,193 | 275 | 18 | 0 | 0 | 4 |
| [kahun/awesome-sysadmin](https://github.com/kahun/awesome-sysadmin) | 24,338 | 410 | 12 | 3 | 2 | 16 |
| [quozd/awesome-dotnet](https://github.com/quozd/awesome-dotnet) | 21,621 | 738 | 1 | 0 | 16 | 46 |
| [xingshaocheng/architect-awesome](https://github.com/xingshaocheng/architect-awesome) | 60,857 | 948 | 14 | 0 | 2 | 11 |
| [Hannibal046/Awesome-LLM](https://github.com/Hannibal046/Awesome-LLM) | 27,414 | 373 | 4 | 1 | 8 | 18 |
| [lnishan/awesome-competitive-programming](https://github.com/lnishan/awesome-competitive-programming) | 14,184 | 262 | 12 | 0 | 1 | 11 |
| [Mikoto10032/DeepLearning](https://github.com/Mikoto10032/DeepLearning) | 17,794 | 837 | 9 | 1 | 2 | 43 |
| [phanan/htaccess](https://github.com/phanan/htaccess) | 13,185 | 38 | 12 | 0 | 0 | 0 |
| [Kristories/awesome-guidelines](https://github.com/Kristories/awesome-guidelines) | 11,114 | 168 | 4 | 0 | 7 | 24 |
| [floodsung/Deep-Learning-Papers-Reading-Roadmap](https://github.com/floodsung/Deep-Learning-Papers-Reading-Roadmap) | 39,565 | 133 | 11 | 0 | 0 | 0 |
| [JushBJJ/Mr.-Ranedeer-AI-Tutor](https://github.com/JushBJJ/Mr.-Ranedeer-AI-Tutor) | 29,578 | 28 | 10 | 0 | 0 | 0 |
| [imDazui/Tvlist-awesome-m3u-m3u8](https://github.com/imDazui/Tvlist-awesome-m3u-m3u8) | 30,025 | 215 | 10 | 0 | 0 | 3 |
| [gztchan/awesome-design](https://github.com/gztchan/awesome-design) | 17,559 | 447 | 9 | 0 | 0 | 1 |
| [kuchin/awesome-cto](https://github.com/kuchin/awesome-cto) | 35,482 | 253 | 7 | 1 | 0 | 13 |
| [mhinz/vim-galore](https://github.com/mhinz/vim-galore) | 17,985 | 85 | 4 | 1 | 3 | 8 |
| [AiHubCN/Awesome-Chinese-LLM](https://github.com/AiHubCN/Awesome-Chinese-LLM) | 22,769 | 222 | 0 | 2 | 5 | 80 |
| [eugeneyan/open-llms](https://github.com/eugeneyan/open-llms) | 12,880 | 342 | 3 | 0 | 4 | 10 |
| [DovAmir/awesome-design-patterns](https://github.com/DovAmir/awesome-design-patterns) | 49,006 | 122 | 4 | 0 | 2 | 18 |
| [bnb/awesome-hyper](https://github.com/bnb/awesome-hyper) | 11,008 | 270 | 0 | 0 | 5 | 15 |
| [camenduru/stable-diffusion-webui-colab](https://github.com/camenduru/stable-diffusion-webui-colab) | 15,910 | 918 | 2 | 0 | 3 | 21 |
| [jtoy/awesome-tensorflow](https://github.com/jtoy/awesome-tensorflow) | 17,550 | 203 | 2 | 0 | 3 | 74 |
| [mezod/awesome-indie](https://github.com/mezod/awesome-indie) | 11,813 | 185 | 5 | 0 | 0 | 1 |
| [neutraltone/awesome-stock-resources](https://github.com/neutraltone/awesome-stock-resources) | 14,554 | 282 | 4 | 0 | 1 | 5 |
| [vitalysim/Awesome-Hacking-Resources](https://github.com/vitalysim/Awesome-Hacking-Resources) | 17,430 | 290 | 3 | 0 | 2 | 17 |
| [babysor/MockingBird](https://github.com/babysor/MockingBird) | 36,903 | 43 | 4 | 0 | 0 | 2 |
| [mlabonne/llm-course](https://github.com/mlabonne/llm-course) | 83,060 | 214 | 3 | 0 | 1 | 3 |
| [mxgmn/WaveFunctionCollapse](https://github.com/mxgmn/WaveFunctionCollapse) | 25,341 | 254 | 2 | 2 | 0 | 26 |
| [GokuMohandas/Made-With-ML](https://github.com/GokuMohandas/Made-With-ML) | 49,573 | 48 | 3 | 0 | 0 | 0 |
| [binary-husky/gpt_academic](https://github.com/binary-husky/gpt_academic) | 71,371 | 96 | 1 | 0 | 2 | 3 |
| [djsime1/awesome-flipperzero](https://github.com/djsime1/awesome-flipperzero) | 24,322 | 156 | 1 | 2 | 0 | 56 |
| [haotian-liu/LLaVA](https://github.com/haotian-liu/LLaVA) | 25,032 | 96 | 3 | 0 | 0 | 12 |
| [junyanz/pytorch-CycleGAN-and-pix2pix](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix) | 25,244 | 80 | 3 | 0 | 0 | 23 |
| [mli/paper-reading](https://github.com/mli/paper-reading) | 33,849 | 329 | 3 | 0 | 0 | 0 |
| [0xk1h0/ChatGPT_DAN](https://github.com/0xk1h0/ChatGPT_DAN) | 12,468 | 23 | 2 | 0 | 0 | 0 |
| [bbfamily/abu](https://github.com/bbfamily/abu) | 18,676 | 110 | 2 | 0 | 0 | 1 |
| [emilwallner/Screenshot-to-code](https://github.com/emilwallner/Screenshot-to-code) | 16,523 | 17 | 2 | 0 | 0 | 3 |
| [lss233/kirara-ai](https://github.com/lss233/kirara-ai) | 19,033 | 39 | 1 | 1 | 0 | 2 |
| [othneildrew/Best-README-Template](https://github.com/othneildrew/Best-README-Template) | 16,370 | 32 | 0 | 2 | 0 | 0 |
| [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | 15,129 | 52 | 0 | 0 | 2 | 0 |
| [ConardLi/easy-dataset](https://github.com/ConardLi/easy-dataset) | 14,936 | 23 | 0 | 1 | 0 | 0 |
| [PatrickJS/awesome-cursorrules](https://github.com/PatrickJS/awesome-cursorrules) | 40,811 | 223 | 0 | 1 | 0 | 0 |
| [PlexPt/awesome-chatgpt-prompts-zh](https://github.com/PlexPt/awesome-chatgpt-prompts-zh) | 62,550 | 25 | 1 | 0 | 0 | 1 |
| [ShishirPatil/gorilla](https://github.com/ShishirPatil/gorilla) | 13,037 | 43 | 1 | 0 | 0 | 1 |
| [ageron/handson-ml](https://github.com/ageron/handson-ml) | 25,606 | 21 | 1 | 0 | 0 | 0 |
| [ashishpatel26/500-AI-Machine-learning-Deep-learning-Computer-vision-NLP-Projects-with-code](https://github.com/ashishpatel26/500-AI-Machine-learning-Deep-learning-Computer-vision-NLP-Projects-with-code) | 36,940 | 102 | 0 | 0 | 1 | 42 |
| [calesthio/Crucix](https://github.com/calesthio/Crucix) | 11,827 | 21 | 1 | 0 | 0 | 0 |
| [ddbourgin/numpy-ml](https://github.com/ddbourgin/numpy-ml) | 16,327 | 7 | 0 | 0 | 1 | 1 |
| [donnemartin/data-science-ipython-notebooks](https://github.com/donnemartin/data-science-ipython-notebooks) | 29,354 | 171 | 1 | 0 | 0 | 17 |
| [graykode/nlp-tutorial](https://github.com/graykode/nlp-tutorial) | 14,933 | 27 | 1 | 0 | 0 | 1 |
| [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) | 17,454 | 2 | 0 | 1 | 0 | 0 |
| [hesamsheikh/awesome-openclaw-usecases](https://github.com/hesamsheikh/awesome-openclaw-usecases) | 31,670 | 5 | 0 | 1 | 0 | 0 |
| [jindongwang/transferlearning](https://github.com/jindongwang/transferlearning) | 14,358 | 144 | 1 | 0 | 0 | 5 |
| [k4m4/movies-for-hackers](https://github.com/k4m4/movies-for-hackers) | 11,913 | 138 | 1 | 0 | 0 | 5 |
| [k4yt3x/video2x](https://github.com/k4yt3x/video2x) | 21,734 | 59 | 0 | 1 | 0 | 4 |
| [lukas-blecher/LaTeX-OCR](https://github.com/lukas-blecher/LaTeX-OCR) | 16,570 | 36 | 0 | 0 | 1 | 4 |
| [mckaywrigley/chatbot-ui](https://github.com/mckaywrigley/chatbot-ui) | 33,349 | 16 | 1 | 0 | 0 | 1 |
| [mrdbourke/pytorch-deep-learning](https://github.com/mrdbourke/pytorch-deep-learning) | 19,050 | 54 | 0 | 1 | 0 | 0 |
| [steven-tey/novel](https://github.com/steven-tey/novel) | 16,446 | 30 | 1 | 0 | 0 | 0 |
| [tayllan/awesome-algorithms](https://github.com/tayllan/awesome-algorithms) | 25,557 | 42 | 1 | 0 | 0 | 1 |
| [wong2/chatgpt-google-extension](https://github.com/wong2/chatgpt-google-extension) | 13,047 | 6 | 1 | 0 | 0 | 0 |
| [Avik-Jain/100-Days-Of-ML-Code](https://github.com/Avik-Jain/100-Days-Of-ML-Code) | 51,792 | 70 | 0 | 0 | 0 | 2 |
| [Awesome-HarmonyOS/HarmonyOS](https://github.com/Awesome-HarmonyOS/HarmonyOS) | 19,967 | 6 | 0 | 0 | 0 | 1 |
| [CorentinJ/Real-Time-Voice-Cloning](https://github.com/CorentinJ/Real-Time-Voice-Cloning) | 60,142 | 17 | 0 | 0 | 0 | 1 |
| [Kr1s77/awesome-python-login-model](https://github.com/Kr1s77/awesome-python-login-model) | 16,221 | 58 | 0 | 0 | 0 | 3 |
| [Nutlope/roomGPT](https://github.com/Nutlope/roomGPT) | 10,681 | 10 | 0 | 0 | 0 | 2 |
| [ShusenTang/Dive-into-DL-PyTorch](https://github.com/ShusenTang/Dive-into-DL-PyTorch) | 19,509 | 12 | 0 | 0 | 0 | 4 |
| [XingangPan/DragGAN](https://github.com/XingangPan/DragGAN) | 35,746 | 23 | 0 | 0 | 0 | 2 |
| [afshinea/stanford-cs-229-machine-learning](https://github.com/afshinea/stanford-cs-229-machine-learning) | 20,238 | 29 | 0 | 0 | 0 | 2 |
| [amusi/CVPR2026-Papers-with-Code](https://github.com/amusi/CVPR2026-Papers-with-Code) | 22,846 | 59 | 0 | 0 | 0 | 1 |
| [artidoro/qlora](https://github.com/artidoro/qlora) | 11,019 | 18 | 0 | 0 | 0 | 2 |
| [aymericdamien/TensorFlow-Examples](https://github.com/aymericdamien/TensorFlow-Examples) | 43,741 | 101 | 0 | 0 | 0 | 2 |
| [borisdayma/dalle-mini](https://github.com/borisdayma/dalle-mini) | 14,723 | 54 | 0 | 0 | 0 | 3 |
| [chiphuyen/machine-learning-systems-design](https://github.com/chiphuyen/machine-learning-systems-design) | 10,645 | 7 | 0 | 0 | 0 | 2 |
| [cocktailpeanut/dalai](https://github.com/cocktailpeanut/dalai) | 12,892 | 19 | 0 | 0 | 0 | 3 |
| [davideuler/architecture.of.internet-product](https://github.com/davideuler/architecture.of.internet-product) | 20,791 | 11 | 0 | 0 | 0 | 5 |
| [eriklindernoren/ML-From-Scratch](https://github.com/eriklindernoren/ML-From-Scratch) | 32,898 | 9 | 0 | 0 | 0 | 1 |
| [fengdu78/Coursera-ML-AndrewNg-Notes](https://github.com/fengdu78/Coursera-ML-AndrewNg-Notes) | 37,825 | 8 | 0 | 0 | 0 | 1 |
| [fengdu78/deeplearning_ai_books](https://github.com/fengdu78/deeplearning_ai_books) | 21,098 | 8 | 0 | 0 | 0 | 1 |
| [kailashahirwar/cheatsheets-ai](https://github.com/kailashahirwar/cheatsheets-ai) | 15,432 | 36 | 0 | 0 | 0 | 1 |
| [lencx/ChatGPT](https://github.com/lencx/ChatGPT) | 54,552 | 9 | 0 | 0 | 0 | 1 |
| [linexjlin/GPTs](https://github.com/linexjlin/GPTs) | 32,046 | 5 | 0 | 0 | 0 | 2 |
| [lucidrains/DALLE2-pytorch](https://github.com/lucidrains/DALLE2-pytorch) | 11,303 | 51 | 0 | 0 | 0 | 4 |
| [mhadidg/software-architecture-books](https://github.com/mhadidg/software-architecture-books) | 11,351 | 109 | 0 | 0 | 0 | 1 |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) | 21,795 | 20 | 0 | 0 | 0 | 4 |
| [wdndev/llm_interview_note](https://github.com/wdndev/llm_interview_note) | 15,145 | 8 | 0 | 0 | 0 | 3 |
| [ymcui/Chinese-LLaMA-Alpaca](https://github.com/ymcui/Chinese-LLaMA-Alpaca) | 18,941 | 113 | 0 | 0 | 0 | 6 |
| [yunjey/pytorch-tutorial](https://github.com/yunjey/pytorch-tutorial) | 32,497 | 19 | 0 | 0 | 0 | 1 |

## Reports

Detailed per-repository reports, each listing the specific URLs, are in
this directory. Reports were filed as issues on the repositories they
concern where the list was still accepting them.

---

Produced with [link-rot-scanner](https://github.com/Protocol-zero-0/link-rot-scanner).
