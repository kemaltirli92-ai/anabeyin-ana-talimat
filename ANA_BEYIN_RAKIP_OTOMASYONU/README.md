# Ana Beyin — Rakip Özellik Analizi ve Skill Seçim Otomasyonu

**Sürüm:** MVP 0.1. **Durum:** Özellik gözlemleme ve Skill kataloglama çalışır; tam otomatik uygulama geliştirme ve yayınlama bu sürümde YOK.

## Amaç

Abacus.AI ChatLLM gibi rakiplerin **herkese açık ürün ve doküman sayfalarını** analiz edip kendi, bağımsız Ana Beyin uygulamamız için özellik listesi çıkarmak. Rakibin tescilli kodunu, gizli API'sini, telifli görsellerini veya markasını kopyalamamak. Kendi GPU'muzu satın almak ya da bütün açık modelleri indirmek zorunda kalmadan önce ihtiyaçları belirlemek.

## Windows 11'de çalıştır

Ana Beyin kodunu D: sürücüsünde tutuyorsan bu klasörü oraya indir veya depoyu klonla. Python 3.10+ dışında bağımlılık yok.

\`\`\`powershell
cd D:\ANA_BEYIN\ANA_BEYIN_RAKIP_OTOMASYONU
py -3 scan.py
# Çıktı: reports\audit.md ve reports\audit.json
py -3 scan.py --fixture sample.html
py -3 skills_catalog.py "D:\GUVENLI_SKILLS" --output reports\skills_index.csv
\`\`\`

**Kritik:** D: klasörü örnektir, mevcut yerel dosyalara dokunulmaz. \`skills_catalog.py\` yalnız eldeki SKILL.md dosyalarını indeksler, hiçbirini yüklemez veya çalıştırmaz.

## Modüller

- \`targets.json\` — İncelenecek Abacus resmî sayfaları, host izinleri ve özellik eşleme kuralları.
- \`scan.py\` — HTTPS/robots.txt kontrolüyle metin temelli özellik sinyali tarama; kaynaklı JSON + Markdown raporu.
- \`skills_catalog.py\` — SKILL.md kimlik, açıklama, lisans ve risk sinyalleri CSV çıktısı.
- \`sample.html\` — Ağ gerekmeden temel smoke-test.
- \`reports/\` — Çalıştırmada oluşur; kaynaklardan çıkarılan bulgular inceleme gerektirir.

## Kendi veri/kaynak güvenliği

- Yalnız izin verilmiş resmî HTTPS alan adları, herkese açık sayfalar; giriş, CAPTCHA ve erişim engeli aşma YOK.
- Sayfalarda yalnız metin çıkarılır; özel uygulama JS/CSS, logo, kullanıcı verisi veya model ağırlığı indirilmez.
- robots.txt engelliyorsa atlanır; API bloklanırsa SKIPPED yazılır; anahtar kelime eşleşmesi **özellik kanıtı değil, insanın teyit edeceği ipucu**.
- Skills güvenilmeyen yazılım sayılır: kaynak ve LICENSE incelemesi, Cisco Skill Scanner ve sandbox ile kontrol edilmeden yüklenmez.
- Bu ilk sürüm güvenlikçe sertleştirilmiş SaaS tarayıcısı değildir; DNS pinleme ve ağ çıkışı kuralları üretime geçmeden güçlendirilir.

## Sonraki geliştirme — henüz uygulanmadı

1. Rakip sayfa taraması + manuel UX test sonuçlarını normalleştir, sürümler arasındaki farklılıkları bul.
2. Çıkan işlevlere göre kendi özgün UI bileşenleri ve kabul kriterleri oluştur.
3. LibreChat/Open WebUI özelliklerinden *uygun lisansla* yararlan; model router, yerel/uzak API ve kredileri ekle.
4. Kod ajanını ayrı, kısa ömürlü sandbox'ta çalıştır; PR/test/önizleme üret.
5. İnsan onayı olmadan ödeme, dosya silme, rakip siteye giriş, kaynak kopyalama ve deploy YOK.

## İlk kaynaklar
- https://chatllm.abacus.ai/
- https://api.abacus.ai/help/route-llm/
- https://github.com/anthropics/skills
- https://agentskills.io/specification
- https://github.com/cisco-ai-defense/skill-scanner
- https://github.com/danny-avila/LibreChat
