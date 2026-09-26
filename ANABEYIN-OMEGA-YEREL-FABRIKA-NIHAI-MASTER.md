# ANABEYİN OMEGA — D'DEN DÜNYAYA NİHAİ YEREL FABRİKA MASTER PLANI

**Durum:** SON NİHAİ ANA KURULUM / GELİŞTİRME KAYNAĞI  
**Tarih:** 26.09.2026  
**Ana çalışma yeri:** Kullanıcının Windows 11 bilgisayarındaki D: diski + D: üzerinde barındırılan WSL2/Ubuntu  
**Ana alan adı:** anabeyin.com  
**Eski temel:** `ANABEYIN_ANA_KURULUM_ENVANTERI_521.md` içindeki 521 kalem KORUNUR; bu belge 521'i iptal etmez, genişletir ve uygulama/araç adlarını somutlaştırır.  
**GitHub'ın rolü:** Arşiv / referans / acil geri dönüş kopyası. Günlük geliştirme GitHub üzerinde yapılmayacak. Kurulumdan sonra asıl kaynak D: üzerindeki yerel Git/Forgejo ve `/srv/anabeyin` olacaktır.

---

# 0. DEĞİŞMEZ KURAL

AnaBeyin önce tamamen yerelde kurulacak ve geliştirilecektir.

- Site kodu, veritabanı, test medyası, loglar, tasarım sistemi, ajan kayıtları, dokümantasyon ve test ortamları D: üzerinde tutulur.
- Büyük yapay zekâ modellerinin yüzlerce GB/TB ağırlıkları D:'ye indirilmez; bunlar Kimi / NVIDIA Build-NIM / OpenRouter gibi uzak sağlayıcılardan kullanılır.
- Küçük ve faydalı yerel modeller D:'de tutulabilir.
- `anabeyin.com` geliştirme aşamasında yalnız test amacıyla Cloudflare Tunnel üzerinden D:'deki sisteme yönlendirilir.
- İlk aşamada 5–10 dış test kullanıcısı varsayılır. Cloudflare R2/Stream/CDN gibi ücretli medya altyapıları zorunlu değildir.
- Bilgisayar kapanırsa test sitesi kapanabilir. Bu aşama production değildir.
- Site tamamlandıktan sonra aynı sistem Docker/Compose + konfigürasyon profilleriyle seçilecek VPS'e taşınabilecek şekilde kurulacaktır.
- “VPS'e geçince kurarız” denilerek temel bir bileşen unutulmaz. Gerekli araçlar şimdi kurulur; RAM/CPU tüketen servisler gerekmedikçe PASİF tutulur.
- D: ASLA otomatik biçimlendirilmez/silinmez.
- `D:\KVM1_KOPYA` ve eski referans/yedekler ASLA otomatik silinmez.
- Gizli anahtarlar GitHub'a, kaynak koda, loglara veya ajan çıktılarına yazılmaz.
- Mevcut tasarım final tasarım değildir. Kullanıcı tarafı tasarım SIFIRDAN yapılacaktır.
- AnaBeyin ana marka rengi `#E30A17` korunur; bütün palet, tipografi, grid, komponent, motion ve cihaz deneyimi yeniden tasarlanır.

---

# 1. DURUM SINIFLARI

Kurulum manifestinde her kalem bu statülerden biriyle işaretlenecek:

- **NOW-ACTIVE** — şimdi kur, doğrula, gerekliyse servis olarak çalıştır.
- **NOW-PASSIVE** — şimdi kur / image / binary / paket hazır olsun; boşuna RAM yemesin, servis kapalı dursun.
- **REMOTE-AI** — istemci/router/profil şimdi hazırla, model ağırlığını yerelde indirme.
- **EXTERNAL-LATER** — entegrasyon kodu/adapter/mock şimdi hazır; gerçek hesap/API anahtarı üretime yakın girilecek.
- **PLATFORM-SOURCE** — kaynak/proje yapısı şimdi hazır; derleyici yalnız ilgili işletim sistemi gerektiriyorsa daha sonra başka makinede build edilir (ör. iOS/tvOS için macOS).
- **REFERENCE-ONLY** — alternatif/karşılaştırma için kayıtlı; ana sistemde varsayılan olarak kullanılmaz.

Her kurulum sonunda durum raporu:
`VAR / EKSİK / PASİF / UZAK / DIŞ-HESAP / PLATFORM`
olarak üretilecektir.

---

# 2. YEREL DOSYA VE REPO MİMARİSİ

## Windows tarafı

```text
D:\
├─ ANABEYIN\
│  ├─ installers\
│  ├─ logs\
│  ├─ exports\
│  ├─ backups\
│  ├─ archives\
│  ├─ models\
│  ├─ generated\
│  ├─ migration\
│  └─ reports\
├─ KVM1_KOPYA\
└─ WSL\
```

## WSL/Linux tarafı — asıl proje

```text
/srv/anabeyin/
├─ apps/
│  ├─ web/
│  ├─ admin/
│  ├─ api/
│  ├─ agent-center/
│  ├─ workers/
│  ├─ mobile/
│  ├─ tv/
│  └─ desktop/
├─ packages/
│  ├─ ui/
│  ├─ design-system/
│  ├─ auth/
│  ├─ database/
│  ├─ search/
│  ├─ media/
│  ├─ ads/
│  ├─ analytics/
│  ├─ ai/
│  ├─ shared/
│  └─ config/
├─ services/
├─ infra/
├─ database/
├─ tests/
├─ docs/
├─ scripts/
├─ local-forge/
└─ tools/
```

**Kural:** Linux araçlarıyla geliştirilen repo mümkün olduğunca WSL Linux filesystem içinde tutulur; `/mnt/d` daha çok arşiv, export, model, backup ve Windows ile ortak dosyalar için kullanılır. WSL sanal diski fiziksel olarak D: üzerinde tutulur.

---

# 3. KURULUM ETAPLARI — SONRAKİ TOPLU KURUCUNUN SIRASI

1. **00-PREFLIGHT** — disk/RAM/WSL/GPU/ağ/yedek/çakışma kontrolü.
2. **01-BASE** — Linux, derleyiciler, diller, shell ve temel CLI.
3. **02-LOCAL-FORGE** — yerel Git/Forgejo, runner, dokümantasyon, kod arama.
4. **03-AI-FACTORY** — Kimi/Cline/OpenCode/Aider/LiteLLM/Ollama/MCP/eval/observability.
5. **04-DESIGN-FACTORY** — Penpot, Storybook, UI kütüphaneleri, token sistemi, motion/3D.
6. **05-WEB-PWA-DESKTOP-TV-MOBILE** — web/PWA, Tauri, React Native/Expo, TV kaynakları.
7. **06-BACKEND-DATA** — API, PostgreSQL, PostGIS, pgvector, Redis/Valkey, queue, search, analytics DB.
8. **07-MEDIA-REALTIME** — upload, image/video/audio, WebRTC, live stream, OCR/STT.
9. **08-SECURITY-PRIVACY** — SAST/DAST/WAF/secrets/SBOM/auth/privacy/moderation.
10. **09-TEST-QUALITY** — unit/integration/E2E/visual/load/contract/chaos/accessibility.
11. **10-SEO-ADS-ANALYTICS-MAPS** — SEO, reklam, consent, analytics, maps/geospatial.
12. **11-OBSERVABILITY-BACKUP** — metrics/logs/traces/backup/restore.
13. **12-PRODUCT-SKELETONS** — bütün AnaBeyin ürünlerinin modül/route/schema/admin giriş noktaları.
14. **13-TEST-PUBLISH** — Nginx + Cloudflare Tunnel ile test yayını.
15. **14-FINAL-AUDIT** — bütün manifesti tek tek doğrula, gerçek eksikleri raporla.

Kurucu tekrar çalıştırıldığında kurulu olanı atlamalı, yarım kalmış işi devam ettirmeli ve D:'yi asla silmemelidir.

---

# 4. TEMEL GELİŞTİRME ARAÇLARI

## NOW-ACTIVE

### İşletim sistemi / shell / paket
- **WSL2**
- **Ubuntu 24.04 LTS** mevcut çalışma tabanı
- **systemd**
- **PowerShell 7** — Windows tarafı otomasyon
- **Windows Terminal**
- **winget** — Windows resmi paket yönetimi
- **Git**
- **Git LFS**
- **git-filter-repo**
- **pre-commit**
- **OpenSSH**
- **rsync**
- **rclone**
- **curl**
- **wget**
- **aria2**
- **jq**
- **yq**
- **ripgrep (rg)**
- **fd**
- **fzf**
- **tree**
- **tmux**
- **htop**
- **btop**
- **glances**
- **ncdu**
- **lsof**
- **strace**
- **hyperfine**
- **entr**
- **watch**
- **shellcheck**
- **shfmt**
- **direnv**
- **dotenvx** veya proje içi env doğrulayıcı

### Derleme / diller
- **Node.js 22** — mevcut uyumluluk
- **Node.js 24 LTS** — yeni uygulamalar için yan yana test profili
- **fnm** veya **nvm** — Node sürüm yönetimi
- **npm**
- **Corepack**
- **pnpm**
- **Python 3**
- **pip**
- **pipx**
- **uv**
- **venv**
- **Rust / rustup / cargo**
- **Go**
- **OpenJDK**
- **Gradle**
- **gcc / g++ / make / build-essential**
- **cmake**
- **ninja-build**
- **pkg-config**
- **clang / clangd**
- **LLVM**
- **universal-ctags**
- **tree-sitter CLI**
- **ast-grep**
- **jscodeshift**
- **Graphviz**
- **Mermaid CLI**

### Proje / monorepo
- **pnpm workspaces**
- **Turborepo**
- **Changesets**
- **Taskfile (go-task)** + Makefile
- **EditorConfig**
- **Biome**
- **ESLint**
- **Prettier**
- **oxlint**
- **Stylelint**
- **commitlint**
- **Husky**
- **lint-staged**
- **Knip**
- **depcheck**
- **Madge**
- **cspell**
- **publint**
- **arethetypeswrong**
- **size-limit**
- **rollup-plugin-visualizer**
- **source-map-explorer**

---

# 5. YEREL GIT / CI / DOKÜMANTASYON — GITHUB'SIZ ANA ÇALIŞMA

## NOW-ACTIVE
- **Forgejo** — D: üzerinde yerel Git forge / web arayüz / repo / issue / PR benzeri çalışma.
- **Forgejo Runner** — yerel otomatik test/CI.
- **Gitea** — yalnız Forgejo sorununda alternatif; aynı anda çalıştırma.
- **MkDocs**
- **Material for MkDocs (community)**
- **Mermaid**
- **Graphviz**
- **PlantUML**
- **markdownlint-cli2**
- **Vale** — teknik dokümantasyon yazım kalite kontrolü.
- **lychee** — kırık link kontrolü.

## NOW-PASSIVE
- **Zot** — yerel OCI/Docker image registry.
- **Verdaccio** — yerel npm proxy/cache registry.
- **apt-cacher-ng** — tekrar kurulum indirmelerini azaltmak için paket cache.

## Kural
GitHub'daki mevcut dokümanlar ve bu dosya arşiv/referans kalır. Kurulumdan sonra “source of truth”:
`/srv/anabeyin/docs` + yerel Forgejo reposudur.

---

# 6. AI FABRİKASI — KOD, AJAN, RAG, EVAL, ROUTING

## NOW-ACTIVE
- **Kimi Code**
- **Cline** — ana kod ajanlarından biri.
- **OpenCode / opencode-ai**
- **Aider / aider-chat**
- **LiteLLM Proxy/Router**
- **Ollama**
- **llama.cpp**
- **Open WebUI** — yerel/uzak AI modellerini test ve karşılaştırma arayüzü.
- **Model Context Protocol (MCP) SDK — TypeScript**
- **Model Context Protocol (MCP) SDK — Python**
- **MCP Inspector**
- **LangGraph**
- **LlamaIndex**
- **LangChain Core** — yalnız gerekli adapter/graph işleri; gereksiz zincir katmanı oluşturma.
- **Pydantic / PydanticAI**
- **Instructor**
- **NeMo Guardrails**
- **Promptfoo** — model/prompt eval ve güvenlik testleri.
- **Ragas** — RAG kalite değerlendirmesi.
- **Langfuse self-hosted** — prompt, trace, agent, model kullanım ve eval izleme; RAM tüketiyorsa PASİF.
- **Docling** — belge/PDF/tabloları AI/RAG için ayrıştırma.
- **Hugging Face Hub CLI**
- **transformers**
- **sentence-transformers**
- **safetensors**
- **accelerate**
- **tokenizers**
- **onnxruntime**
- **onnxruntime-gpu** — NVIDIA sürücüsü/VRAM uyuyorsa ayrı venv.
- **PyTorch CPU** ana uyumluluk
- **PyTorch CUDA** ayrı venv, GPU doğrulanırsa.

## NVIDIA YEREL ARAÇLARI

### NOW-ACTIVE
- **NVIDIA Windows/WSL GPU sürücü doğrulama — nvidia-smi**
- **NVIDIA NGC CLI**
- **NVIDIA Build / NIM API adapter**
- **NVIDIA API health checker**
- **NVIDIA model catalog cache**
- **NVIDIA provider quota/rate-limit monitor**

### NOW-PASSIVE / GPU UYGUNSA
- **NVIDIA CUDA Toolkit — WSL uyumlu güncel sürüm**
- **NVIDIA Container Toolkit**
- **TensorRT**
- **NVIDIA Triton Inference Server** Docker image — yalnız küçük/uygun yerel model servisinde aktive et.
- **Nsight Systems** — GPU/CPU profiling gerektiğinde.

### KURAL
Linux içine ayrı NVIDIA ekran sürücüsü kurma; WSL GPU erişimi Windows sürücüsü üzerinden doğrulanmalıdır.

---

# 7. UZAK AI MODEL HAVUZU — AĞIRLIKLAR D:'YE İNMEYECEK

## REMOTE-AI — PATRON / KOD / REASONING
- **Kimi K3** — Patron AI; büyük mimari, repo, kritik karar, çok uzun context.
- **Kimi K3 256K** — günlük ciddi kod ve ajan işleri.
- **Kimi Coding varsayılan modeli** — resmi Kimi Coding havuzundaki güncel varsayılan.
- **Kimi Coding HighSpeed** — hızlı küçük/orta görev.
- **GLM 5.x / güncel GLM Coding modeli** — ikinci güçlü coding/reasoning havuzu.
- **DeepSeek güncel coding/reasoning modeli** — zor kod ve alternatif reasoning.
- **MiniMax güncel agent/coding modeli** — fallback.
- **NVIDIA Nemotron Ultra** — reasoning/agent fallback.
- **NVIDIA Nemotron Lightning** — hızlı uzun context/agent işleri.
- **Mistral güncel açık model endpointleri**
- **Qwen Coder güncel endpointleri**
- **OpenRouter Free havuzu** — düşük önem ve fallback.
- **NVIDIA Build Free Endpoint havuzu** — katalog dinamik keşfedilecek.

## REMOTE-AI — MULTIMODAL / MODERASYON / OCR
- **NVIDIA multimodal Nemotron modelleri**
- **NVIDIA Content Safety modelleri**
- **NVIDIA OCR / document parsing endpointleri**
- **NVIDIA embedding/rerank endpointleri**
- **uygun güncel vision-language modelleri**
- **uygun güncel speech/translation endpointleri**

## MODEL ROUTING KURALI
Model adı sabit kodlanmaz. `model-registry.yaml` içinde:
- provider
- model id
- context
- input türü
- tool-use
- vision/audio desteği
- ücretsiz/ücretli
- kota
- hız
- son health check
- fallback sırası
tutulur.

## D:'YE İNDİRİLMEYECEK AĞIR SINIF
Aşağıdaki sınıflar yerelde saklanmaz:
- trilyon parametreli Kimi sınıfı
- 300B+ GLM/DeepSeek/MiniMax/Nemotron sınıfı
- 70B/100B+ tam ağırlıklı modeller
- büyük diffusion/video checkpoint koleksiyonları
- NVIDIA NIM GPU container/model ağırlıkları (GTX 1650 4 GB için uygun değil)

Bunlar yüzlerce GB'den TB ölçeğine çıkabilir ve 16 GB RAM / 4 GB VRAM bilgisayarda çalışmaz.

## LOKAL KÜÇÜK MODEL HAVUZU — NOW-PASSIVE
- **Qwen 3 4B sınıfı** küçük coding/general model
- **küçük embedding modeli**
- **küçük reranker**
- **Whisper base/small**
- **yerel OCR modelleri**
- **gerekirse küçük moderation modeli**

Ollama model pull işlemi kurulumda ayrı disk/RAM eşiğiyle yapılır; kullanıcı onayı olmadan ağır model çekilmez.

---

# 8. AI AJAN ORKESTRASYONU — ANA BEYİN

## NOW-ACTIVE — KOD / GELİŞTİRME AJANLARI
- Patron AI
- Task planner
- Context pack builder
- Agent registry
- Skill registry
- MCP registry
- Prompt registry
- Agent Git worktree manager
- File lock / collision guard
- Permission sandbox
- Tool allowlist
- Secret redaction
- Token/context budget controller
- Provider health monitor
- Quota/rate-limit monitor
- Task→model router
- retry/fallback router
- timeout recovery
- output verifier
- independent reviewer
- test gate
- human approval gate
- agent event ledger
- agent artifact registry
- failed-task queue
- benchmark/eval harness

## AYRI KAVRAM — CANLI ANA BEYİN OPERASYON AJANLARI
Geliştirme ajanlarıyla karıştırılmaz. Canlı sistem için ayrıca:
- müşteri hizmetleri ajanları
- içerik operasyon ajanları
- moderasyon ajanları
- güvenlik olay ajanları
- analitik ajanları
- mağaza/satıcı destek ajanları
- reklam inceleme ajanları
- ödeme vaka ajanları
- site sağlık/incident ajanları
- insan müdahale kuyruğu
- agent DB / görev motoru / yetki sistemi / olay sistemi / çalışma kuyruğu

---

# 9. TASARIM FABRİKASI — SIFIRDAN PREMIUM ANA BEYİN

## ANA KARAR
Eski tasarım final olarak KULLANILMAYACAK. Eski site yalnız:
- çalışan fonksiyon,
- eski içerik kapsamı,
- sayfa yapısı,
- beğenilen detay,
- geçmiş UX fikri
için referanstır.

Yeni AnaBeyin Design System sıfırdan oluşturulur.

## NOW-ACTIVE — TASARIM / PROTOTİP
- **Penpot self-hosted** — yerel Figma sınıfı tasarım/prototip/design token merkezi.
- **Storybook**
- **@storybook/addon-a11y**
- **@storybook/test**
- **@storybook/addon-interactions**
- **shadcn/ui**
- **Radix UI**
- **React Aria Components**
- **Tailwind CSS**
- **PostCSS**
- **Autoprefixer**
- **Lightning CSS**
- **CSS Custom Properties / Design Tokens**
- **Style Dictionary** — token export/generation.
- **class-variance-authority**
- **tailwind-merge**
- **clsx**
- **Lucide**
- **Iconify**
- **Motion**
- **anime.js**
- **GSAP** — ücretsiz kullanım şartları uygun olduğu sürece yardımcı motion katmanı; kritik bağımlılık yapma.
- **Three.js**
- **React Three Fiber**
- **Drei**
- **PixiJS**
- **Lottie-web**
- **Swiper**
- **Embla Carousel**
- **Floating UI**
- **dnd-kit**
- **PhotoSwipe**
- **Cropper.js**
- **Lexical**
- **TanStack Table**
- **TanStack Virtual**
- **AG Grid Community**
- **Apache ECharts**
- **Recharts**
- **D3**
- **Visx**

## TASARIM ÇIKTILARI
- `packages/design-system`
- `packages/ui`
- renk tokenları
- tipografi
- spacing
- radius
- shadow
- layer/z-index
- motion süre/easing
- grid
- breakpoint
- light
- dark
- high-contrast
- status colors
- focus states
- hover/pressed/disabled/loading
- skeletons
- empty states
- errors
- toasts
- modal/drawer/bottom sheet
- command palette
- tables
- forms
- cards
- feed cards
- product cards
- listing cards
- ad cards
- video cards
- TV focus states

## ZORUNLU CİHAZ TASARIMLARI
- küçük telefon
- standart telefon
- büyük telefon
- tablet portrait
- tablet landscape
- laptop
- desktop
- ultrawide
- 1080p TV
- 4K TV
- touch
- mouse
- keyboard
- D-pad / TV remote
- reduced-motion
- high contrast

Ana marka: **#E30A17**. Bütün ekranı kırmızıya boyamak yasaktır.

---

# 10. WEB / PWA

## NOW-ACTIVE
- **React**
- **React DOM**
- **Vite**
- **TypeScript strict**
- **React Router**
- **TanStack Query**
- **Zustand**
- **Zod**
- **React Hook Form**
- **i18next**
- **FormatJS/Intl yardımcıları**
- **date-fns**
- **DOMPurify**
- **Workbox**
- **vite-plugin-pwa**
- **web-push**
- **web-vitals**
- **Partytown**
- **sitemap (npm)**
- **schema-dts**
- **react-helmet-async**
- **Vike** — SSR/prerender/SEO gereken public sayfalar için aday.
- **Satori + resvg-js** — dinamik OpenGraph/sosyal paylaşım kartları.

## HEDEFLER
- installable PWA
- offline shell
- cache versioning
- background sync
- Web Push
- share target
- deep links
- responsive images
- AVIF/WebP
- lazy loading
- code splitting
- virtualized lists
- accessibility
- SSR/prerender gereken ürün/profil/ilan/video sayfaları

---

# 11. MOBİL UYGULAMA

## NOW-PASSIVE — PROJE/SDK HAZIR
- **React Native**
- **Expo**
- **Expo Router**
- **React Navigation**
- **Expo Notifications**
- **SecureStore**
- **camera/image picker/audio**
- **react-native-mmkv**
- **NetInfo**
- **deep linking**
- **universal links**
- **background tasks**
- **Android Gradle toolchain**
- **Android command-line SDK**
- **adb**
- **scrcpy**
- **Maestro**
- **Appium**
- **Detox**

## PLATFORM-SOURCE
iOS proje/kod yapısı şimdi hazırlanır; iOS/tvOS final binary üretimi Apple gereği macOS/Xcode üzerinde yapılır.

---

# 12. TV / 10-FOOT UI

## NOW-PASSIVE
- **react-native-tvos** — Android TV + Apple TV.
- **LightningJS** — web tabanlı Smart TV uygulaması.
- **Android TV / Compose for TV bağımlılık ve örnekleri**
- **Samsung Tizen web app paketleme toolchain** — resmi SDK/CLI uygun olduğunda.
- **LG webOS CLI / web app paketleme** — resmi SDK/CLI uygun olduğunda.

## TV ZORUNLULUKLARI
- D-pad navigation
- visible focus ring
- remote back/home davranışı
- 10-foot typography
- 1080p/4K
- TV video player
- QR-code login
- safe-area
- no-hover-only UI
- focus trap testleri

---

# 13. MASAÜSTÜ

## NOW-PASSIVE
- **Tauri**
- **Rust**
- **Tauri CLI**
- Windows/macOS/Linux wrapper kaynakları
- native notifications
- deep links
- tray
- secure storage
- auto-update taslağı

## REFERENCE-ONLY
- **Electron** — yalnız Tauri ile çözülemeyen bir ihtiyaç çıkarsa.

---

# 14. BACKEND ANA MİMARİ

## HEDEF
İlk sürüm: **modüler monolith + ayrı worker servisleri**. Gereksiz microservice yok; modüller ayrılabilir sınırlarla yazılır.

## NOW-ACTIVE
- **Node.js**
- **TypeScript**
- **NestJS**
- **Fastify**
- **@nestjs/platform-fastify**
- **OpenAPI / Swagger**
- **Scalar veya Swagger UI** API referansı
- **AJV**
- **Zod**
- **Pino**
- **jose**
- **argon2**
- **@simplewebauthn/server**
- **@simplewebauthn/browser**
- **otplib**
- **qrcode**
- **libphonenumber-js**
- **zxcvbn**
- **decimal.js**
- **Dinero.js**
- **nanoid / UUID**
- **Socket.IO**
- **ws**
- **Redis adapter**
- **cron/scheduler**
- **BullMQ**
- **OpenTelemetry SDK**

## API KURALLARI
- REST/OpenAPI ana sözleşme
- cursor pagination
- idempotency
- request/correlation ID
- schema validation
- structured errors
- transactions
- outbox
- domain events
- retry
- dead-letter
- rate limiting
- webhook signing
- webhook retry
- feature flags
- audit
- API versioning
- cache policy

---

# 15. VERİ TABANI / CACHE / EVENT / ANALYTICS

## NOW-ACTIVE
- **PostgreSQL**
- **pgvector**
- **PostGIS**
- **pg_trgm**
- **pg_stat_statements**
- **pgTAP**
- **PgBouncer**
- **Redis** — mevcut uyumluluk için.
- **BullMQ**
- **Drizzle ORM**
- **drizzle-kit**
- **node-postgres (pg)**
- **DuckDB**
- **Polars**
- **PyArrow**

## NOW-PASSIVE
- **Valkey** — açık kaynak Redis-protokol alternatifi; BullMQ uyumluluk testinden sonra seçilebilir.
- **NATS + JetStream** — gerçek event bus gerektiğinde.
- **ClickHouse** — reklam/analytics/event hacmi büyüdüğünde ana olay ambarı; şimdi image/binary hazır, servis kapalı.
- **Meilisearch** — ana hızlı arama motoru; test verisi oluştuğunda aktive.
- **Qdrant** — pgvector sınırı görülürse vektör servisi alternatifi; pasif.

## DB KURALLARI
- migration
- rollback planı
- seed
- fixture
- index audit
- slow query
- integrity checks
- soft delete
- audit history
- retention
- anonymization
- backup
- restore tests

---

# 16. HARİTA / KONUM / EMLAK / ARAÇ / ULAŞIM ALTYAPISI

## NOW-ACTIVE
- **MapLibre GL JS**
- **Leaflet**
- **Turf.js**
- **Uber H3**
- **PostGIS**
- **PMTiles / Protomaps**
- **Martin** — PostGIS vector tile server.

## NOW-PASSIVE
- **Nominatim** — self-host geocoding; uygulama/data import edilmeden pasif.
- **Photon** — alternatif geocoder.
- **OSRM** veya **Valhalla** — rota/ulaşım motoru; bölgesel harita verisi yüklenene kadar pasif.

Kamu OSM servislerine yüksek trafikte yük bindirmek yasaktır; production öncesi self-host veya ticari provider seçilir.

---

# 17. ARAMA / KEŞFET / ÖNERİ

## NOW-ACTIVE / TOOLING
- PostgreSQL full-text
- pg_trgm
- pgvector
- Meilisearch client
- sentence-transformers
- FAISS CPU — offline deney
- Python **implicit** — collaborative filtering deney
- scikit-learn
- LightGBM
- XGBoost
- SHAP
- Polars
- DuckDB

## SİSTEM
- autocomplete
- typo tolerance
- Turkish normalization
- synonym
- facet
- geo search
- hybrid search
- semantic search
- people/post/product/listing/video search
- candidate generation
- ranking
- freshness
- diversity
- personalization
- cold start
- popularity
- abuse resistance
- recommendation debug
- A/B ranking tests

---

# 18. DOSYA / FOTOĞRAF / GÖRSEL FABRİKASI

## NOW-ACTIVE
- **libmagic**
- **file**
- **ClamAV**
- **YARA**
- **Sharp**
- **libvips**
- **ImageMagick**
- **ExifTool**
- **mat2**
- **OpenCV**
- **Pillow**
- **ImageHash / pHash**
- **imgproxy** — güvenli resize/transform servisi, pasif servis olarak hazır.
- **BlurHash**
- **Uppy**
- **tusd** — resumable TUS upload server.
- **react-dropzone**
- **Cropper.js**

## PIPELINE
upload → quarantine → magic-byte/MIME → antivirus/YARA → metadata temizleme → decode → moderation → re-encode → AVIF/WebP → responsive sizes → thumbnail → pHash/duplicate → approved storage.

---

# 19. VIDEO / REELS / SES / CANLI YAYIN

## NOW-ACTIVE
- **FFmpeg**
- **ffprobe**
- **PySceneDetect**
- **faster-whisper**
- **Whisper**
- **Silero VAD**
- **WebRTC VAD**
- **librosa**
- **soundfile**
- **pydub**
- **hls.js**
- **dash.js**
- **Shaka Player**
- **Shaka Packager**
- **Video.js**
- **Plyr**
- **GPAC / MP4Box**
- **waveform-data**

## NOW-PASSIVE — REALTIME/LIVE
- **LiveKit Server** — WebRTC odaları, ses/video çağrı, canlı etkileşim.
- **LiveKit JS/React Native SDK'ları**
- **coturn** — TURN/STUN.
- **MediaMTX** — RTSP/RTMP/SRT/WebRTC/HLS ingest/relay.
- **SRS (Simple Realtime Server)** — alternatif canlı yayın stack'i; aynı anda aktif olmak zorunda değil.
- **OvenMediaEngine** — ultra-low-latency araştırma/alternatif; pasif.
- **OBS uyumluluk test profili**

## VOD/REELS PIPELINE
- upload progress
- resumable upload
- probe
- codec validation
- transcode workers
- 360p/480p/720p/1080p/4K profil tanımları
- dikey Reels profili
- HLS/DASH
- thumbnail/poster
- captions/subtitles
- speech-to-text
- content moderation
- playback resume
- adaptive bitrate
- picture-in-picture
- cast entegrasyon noktası

---

# 20. BELGE / OCR / DOSYA GÜVENLİĞİ

## NOW-ACTIVE
- **Tesseract OCR**
- **PaddleOCR**
- **EasyOCR**
- **OCRmyPDF**
- **Docling**
- **PyMuPDF**
- **pypdf**
- **pdfplumber**
- **Apache Tika**
- **qpdf**
- **Ghostscript**
- **Poppler**
- **LibreOffice headless**
- **Pandoc**
- **oletools / olevba**
- **PDFiD**
- **pdf-parser**
- **Presidio Analyzer**
- **Presidio Anonymizer**
- **spaCy**
- **RE2 bindings**
- **RapidFuzz**
- **langdetect**
- **fastText**

---

# 21. MODERASYON / TRUST & SAFETY

## NOW-ACTIVE / REMOTE-AI KARIŞIK
- ClamAV
- YARA
- NudeNet
- OpenNSFW2
- OpenCLIP
- OCR
- Whisper transcription
- Presidio PII
- rules/regex engine
- semantic similarity
- duplicate detection
- malicious URL adapter
- spam classifier
- scam classifier
- profanity/harassment policy
- prohibited product rules
- phone/e-mail/PII detection
- image moderation
- video frame moderation
- audio transcript moderation
- risk score 0–100
- human review queue
- report/appeal
- warning/suspend/ban policy engine
- advertiser/creative moderation
- seller/listing moderation

## REMOTE-AI
NVIDIA Content Safety / güncel safety modelleri router üzerinden kullanılabilir; model ağırlıkları yerelde tutulmaz.

---

# 22. AUTH / ACCOUNT / PRIVACY

## NOW-ACTIVE
- argon2
- jose
- secure HttpOnly/SameSite cookies
- CSRF
- session store
- refresh-token rotation
- TOTP 2FA
- recovery codes
- WebAuthn / passkeys
- device/session list
- revoke sessions
- login risk signals
- brute-force protection
- credential stuffing protection
- RBAC
- ABAC
- permission scopes
- audit
- privacy preferences
- consent ledger
- data export
- account deletion
- anonymization
- retention jobs

## NOW-PASSIVE
- **Keycloak** — personel/internal SSO/OIDC laboratuvarı.
- **OpenBao** — merkezi secret manager; SOPS+age ana çözümden sonra üretim için değerlendir.
- **Klaro!** veya **vanilla-cookieconsent** — yerel consent UI denemesi.

## EXTERNAL-LATER
- Google OAuth
- Apple Sign in
- Microsoft OAuth
- Meta login gerekiyorsa
- Cloudflare Turnstile
Gerçek client secret'lar daha sonra girilir.

---

# 23. SECRET / KONFİG YÖNETİMİ

## NOW-ACTIVE
- **SOPS**
- **age**
- `.env.example`
- env schema validation
- secret redaction
- no-secrets-in-git hook
- backup secret encryption
- separate dev/test/staging/prod config
- provider key health check

## KURAL
Gerçek secret:
- GitHub'a yok
- MD dosyasına yok
- ekran görüntüsüne yok
- ajan prompt loguna yok
- hata dump'ına yok

---

# 24. GÜVENLİK ARAÇLARI

## NOW-ACTIVE
- **Semgrep**
- **Gitleaks**
- **Trivy**
- **Syft**
- **Grype**
- **OSV-Scanner**
- **OWASP ZAP**
- **Checkov**
- **Hadolint**
- **Bandit**
- **pip-audit**
- **npm audit**
- **detect-secrets**
- **Nuclei**
- **httpx (ProjectDiscovery)**
- **Katana (ProjectDiscovery)**
- **testssl.sh**
- **sslyze**
- **mitmproxy** — yalnız sahip olunan/test ortamında.
- **Lynis**
- **AIDE**
- **auditd**
- **AppArmor**
- **UFW**
- **nftables**
- **CrowdSec**
- **fail2ban** — yedek.
- **ModSecurity**
- **OWASP Core Rule Set**
- **Certbot**
- **Cosign**
- **REUSE / SPDX tooling**
- **ScanCode Toolkit**
- **CycloneDX tooling**

## GÜVENLİK STANDARDI
- OWASP ASVS kontrol matrisi
- OWASP Top 10
- API authorization/BOLA/IDOR testleri
- CSP
- HSTS
- secure headers
- CORS
- SSRF
- XSS
- SQLi
- CSRF
- path traversal
- zip/decompression bombs
- MIME confusion
- upload execution
- rate limits
- privilege escalation
- secret leaks
- dependency vulnerabilities
- container/SBOM audit

---

# 25. TEST / QA FABRİKASI

## NOW-ACTIVE
- **Vitest**
- **Jest**
- **Testing Library**
- **user-event**
- **MSW**
- **Playwright**
- **Playwright MCP**
- Chromium
- Firefox
- WebKit
- **pixelmatch**
- **BackstopJS**
- **reg-suit** veya eşdeğer yerel görsel regresyon
- **axe-core**
- **@axe-core/playwright**
- **Pa11y**
- **Lighthouse**
- **Lighthouse CI**
- **k6**
- **Autocannon**
- **Artillery**
- **Hurl**
- **Bruno CLI / Bruno API client**
- **Schemathesis**
- **Pact JS**
- **Testcontainers**
- **fast-check**
- **StrykerJS**
- **Toxiproxy**

## ZORUNLU TESTLER
- unit
- integration
- contract
- E2E
- API
- DB migration
- restore
- queue
- worker
- permission matrix
- auth attacks
- media upload
- malformed file
- transcode
- search
- recommendation
- ads
- SEO
- accessibility
- visual regression
- mobile/tablet/desktop/TV viewport
- keyboard
- touch
- D-pad
- slow network
- offline PWA
- service restart
- crash recovery
- payment idempotency
- webhook replay
- zero-console-error gate

---

# 26. LOCAL DEV / MOCK / GUI ARAÇLARI

## NOW-ACTIVE / PASSIVE
- **DBeaver Community**
- **pgAdmin 4**
- **Bull Board**
- **Portainer CE**
- **Dozzle**
- **Mailpit** — gerçek mail parası harcamadan e-mail test.
- **WireMock** — ödeme/SMS/mail/reklam/webhook sağlayıcılarını yerel taklit.
- **ntfy** — self-hosted notification/push test.
- **Bruno**
- **Hoppscotch self-hosted** — alternatif API çalışma alanı, pasif.
- **SonarQube Community Build** — ağır olduğu için PASİF; büyük refactor/quality audit sırasında aç.
- **SonarScanner CLI**

---

# 27. E-POSTA / SMS / PUSH

## NOW-ACTIVE
- **Nodemailer**
- **Mailpit**
- e-mail template engine
- mail queue
- retry/dead-letter
- dev mail sink
- OTP simulator
- SMS mock provider
- Web Push
- in-app notifications
- notification preferences

## EXTERNAL-LATER
Adapter hazır olacak:
- SMTP
- Amazon SES
- Resend
- SendGrid
- Mailgun
- Netgsm
- Twilio
- Infobip
- FCM
- APNs
- Expo Push

Gerçek hesap/anahtar seçimi üretime yakın yapılır. Testte Mailpit/mock kullanılır.

---

# 28. ÖDEME / CÜZDAN / PAZARYERİ

## NOW-ACTIVE
- payment provider interface
- payment mock provider
- WireMock scenarios
- idempotency keys
- signed webhooks
- replay protection
- payment event ledger
- refund
- partial refund
- cancellation
- transaction history
- settlement
- marketplace commission
- seller payout ledger
- wallet/balance ledger
- invoice abstraction
- decimal.js / Dinero.js
- test cards/mock responses

## EXTERNAL-LATER ADAPTER
- iyzico/iyzipay
- PayTR
- Stripe
- PayPal
- diğer seçilen sağlayıcılar

Gerçek ödeme hesabı olmadan bütün akış mock/test olarak çalışmalıdır.

---

# 29. REKLAM FABRİKASI — KENDİ REKLAM SİSTEMİ + DIŞ AĞLAR

## NOW-ACTIVE — ANA BEYİN ADS
- advertiser account
- campaign
- ad group
- creative
- image/video/native creative
- sponsored post
- sponsored product
- sponsored listing
- sponsored video
- placements
- web/mobile/TV slots
- country/city/language/category/context/device targeting
- budget
- daily/total budget
- CPM
- CPC
- CPA hazırlığı
- pacing
- bidding
- frequency cap
- impression
- click
- viewability
- conversion
- attribution
- fraud/invalid traffic heuristics
- campaign approval
- creative moderation
- advertiser moderation
- reports
- invoice/balance/commission hooks

## NOW-ACTIVE — AÇIK KAYNAK/İAB TOOLING
- **Prebid.js**
- **Prebid Server** image/source
- **Prebid Mobile** SDK kaynak/adapter yapısı
- **OpenRTB 2.x** şema/adapter
- **VAST**
- **VMAP**
- **IAB OMID / Open Measurement entegrasyon noktası**
- **ads.txt**
- **app-ads.txt**
- **sellers.json**
- **SupplyChain Object (schain)**
- **IAB TCF / GPP adapter**
- consent event ledger

## EXTERNAL-LATER
- Google AdSense
- Google Ad Manager
- Google Publisher Tag (GPT)
- Google AdMob
- Google Ads conversion/remarketing
- Meta Pixel
- Meta Conversions API
- TikTok Pixel
- TikTok Events API
- Microsoft Ads UET
- Pinterest Tag
- Snapchat Pixel/CAPI
- LinkedIn Insight Tag

Bu dış sistemlerin gerçek hesapları ve scriptleri testte varsayılan olarak KAPALI tutulur.

---

# 30. ANALYTICS / PRODUCT / EXPERIMENT

## NOW-ACTIVE / PASSIVE
- **Umami self-hosted**
- **GrowthBook** — feature flags + A/B experiment; kaynak/image pasif hazır.
- **OpenFeature SDK**
- **ClickHouse** — event warehouse, pasif.
- **DuckDB**
- **Polars**
- **Metabase Community** — iş analitiği için pasif image.
- server-side event collector
- client event SDK
- common event schema
- funnel
- cohort
- retention
- active users
- device/platform
- content analytics
- creator analytics
- seller analytics
- ad analytics
- experiment assignment
- privacy-aware identifiers

## EXTERNAL-LATER
- Google Analytics 4
- Google Tag Manager

Testte yerel analytics kullanılır.

---

# 31. SEO / DISCOVERY / SHARE

## NOW-ACTIVE
- sitemap generator
- sitemap index
- image sitemap
- video sitemap
- news sitemap hazırlığı
- robots.txt manager
- canonical
- hreflang
- OpenGraph
- X/Twitter cards
- Schema.org
- Person
- Organization
- Product
- Offer
- AggregateRating
- VideoObject
- Article
- Breadcrumb
- LocalBusiness
- dynamic meta
- SSR/prerender
- RSS/Atom
- broken link checker
- redirect manager
- SEO audit
- Core Web Vitals budget
- social preview image generator

## EXTERNAL-LATER
- Google Search Console
- Bing Webmaster Tools
- IndexNow

---

# 32. ÇOKLU DİL / ÜLKE / PARA BİRİMİ

## NOW-ACTIVE
- i18next
- FormatJS/Intl
- CLDR data
- locale negotiation
- RTL
- Turkish + English başlangıç
- translation key lint
- country/currency/timezone data
- locale formats
- translated SEO metadata
- moderation policy per language
- AI translation adapter
- translation memory
- glossary

## NOW-PASSIVE
- **Weblate self-hosted** — çeviri yönetimi.
- **Argos Translate / LibreTranslate** — hafif yerel çeviri deneyi; ana kalite uzak AI olabilir.

---

# 33. ANA BEYİN SOSYAL — ÜRÜN KAPSAMI

Kayıt/giriş ve profil çekirdeğinin üstüne:
- profiles
- cover/avatar
- posts
- photos
- videos
- reels
- stories
- live
- comments/replies
- reactions
- shares
- mentions
- hashtags
- saved
- bookmark collections
- friendship
- follow
- block
- mute
- restrict
- snooze
- close friends
- friend lists
- suggestions
- activity/presence
- groups
- pages
- communities
- polls
- events
- scheduled posts
- drafts
- albums
- collaborative albums
- professional profile
- creator tools
- badges
- report
- appeal
- moderation
- archive/memories
- account lifecycle
- profile privacy/audience
- social graph
- feed ranking
- explore

Her özellik:
frontend + backend + DB + policy + admin + moderation + test + audit
ile tamamlanmadıkça “bitti” sayılmaz.

---

# 34. MESAJLAŞMA — TELEGRAM SINIFI

- 1:1 chat
- group chat
- channel
- thread/reply
- forward
- reactions
- edit/delete
- pin
- search
- unread/seen
- typing
- presence
- photo/video/file
- voice message
- waveform
- link preview
- sticker/GIF altyapısı
- moderation/report
- bot accounts
- BotFather benzeri bot oluşturucu
- bot token/security
- bot webhook
- store support bot
- order bot
- listing bot
- notification bot
- AI assistant bot
- WebSocket realtime
- push
- attachment scanning

---

# 35. SHOP / MARKETPLACE

- categories/subcategories
- brands
- products
- SKU
- variants
- stock
- warehouse
- pricing
- campaign
- coupons
- sellers
- stores
- cart
- wishlist
- checkout
- orders
- shipment
- returns
- refunds
- ratings/reviews
- Q&A
- invoice
- commissions
- settlements
- seller moderation
- seller analytics
- product moderation
- fraud signals
- recommendation/search
- sponsored products

---

# 36. İLAN / EMLAK / ARAÇ / İKİNCİ EL

## İlan
kategori, attributes, dynamic filters, geo, map, favorites, compare, price history, seller, chat, reporting.

## Emlak
satılık/kiralık/arsa/işyeri/günlük, mahalle, m², oda, kat, bina yaşı, ısıtma, harita, emlakçı, saved search, alerts.

## Araç
otomobil/moto/ticari/parça, marka/model/yıl/km/yakıt/vites/hasar, fiyat geçmişi, compare, dealer profile.

## İkinci El
kategori, yakınındakiler, konum, hızlı mesaj, satıcı, favori, güvenli işlem hazırlığı.

---

# 37. VIDEO / REELS / CANLI

- YouTube sınıfı video ana sayfa
- video detail
- channel/profile
- subscriptions/follow
- trending
- recommendations
- playlist
- comments/reactions/share/save
- captions
- chapters
- watch history
- continue watching
- creator studio
- upload/transcode status
- copyright/report hooks
- Reels full-screen vertical
- feed Reels cards
- product/listing tagging
- live stream
- live chat
- moderation
- replay/VOD
- TV player

---

# 38. DİĞER ANA ÜRÜNLER — ŞİMDİ MODÜL İSKELETİ HAZIR

Aşağıdakilerin route, namespace, package boundary, admin entry, design compatibility ve future schema alanları şimdi ayrılır:

- Blog
- Forum
- Sözlük
- Hizmet
- Yemek
- Ulaşım
- Personel / İş
- Oyun
- AnaBeyin AI
- Mail
- Eşleşme
- Bakkal
- Toptan
- Müzik
- S-Aracım
- Üyeler
- Profesyonel hesaplar
- Creator platform
- Marketplace
- Canlı

Boş sahte sayfa üretmek yasaktır. Fonksiyon geliştirilmeyen modül yalnız manifest/route rezervasyonu olarak kalır.

---

# 39. YÖNETİM / KURUMSAL OPERASYON

Admin basit dashboard değildir.

## HİYERARŞİ
İnsan Patron/Sahipler → Patron AI → CEO → Genel Müdür → Üst Müdürlük → Müdürlük → Birim → Ekip → Kuyruk/Vaka → AI + İnsan personel.

## MERKEZLER
- Genel komuta
- üst yönetim
- personel/departman/yetki
- operasyon
- kullanıcı/hesap
- sosyal ilişkiler
- içerik
- medya/canlı
- gruplar/sayfalar/topluluk
- mesajlaşma
- akış/keşfet/arama/öneri
- bildirim
- moderasyon
- trust & safety
- çağrı merkezi
- CRM
- hukuk/KVKK/gizlilik
- reklam/pro hesap/creator
- analytics/reporting
- security
- infrastructure
- development/test/release
- logs/audit
- backup/DR/crisis
- AI/automation
- shop/seller/order/payment
- listing/real-estate/vehicle
- gerektiğinde yeni gerçek merkezler

## ADMIN UI TOOLING
- TanStack Table
- AG Grid Community
- ECharts
- Recharts
- D3
- large list virtualization
- RBAC/ABAC
- scoped dashboards
- audit trail
- real health status
- incident center
- feature flags
- job/queue views

---

# 40. OBSERVABILITY / LOG / TRACE

## NOW-ACTIVE / PASSIVE
- **OpenTelemetry SDK**
- **OpenTelemetry Collector**
- **Prometheus**
- **Grafana**
- **Loki**
- **Tempo**
- **Alertmanager**
- **Uptime Kuma**
- **Netdata**
- **Glances**
- **cAdvisor**
- **Node Exporter**
- **postgres_exporter**
- **redis_exporter / valkey metrics**
- structured JSON logs
- correlation IDs
- request traces
- worker traces
- agent traces
- DB metrics
- queue metrics
- Docker metrics
- disk/RAM/GPU/process alerts

Servislerin çoğu NOW-PASSIVE olabilir; ihtiyaçta compose profile ile açılır.

---

# 41. BACKUP / RESTORE / DISASTER RECOVERY

## NOW-ACTIVE
- **restic**
- **BorgBackup**
- **rsync**
- **rclone**
- **pgBackRest**
- PostgreSQL dump
- encrypted backup
- code backup
- config backup
- media backup
- MinIO/object backup
- incremental snapshot
- checksums
- backup catalog
- restore verification
- disaster recovery drill
- rollback checkpoint

D:'de yedek var diye aynı fiziksel diski tek yedek kabul etme. Harici/uzak hedef daha sonra eklenebilir; araçlar şimdi hazırdır.

---

# 42. LOCAL TEST YAYINI — ANABEYIN.COM

## NOW-PASSIVE
- **Nginx**
- **cloudflared / Cloudflare Tunnel**
- local origin
- tunnel health check
- auto reconnect
- test access policy
- maintenance mode
- /health /ready
- HTTPS
- rate limiting
- origin log

## TOPOLOJİ
```text
5–10 test kullanıcısı
        ↓
anabeyin.com
        ↓
Cloudflare Free / Tunnel
        ↓
Windows bilgisayar
        ↓
WSL Ubuntu
        ↓
Nginx
        ↓
AnaBeyin Web/API/Workers
        ↓
PostgreSQL + Redis/Valkey + yerel medya
```

PostgreSQL, Redis/Valkey, MinIO admin, Forgejo admin ve monitoring admin portları internete doğrudan açılmaz.

Bu aşamada:
- Cloudflare R2 zorunlu DEĞİL.
- Cloudflare Stream zorunlu DEĞİL.
- ücretli CDN zorunlu DEĞİL.
- video/fotoğraf D:'den test edilir.

---

# 43. VPS / GERÇEK YAYINA TAŞINABİLİRLİK — ARAÇLAR ŞİMDİ HAZIR

## NOW-PASSIVE
- **Docker Compose**
- **OpenTofu**
- **Ansible**
- **kubectl**
- **Helm**
- **Kustomize**
- **k3d/kind** — yalnız cluster testi gerekirse.
- environment profiles: dev/test/staging/prod
- migration scripts
- object/media migration
- secret migration
- DNS switch
- rollback
- health/readiness
- minimum-downtime plan

Kubernetes production zorunlu değildir. İlk VPS Docker Compose ile çalışabilir; araçlar şimdiden hazır bulunur.

---

# 44. MALİYET POLİTİKASI

## BAŞLANGIÇTA 0 EK ÜCRET HEDEFİ
Yerelde ücretsiz/açık kaynak:
- WSL/Ubuntu
- PostgreSQL/PostGIS/pgvector
- Redis/Valkey
- BullMQ
- Nginx
- Docker Engine
- Forgejo
- Penpot
- Storybook
- Playwright
- FFmpeg
- MinIO
- Meilisearch
- Prometheus/Grafana/Loki/Tempo
- restic/Borg/rclone
- Semgrep/Trivy/Gitleaks/ZAP vb.
- Cloudflare Tunnel Free test bağlantısı
- yerel media storage

## MEVCUT/ÜCRETSİZ KOTALI AI
- mevcut Kimi üyeliği/kotası
- NVIDIA Build/NIM uygun ücretsiz geliştirme endpointleri
- OpenRouter free havuzu
- küçük yerel Ollama modelleri

## EXTERNAL-LATER — KULLANMADAN PARA ÇIKMAZ
- gerçek SMS
- production e-mail provider
- payment transaction commission
- Google/Meta/TikTok/Microsoft reklam bütçesi
- büyük cloud GPU
- production CDN/object storage/video streaming
- Apple/Google mağaza geliştirici hesapları
- premium third-party monitoring/support

---

# 45. NEXT INSTALLER — KESİN UYGULAMA KURALLARI

Bir sonraki toplu kurulum betiği bu belgeyi manifest olarak kullanacaktır.

## BETİK YAPISI
```text
00_preflight
01_base
02_local_forge
03_ai_factory
04_design_factory
05_web_pwa_desktop_tv_mobile
06_backend_data
07_media_realtime
08_security_privacy
09_test_quality
10_seo_ads_analytics_maps
11_observability_backup
12_product_skeletons
13_test_publish
14_final_audit
```

## BETİK KURALLARI
1. D: formatlanmaz.
2. KVM1 kopyası silinmez.
3. Her paket kuruluysa atlanır.
4. Hata alan bağımsız paket diğerlerini durdurmaz.
5. Ağ hatalarında retry/backoff.
6. Ağır Docker servisleri image olarak hazır olabilir ama otomatik başlamaz.
7. Büyük AI model ağırlıkları indirilmez.
8. Küçük Ollama modeli disk/RAM eşiği ve kullanıcı politikasına göre çekilir.
9. Windows gerektiren programlar PowerShell/winget aşamasında kurulur.
10. Linux araçları WSL içinde kurulur.
11. Node/Python paketleri ayrı toolbox/env içinde tutulur; proje dependency'si gereksiz kirletilmez.
12. Çakışan alternatiflerden yalnız seçilen varsayılan aktif olur.
13. Test sonunda binary varlığı değil gerçek `--version`, import, health veya smoke test aranır.
14. Servisler compose profile/systemd ile ACTIVE/PASSIVE ayrılır.
15. Final rapor tam manifesti satır satır gösterir.
16. Kurulum raporları `D:\ANABEYIN\reports` ve `/srv/anabeyin/docs/install-reports` altında saklanır.
17. Secret değerleri rapora yazılmaz.
18. Bir servis başarısızsa “iskelet hazır” denilerek tamamlanmış sayılmaz.
19. Tasarım araçlarının kurulmuş olması tasarımın tamamlandığı anlamına gelmez.
20. Ürün modülünün klasörü olması ürünün tamamlandığı anlamına gelmez.
21. Site özelliği ancak frontend+backend+DB+policy+admin+test+audit gerektiği ölçüde gerçekten çalışınca tamamdır.

---

# 46. SON TAMAMLANDI KRİTERİ — YEREL FABRİKA

Kurulum fabrikası ancak şunlar doğrulandığında tamam sayılır:

- WSL/D: güvenli ve kalıcı
- yerel repo/Forgejo hazır
- ana toolchain hazır
- AI router/provider health hazır
- Kimi/Cline/OpenCode/Aider çalışıyor
- ağır model indirme politikası uygulanıyor
- Penpot/Storybook/design toolchain hazır
- Web/PWA toolchain hazır
- mobile/TV/desktop kaynak toolchain hazır
- PostgreSQL/PostGIS/pgvector hazır
- Redis/Valkey/BullMQ hazır
- search/media/realtime araçları hazır
- security tarayıcıları hazır
- test fabrikası hazır
- SEO/ads/analytics entegrasyon noktaları hazır
- monitoring/backup hazır
- product module boundaries hazır
- test publish için Cloudflare Tunnel hazır
- hiçbir zorunlu secret GitHub'a sızmamış
- final manifest gerçek eksikleri dürüstçe raporluyor

---

# 47. SON TAMAMLANDI KRİTERİ — GERÇEK ANA BEYİN ÜRÜNÜ

Araçların kurulması = site tamamlandı demek değildir.

AnaBeyin ancak:
- özgün final tasarımı
- Core
- Sosyal
- Profil
- Mesajlaşma
- Shop
- İlan
- Emlak
- Araç
- İkinci El
- Video
- Reels
- Canlı
- Reklam
- Yönetim
- AI operasyon
- Moderasyon
- güvenlik
- SEO
- analytics
- test
- backup
- mobil/tablet/desktop/TV deneyimleri
hedeflenen kapsamda gerçek veriyle doğrulandığında tamam sayılır.

---

# 48. BU BELGENİN STATÜSÜ

Bu belge bundan sonraki “toplu yüklet”, “eksikleri kur”, “AnaBeyin fabrikasını tamamla”, “D:'ye kur” komutlarında **ANA MASTER KAYNAK** kabul edilir.

Eski 521 envanteri silinmez; onun bütün kurulabilir araçları bu master plana dahildir.

Yeni araç eklenirse:
- adı,
- resmi/açık kaynak proje adı,
- ne işe yaradığı,
- hangi etapta kurulacağı,
- ACTIVE/PASSIVE/REMOTE/EXTERNAL durumu,
- doğrulama yöntemi
bu belge/manifest yapısına işlenir.

**Bir sonraki hedef: bu MASTER planı D:'ye taşıyan ve etap etap bütün araçları tek seferde hazırlayan güvenli, tekrar çalıştırılabilir toplu kurucuyu üretmek ve çalıştırmak.**
