# ANABEYİN OMEGA — GÜNCEL DURUM / DEVAM NOKTASI

**Tarih:** 26.09.2026  
**Statü:** CANONICAL CHECKPOINT — bundan sonraki AnaBeyin konuşmalarında ve kurulum/geliştirme işlerinde buradan devam edilir.  
**Ana çalışma ortamı:** Windows 11 + WSL2 Ubuntu 24.04.5 LTS, fiziksel olarak D: üzerinde.  
**Ana master belge:** `ANABEYIN-OMEGA-YEREL-FABRIKA-NIHAI-MASTER.md`

---

# 1. DEĞİŞMEZ PROJE KARARLARI

- AnaBeyin önce tamamen yerelde, D: üzerindeki WSL/Linux ortamında geliştirilecek.
- Site tamamlanana kadar fotoğraf, video, test verisi, veritabanı, loglar ve geliştirme kaynakları mümkün olduğunca yerelde tutulacak.
- `anabeyin.com` yalnız test aşamasında D:'deki yerel sisteme Cloudflare Tunnel ile bağlanabilir; ilk dış kullanıcı sayısı birkaç kişi / yaklaşık 5–10 test kullanıcısıdır.
- Production VPS daha sonra seçilecek. Ancak VPS'te lazım olacak yazılım/tooling şimdiden yerelde hazır tutulacak; ağır servisler PASİF olabilir.
- D: ve `D:\KVM1_KOPYA` otomatik silinmez / formatlanmaz.
- Büyük Kimi/GLM/DeepSeek/Nemotron model ağırlıkları D:'ye indirilmez.
- Mevcut eski tasarım final değildir. AnaBeyin kullanıcı arayüzü sıfırdan, `#E30A17` ana marka rengi korunarak yeniden tasarlanacaktır.
- GitHub günlük geliştirme yeri değildir; arşiv/referans/checkpoint olarak kullanılır. Asıl source-of-truth yerelde olacaktır.
- “Component/klasör/MD var” = özellik tamamlandı anlamına gelmez. Gerçek özellik frontend + backend + DB + permission/policy + admin + test + audit gerektiği ölçüde çalışınca tamamdır.

---

# 2. OLLAMA KARARI

**Ollama şu anda KURULMADI ve BLOKER DEĞİL.**

- Ollama yalnız küçük yerel modelleri internetsiz/API'siz çalıştırmak için kullanılacak.
- AnaBeyin'in ana zekâsı Kimi + NVIDIA + diğer uzak AI sağlayıcıları olacaktır.
- Bu bilgisayarın yaklaşık 16 GB RAM / 4 GB VRAM sınıfı nedeniyle büyük modeller zaten Ollama'da yerel çalıştırılmayacaktır.
- Ollama “düşük öncelikli / sonra” statüsüne alınmıştır.
- Site geliştirmesine başlamayı engellemez.

---

# 3. SON DOĞRULANAN DONANIM / DİSK DURUMU

Son başarılı onarım raporu sonunda:

- D: toplam yaklaşık **239 GB**
- kullanılan yaklaşık **119 GB**
- boş yaklaşık **120 GB**
- WSL root: yaklaşık **1007 GB sanal kapasite**, 111 GB kullanılmış, 846 GB boş görünüyordu.
- WSL işletim sistemi: **Ubuntu 24.04.5 LTS (Noble)**

Bu değerler checkpoint anındaki değerlerdir; sonraki kurulumlarda değişebilir.

---

# 4. TEMEL ARAÇLAR — DOĞRULANMIŞ / MEVCUT

Aşağıdakiler mevcut veya başarıyla doğrulanmıştır:

## Sistem / geliştirme
- Git
- Git LFS
- GitHub CLI
- Node.js
- npm
- pnpm/Corepack
- Python 3
- pip
- pipx
- uv
- Docker
- Docker Compose
- Java
- gcc / g++
- NVIDIA WSL erişimi (`nvidia-smi`)
- Cloudflared
- Nginx
- PostgreSQL
- Redis

## AI / coding
- Cline
- Kimi Code (`@moonshot-ai/kimi-code`, komut: `kimi`)
- OpenCode (`@opencode/cli`, komut: `opencode`)
- Madge
- Artillery
- Autocannon
- TypeScript
- Renovate
- Sentry CLI

**Not:** `kimi-code` diye ayrı komut gerekmez; gerçek komut `kimi`dir.  
**Not:** `opencode-ai` diye ayrı komut gerekmez; gerçek komut `opencode`dir.

## Medya / dosya
- FFmpeg
- ffprobe
- ImageMagick 6 (`convert`; `magick` komutunun olmaması eksik değildir)
- ExifTool
- Tesseract OCR
- qpdf
- pdftotext
- oletools

## Güvenlik / supply-chain
- Syft
- Grype
- Hadolint
- OSV Scanner Docker image
- OWASP ZAP Docker image

---

# 5. BAŞARIYLA ONARILAN 81-HATA TURU

İlk büyük OMEGA kurulumunda 81 hata raporlanmıştı. Bunların çoğu gerçek 81 ayrı problem değil, tek Node laboratuvarındaki peer/dependency zincir hatalarıydı.

Onarım sonunda:

- **94 kontrol OK**
- **yalnız Ollama unresolved**
- Ollama iki farklı kontrol satırında sayıldığı için raporda `KALAN FAIL: 2` görünüyordu; pratikte tek araçtır.

## Node backend lab — OK
- @nestjs/swagger
- fastify
- ajv
- pino
- jose
- argon2
- @simplewebauthn/server
- @simplewebauthn/browser
- otplib
- qrcode
- libphonenumber-js
- zxcvbn
- decimal.js
- dinero.js
- nanoid
- socket.io
- ws
- bullmq
- pg
- drizzle-orm
- drizzle-kit
- @opentelemetry/api
- @opentelemetry/sdk-node

## Node research lab — OK
- crawlee
- cheerio
- prebid.js
- @openfeature/server-sdk
- @openfeature/web-sdk

## Node test lab — OK
- vitest
- jest
- @testing-library/react
- @testing-library/user-event
- msw
- playwright
- @playwright/test
- pixelmatch
- backstopjs
- axe-core
- @axe-core/playwright
- pa11y
- lighthouse
- @pact-foundation/pact
- testcontainers
- fast-check
- @stryker-mutator/core

## Node tooling lab — OK
- turbo
- @changesets/cli
- @biomejs/biome
- eslint
- prettier
- oxlint
- stylelint
- @commitlint/cli
- @commitlint/config-conventional
- husky
- lint-staged
- knip
- depcheck
- madge
- cspell
- publint
- @arethetypeswrong/cli
- size-limit
- rollup-plugin-visualizer
- source-map-explorer

## Storybook lab — OK
- storybook
- @storybook/react-vite
- @storybook/addon-a11y
- @storybook/test

## Mobile lab — OK
- expo
- expo-router
- react-native
- @react-navigation/native
- @react-navigation/native-stack
- react-native-mmkv

## TV lab — OK
- react-native-tvos

## Desktop lab — OK
- @tauri-apps/cli

## Browser testleri — OK
- Playwright browserları başarıyla hazırlandı.

---

# 6. STORAGE / FORGE

Başarıyla doğrulananlar:

- **MinIO Community** — resmi kaynaktan derlenerek kuruldu.
- **Forgejo v16 container image** — codeberg.org üzerinden çekildi.
- Docker ve Docker Compose çalışıyor.

Forgejo şu anda image olarak hazır olabilir; sürekli RAM tüketmesi gerekmiyorsa servis olarak PASİF tutulabilir.

---

# 7. DAHA ÖNCE ÇEKİLEN / HAZIRLANAN PASİF DOCKER KAYNAKLARI

Önceki envanterde doğrulananlar:
- ghcr.io/google/osv-scanner
- ghcr.io/zaproxy/zaproxy
- grafana/grafana
- grafana/loki
- louislam/uptime-kuma
- netdata/netdata
- prom/prometheus

OMEGA kurulumu ayrıca ağır servisleri mümkün olduğunca image/source olarak hazırlayıp otomatik başlatmama politikasını izler.

---

# 8. ANA DOSYA / KLASÖR YAPISI

Mevcut / hedeflenen yerel yapı:

```text
D:\ANABEYIN\
D:\KVM1_KOPYA\

/srv/anabeyin/
├─ apps/
├─ database/
├─ docs/
├─ infra/
├─ local-forge/
├─ packages/
├─ research/
├─ scripts/
├─ services/
├─ tests/
├─ tools/
└─ tools-src/
```

`D:\KVM1_KOPYA` eski KVM1 kaynak/yedek/referans kopyasıdır ve korunur.

---

# 9. ANA BEYİN ÜRÜN KAPSAMI — DEVAM NOKTASI

AnaBeyin tek bir sosyal site değildir; tek hesapla çalışan büyük bir platformdur.

Ana ürünler / modüller:

- Core / kimlik / hesap / profil
- Ana Sayfa
- Sosyal
- Profil
- Mesajlaşma
- Gruplar
- Sayfalar
- Topluluklar
- Reels
- Hikâyeler
- Video
- Canlı
- Shop / Marketplace
- İlan
- Emlak
- Araç / Vasıta / S-Aracım
- İkinci El / Pazar
- VIP Kiralama
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
- Creator / profesyonel hesaplar
- Reklam sistemi
- Yönetim sistemi
- Patron AI / ajan operasyon sistemi

Her kategori ayrı PageSpec/ürün kitabı olacak ve gerektiğinde alt kategorilere kadar kendi data model/backend/admin/test katmanına sahip olacaktır.

---

# 10. TASARIM KARARI

Mevcut site tasarımı kullanıcı tarafından beğenilmemiştir ve final değildir.

Yeni tasarım:
- sıfırdan
- özgün
- premium
- çok gelişmiş
- mobil + tablet + desktop + TV
- touch + keyboard + mouse + D-pad
- light/dark/high-contrast
- ortak AnaBeyin Design System
- ana marka rengi #E30A17
- eski tasarımdan yalnız işlev/sayfa kapsamı referansı

olarak yeniden kurulacaktır.

Ana tasarım fabrikasında Penpot/Storybook/React UI/Design Tokens yaklaşımı kullanılacaktır.

---

# 11. REFERANS ARAŞTIRMA / SCREENSHOT-TO-APP KARARI

Sistem ileride kullanıcı tarafından verilen:

- public web sitesi
- sayfa/kategori ağacı
- screenshot serisi
- ekran kaydı/video
- PDF/manual
- HTML/HAR
- CSV/Excel
- schema/API dokümanı

gibi kaynakları analiz edebilecek.

Amaç üçüncü tarafın gizli kodunu “kopyalamak” değil:
- gözlemlenebilir özellikleri,
- kategori ağacını,
- filtreleri,
- kullanıcı akışlarını,
- veri/entity ilişkilerini,
- olası backend ihtiyaçlarını,
- admin ihtiyaçlarını
çıkarıp **özgün çalışan eşdeğer sistem** üretmektir.

Screenshot serisinden:
- screen inventory
- OCR evidence
- UI component map
- user flow
- entity candidates
- inferred data model
- inferred API
- business rules
- permission matrix
- uncertainties
- PageSpec
üretilir.

---

# 12. SOFTWARE FACTORY / MUHASEBE KARARI

AnaBeyin fabrikası yalnız AnaBeyin.com'u değil, bağımsız sektör yazılımları da üretecek.

Hedef örnekler:
- ortak muhasebe/ERP çekirdeği
- tarım muhasebesi
- tütün yazılımı
- bakkal/POS
- CRM
- stok
- belge takip
- rezervasyon
- VIP kiralama
- lojistik
- sektör portalları

Referans açık kaynaklar:
- ERPNext / Frappe
- Odoo Community
- Dolibarr
- Tryton
- Akaunting
- LedgerSMB
- GnuCash
- Frappe Books
- Apache OFBiz
- Axelor

Türkiye public ürün referans kataloğu:
- Logo
- Mikro
- Luca
- Paraşüt
- Zirve
- AKINSOFT WOLVOX
- ETA
- Nebim
- Logo Netsis
- Bizim Hesap

Ticari kaynak kod kopyalanmaz; public özellik/iş akışı/terminoloji referansı çıkarılır.

---

# 13. UZUN SÜRELİ OTONOM GELİŞTİRME KARARI

Nihai hedef:

Kullanıcı büyük hedefi bir kez verir ve sistem:
- hedefi kaydeder
- alt işlere böler
- uygun AI/ajanı seçer
- referans araştırır
- MD/PageSpec üretir
- kodlar
- test eder
- bağımsız denetir
- hatayı yeniden açar
- git checkpoint alır
- reboot/crash/network sonrası devam eder
- günler/haftalar boyunca çalışabilir

Bunun için OMEGA master planda:
- Temporal
- BullMQ
- Patron AI
- goal engine
- task planner
- supervisor
- resume daemon
- agent dispatcher
- independent reviewer
- evidence ledger
- worktree/file-lock
- human approval gate
tasarlanmıştır.

Kritik geri döndürülemez işler insan onayı ister.

---

# 14. YAPAY ZEKÂ STRATEJİSİ

## Ana uzak AI
- Kimi K3 / Kimi coding ailesi
- NVIDIA Build / NIM uygun modelleri
- GLM
- DeepSeek
- Nemotron
- MiniMax / Qwen / Mistral uygun fallback endpointleri
- OpenRouter uygun fallback/free havuzu

## Yerel
- küçük embedding/reranker/OCR/STT modelleri
- gerekirse küçük Qwen sınıfı model
- Ollama daha sonra / düşük öncelik

**Büyük model ağırlıkları D:'ye indirilmez.**

---

# 15. REKLAM / SEO / ANALYTICS KAPSAMI

Hazırlanacak sistem:
- AnaBeyin kendi reklam motoru
- advertiser / campaign / creative / targeting / budget / CPM / CPC / attribution / reporting
- sponsored post / product / listing / video
- Prebid.js / OpenRTB / VAST / VMAP / ads.txt / app-ads.txt / sellers.json / schain
- Google AdSense / Ad Manager / AdMob adapter
- Google Ads conversion
- Meta / TikTok / Microsoft vb. adapterlar
- SEO sitemap / robots / canonical / hreflang / Schema.org / OG cards
- Search Console / Bing / IndexNow adapter
- yerel analytics
- A/B test / feature flag
- consent / privacy ledger

Dış hesap/API anahtarları üretime yakın girilir; testte kapalı/mock olabilir.

---

# 16. BU DOSYANIN KULLANIM KURALI

Bu dosya “şu anda neredeyiz?” sorusunun hızlı cevabıdır.

Bundan sonraki AnaBeyin konuşmalarında:
1. önce bu checkpoint okunur,
2. sonra OMEGA master planına bakılır,
3. sonra yalnız gereken sonraki iş yapılır.

Yeni önemli değişiklik olduğunda bu dosya güncellenir.

**Şu anki net sonraki faz: araç kurulumunu uzatmak yerine AnaBeyin OMEGA geliştirme motorunu ve gerçek proje üretimini başlatmak. Ollama bunun için beklenmeyecek.**
