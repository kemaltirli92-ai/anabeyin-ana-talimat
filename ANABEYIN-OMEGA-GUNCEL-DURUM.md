# ANABEYİN OMEGA — GÜNCEL DURUM CHECKPOINT

**Tarih:** 26.09.2026  
**Durum:** Bundan sonraki AnaBeyin çalışmalarında önce bu dosya, sonra `ANABEYIN-OMEGA-YEREL-FABRIKA-NIHAI-MASTER.md` okunacak.

## 1. Ana kararlar
- AnaBeyin önce D: üzerindeki WSL/Ubuntu ortamında geliştirilecek.
- GitHub günlük çalışma alanı değil; arşiv ve checkpoint.
- D: ve `D:\KVM1_KOPYA` korunacak.
- Büyük Kimi/GLM/DeepSeek/Nemotron ağırlıkları yerelde tutulmayacak; uzak API kullanılacak.
- Eski tasarım final değil; yeni tasarım sıfırdan, ana renk `#E30A17` korunarak yapılacak.
- Site; mobil, tablet, masaüstü ve TV deneyimlerini ayrı ayrı destekleyecek.
- Production VPS daha sonra seçilecek; fakat gerekli geliştirme araçları mümkün olduğunca şimdiden hazır tutulacak.

## 2. Son doğrulanan sistem
- Ubuntu 24.04.5 LTS / WSL2
- D: yaklaşık 239 GB
- son checkpoint: yaklaşık 119 GB kullanılmış / 120 GB boş
- PostgreSQL mevcut
- Redis mevcut
- Docker + Docker Compose mevcut
- Nginx mevcut
- Cloudflared mevcut
- NVIDIA WSL erişimi mevcut (`nvidia-smi`)

## 3. AI / coding araçları
Doğrulanan:
- Cline
- Kimi Code — komut `kimi`
- OpenCode — komut `opencode`
- TypeScript
- Madge
- Artillery
- Autocannon
- Renovate
- Sentry CLI

## 4. Node OMEGA laboratuvarları — doğrulandı
### Backend
NestJS Swagger, Fastify, AJV, Pino, JOSE, Argon2, WebAuthn, TOTP, QR, phone validation, Zxcvbn, Decimal/Dinero, NanoID, Socket.IO, WS, BullMQ, PostgreSQL client, Drizzle ORM/Kit, OpenTelemetry.

### Research
Crawlee, Cheerio, Prebid.js, OpenFeature server/web SDK.

### Test
Vitest, Jest, Testing Library, MSW, Playwright, Pixelmatch, BackstopJS, axe, Pa11y, Lighthouse, Pact, Testcontainers, fast-check, Stryker.

### Tooling
Turborepo, Changesets, Biome, ESLint, Prettier, oxlint, Stylelint, commitlint, Husky, lint-staged, Knip, depcheck, Madge, cspell, publint, arethetypeswrong, size-limit, rollup visualizer, source-map-explorer.

### Storybook
Storybook, React/Vite adapter, a11y addon, Storybook test.

### Mobile / TV / Desktop
Expo, Expo Router, React Native, React Navigation, MMKV, react-native-tvos, Tauri CLI.

### Browser
Playwright browserları hazır.

## 5. Storage / Forge
- MinIO Community resmi kaynaktan kuruldu.
- Forgejo v16 container image hazır.

## 6. Medya / dosya / güvenlikte doğrulanan ana araçlar
- FFmpeg / ffprobe
- ImageMagick 6 (`convert`)
- ExifTool
- Tesseract
- qpdf
- pdftotext
- oletools
- Syft
- Grype
- Hadolint
- OSV Scanner image
- OWASP ZAP image

## 7. Ollama kararı
- Ollama şu an kurulmamış durumda.
- Düşük öncelikli / sonra.
- AnaBeyin geliştirmesini engellemez.
- Görevi: yalnız küçük yerel AI modellerini internetsiz/API'siz çalıştırmak.
- Ana zekâ: Kimi + NVIDIA ve diğer uzak modeller.

## 8. Ürün kapsamı
AnaBeyin tek hesaplı çok ürünlü platform olacak:
Core, Ana Sayfa, Sosyal, Profil, Mesajlaşma, Gruplar, Sayfalar, Topluluklar, Reels, Hikâyeler, Video, Canlı, Shop/Marketplace, İlan, Emlak, Araç/Vasıta/S-Aracım, İkinci El, VIP Kiralama, Blog, Forum, Sözlük, Hizmet, Yemek, Ulaşım, Personel/İş, Oyun, AnaBeyin AI, Mail, Eşleşme, Bakkal, Toptan, Müzik, Creator/Profesyonel hesaplar, Reklam, Yönetim ve Patron AI/Ajan Operasyon.

## 9. Tasarım
- Mevcut kullanıcı arayüzü final değil.
- Sıfırdan premium AnaBeyin Design System kurulacak.
- Mobil / tablet / desktop / TV ayrı deneyim.
- Ana marka rengi `#E30A17`.
- Master planda Penpot, Storybook, Design Tokens ve görsel test zinciri tanımlı.

## 10. Referans ve Software Factory
Master planda:
- public web sitesi araştırma
- kategori ağacı çıkarma
- screenshot serisinden işlev/veri modeli çıkarma
- video/ekran kaydı analizi
- PageSpec üretimi
- özgün frontend/backend/DB/admin/test üretimi
- muhasebe/ERP Software Factory
- tarım/tütün/bakkal/POS/CRM/VIP kiralama gibi sektör paketleri
tanımlıdır.

## 11. Otonom geliştirme hedefi
Uzun süreli hedef:
Patron AI görevi kaydeder, alt işlere böler, model/ajan seçer, araştırır, PageSpec üretir, kodlar, test eder, bağımsız denetir, checkpoint alır ve kesinti sonrası kaldığı yerden devam eder.

## 12. Reklam / SEO / analytics
Master planda:
- AnaBeyin kendi reklam motoru
- Prebid/OpenRTB/VAST/VMAP
- Google/Meta/TikTok/Microsoft adapterları
- SEO/sitemap/schema/OG
- yerel analytics
- A/B test / feature flags
- consent/privacy
hazırlanmıştır.

## 13. Son checkpoint sonucu
- 81 hata turu sonrasında 94 kontrol OK.
- Node backend/research/test/tooling/Storybook/mobile/TV/desktop laboratuvarları OK.
- MinIO OK.
- Forgejo v16 image OK.
- Tek açık araç: Ollama; bilinçli olarak ertelendi.

**Sonraki faz:** yeni paket kovalamak yerine OMEGA geliştirme motorunu ve gerçek AnaBeyin proje üretimini başlatmak.
