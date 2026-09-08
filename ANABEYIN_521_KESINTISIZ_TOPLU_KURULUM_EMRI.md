# AnaBeyin — 521 Kesintisiz Toplu Kurulum Emri

## 0. BU DOSYA NE İÇİN

Bu dosya AnaBeyin sunucusunda yapılacak **ilk büyük işi** tanımlar: mevcut siteyi yeniden yazmadan önce, `ANABEYIN_ANA_KURULUM_ENVANTERI_521.md` dosyasındaki bütün kalemleri tek tek ele almak; kurulabilir araçları kurmak, hazırlanabilir servisleri hazırlamak, dış sağlayıcı bağlantılarını güvenli biçimde tanımlamak ve daha sonra yapılacak dev site geliştirmesi için çalışma ortamını eksiksiz bırakmak.

Bu dosya bir öneri listesi değildir. Kurucu, terminal işçisi, OpenCode, Kimi Code veya başka bir ajan bu dosyayı okuduğunda aşağıdaki kuralları **kesin emir** kabul etmelidir.

Ana envanter: `ANABEYIN_ANA_KURULUM_ENVANTERI_521.md`
Manuel hazırlık: `ANABEYIN_MANUEL_HAZIRLIK_LISTESI.md`
Mevcut sunucu: aynı AnaBeyin VPS'i. İkinci sunucu YOK.

---

## 1. ANA HEDEF

1. Envanterdeki **1–463 arasındaki kurulabilir/hazırlanabilir araç ve servisleri** mevcut AnaBeyin VPS'ine kur veya hazır hale getir.
2. Envanterdeki **464–521 arasındaki maddeler program paketi değildir; gerçek AnaBeyin sitesi yapılırken kodlanacak sistemlerdir.** Bunları silme, unutma veya 'kurulamadı' sayma. Durum raporunda `SONRA_SITE_GELISTIRME` olarak işaretle ve ikinci büyük iş için zorunlu görev olarak koru.
3. 1–521 arasındaki **hiçbir numara raporsuz kalmayacak.** Her madde şu durumlardan tam birini alacak:
   - `KURULDU`
   - `ZATEN_VAR`
   - `HAZIRLANDI`
   - `KAYNAK_KISITI_NEDENIYLE_BEKLEMEDE`
   - `DIS_SAGLAYICI_SONRA`
   - `SONRA_SITE_GELISTIRME`
   - `HATA_TEKRAR_DENE`
4. Nihai rapor 1’den 521’e kadar numaralı olmalı; hiçbir madde atlanmamalıdır.

---

## 2. KİMİ K3 KOTA KORUMA — EN ÖNEMLİ KURAL

Bu toplu araç kurulumunda **Kimi K3'e model isteği gönderme.**

Kesin kurallar:

- `kimi` komutunu kurulum işçisi olarak ÇAĞIRMA.
- Kimi K3'e paket kurdurma, dosya araştırma, hata çözme, özetleme veya kod yazdırma isteği GÖNDERME.
- `anabeyin-kimi-keeper.service` servisini durdurma, yeniden başlatma veya değiştirme.
- Mevcut Kimi Code kurulumu yerinde kalsın.
- Kimi Skills, ajan, MCP, Hook ve kural dosyaları **yerel dosya üretimiyle** hazırlanabilir; bunları hazırlarken model çağrısı yapma.
- Paket kurulumlarında `apt`, `pip/pipx/uv`, `npm/pnpm`, Docker, GitHub indirmeleri ve resmi proje kurucuları kullan.
- Yapay zekâ işçisi gerekirse öncelik: OpenCode Free / OpenRouter Free / NVIDIA ücretsiz uçları / yerel ücretsiz araçlar. Ancak sırf kurulum yapmak için yapay zekâ modeli çağırmak zorunlu değildir ve tercih edilmez.
- K3 kotası, daha sonra kullanıcı açıkça **AnaBeyin sitesinin büyük geliştirme işini** başlattığında kullanılacaktır.

Kurulum sonunda raporda şu satır açıkça bulunmalı:

`KIMI_K3_KURULUM_CAGRISI=0`

---

## 3. MEVCUT CANLI SİSTEMİ KORUMA

Kurulum başlamadan önce şu gerçekleri kabul et:

- Canlı proje: `/var/www/anabeyin`
- Mevcut servisler arasında `anabeyin-core.service`, `anabeyin-kimi-keeper.service`, `nginx.service`, `monarx-agent.service`, `ssh.service` çalışıyor.
- AnaBeyin uygulaması mevcut durumda yerel `127.0.0.1:3100` bağlantı noktasında çalışıyor.
- Sunucu yaklaşık 4 GB RAM ve 4 GB takas alanına sahiptir.
- Sunucuda otomatik yeniden başlatma YASAKTIR.

Kesin koruma kuralları:

1. İlk işlem yedek al.
2. `/var/www/anabeyin` içindeki canlı site dosyalarını bu aşamada değiştirme.
3. `/etc/nginx` ve ilgili systemd servis tanımlarını yedekle.
4. `anabeyin-core.service` servisini durdurma veya yeniden başlatma.
5. `anabeyin-kimi-keeper.service` servisini durdurma veya yeniden başlatma.
6. Nginx yapılandırmasını canlı siteyi bozacak şekilde değiştirme.
7. Sunucuyu `reboot`, `shutdown`, `systemctl reboot` ile yeniden başlatma.
8. PostgreSQL/Redis/MinIO/Ollama gibi yeni servisleri dış internete açma.
9. PostgreSQL ve Redis yalnız yerel bağlantıda hazırlanacak; gerçek AnaBeyin sitesine bağlama ikinci büyük işte yapılacak.
10. UFW/nftables/Hostinger güvenlik duvarını bu toplu kurulum sırasında körlemesine değiştirme.
11. SSH 22 bağlantı noktası ve mevcut erişim korunmalıdır.

---

## 4. KESİNTİSİZ ÇALIŞMA KURALI

Kullanıcı tatildedir ve bilgisayarı/sekmesi/SSH bağlantısı açık kalmak zorunda değildir.

Kurulum şu şekilde çalışmalıdır:

- Asıl iş SSH oturumunun içinde doğrudan uzun süreli çalıştırılmayacak.
- `systemd` altında kalıcı servis olarak başlatılacak.
- Servis sistem açılışında etkin olmalı.
- Ağ geçici olarak kesilirse indirmeler yeniden denenmeli.
- Paket kurulumu başarısız olursa hata kayda alınmalı, diğer bağımsız kalemlere devam edilmeli ve en sonda başarısızlar yeniden denenmeli.
- Her büyük bölüm sonunda kontrol noktası dosyası yazılmalı.
- Sunucu beklenmedik biçimde yeniden başlarsa servis açılışta tekrar başlamalı ve tamamlanmış bölümleri tekrar bozmak yerine kontrol noktalarından devam etmelidir.
- SSH penceresinin kapanması, kullanıcının bilgisayarını kapatması veya tarayıcı sekmesinin kapanması kurulumu durdurmamalıdır.
- Kurulum kayıtları sürekli dosyaya yazılmalıdır.

Önerilen kalıcı yollar:

- Ana çalışma alanı: `/opt/anabeyin-toolbox`
- Gizli bilgiler: `/etc/anabeyin-secrets`
- Ana kayıt: `/var/log/anabeyin-521-install.log`
- Kontrol noktaları: `/var/lib/anabeyin-521-install/state/`
- Nihai durum: `/opt/anabeyin-toolbox/521-KURULUM-DURUMU.tsv`
- İnsan okunur rapor: `/opt/anabeyin-toolbox/521-KURULUM-SONUCU.md`

---

## 5. GİZLİ ANAHTARLAR

Manuel olarak hazırlanmış sağlayıcılar:

- NVIDIA NGC/NIM
- OpenRouter
- Hugging Face
- Cloudflare `anabeyin-dns`
- GitHub CLI tarayıcı yetkilendirmesi

Kurulumda:

- Anahtarları GitHub'a yazma.
- Kaynak koda gömme.
- Terminal kayıtlarına basma.
- `/etc/anabeyin-secrets` altında yalnız root okuyacak şekilde `0700` dizin ve `0600` dosya izinleri kullan.
- NVIDIA Build anahtarı NGC anahtarından ayrı bir değer olarak mevcutsa ayrı değişkende destekle; yoksa kurulumu durdurma, `DIS_SAGLAYICI_SONRA` olarak raporla.
- Cloudflare belirtecini yalnız `anabeyin.com` DNS düzenleme amacıyla kullan; yetki kapsamını genişletme.

---

## 6. 521 ENVANTERİN NASIL YORUMLANACAĞI

### 6.1. 1–37 — Yapay zekâ işçi sistemi

Kimi Code mevcutsa yerinde bırak. OpenCode, OpenCode Free bağlantıları, OmniRoute, OpenRouter, NVIDIA istemcileri ve Ollama çalışma ortamını hazırla. Ücretsiz model listelerini ve bağlantı yapılandırmalarını oluştur.

4 GB RAM nedeniyle büyük yerel model ağırlıklarını körlemesine indirme. GLM, Qwen, DeepSeek, MiniMax, Nemotron, Mistral, Meta, GPT-OSS, Llama Guard gibi aileler için çalışma bağlantısı/sağlayıcı tanımı hazırlanabilir; gerçek ağır model ağırlıkları `KAYNAK_KISITI_NEDENIYLE_BEKLEMEDE` olarak raporlanabilir.

Bu durum maddeyi unutmak değildir. Araç ve bağlantı hazırlanmış olmalıdır.

### 6.2. 38–91 — Kimi becerileri ve uzman ajanlar

Bütün beceri ve ajan dizinlerini oluştur. Her birinin ayrı dosyası olsun. Boş isim dosyası üretip `tamam` sayma.

Her beceri/ajan dosyasında en az şunlar bulunmalı:

- görevi
- ne zaman çağrılacağı
- hangi araçları kullanabileceği
- hangi araçları kullanamayacağı
- canlı siteye yazma yetkisi olup olmadığı
- test zorunluluğu
- güvenlik sınırı
- K3 kota koruma kuralı

Bu aşamada model çağrısı yapma.

### 6.3. 92–444 — Araçlar, güvenlik, medya, veri, yedek, izleme

Bunlar mümkün olan en geniş kapsamda gerçekten kurulur veya hazır edilir.

Özellikle unutulmayacaklar:

- Git/Git LFS/gh
- Node/npm/pnpm/Corepack
- Python/pip/pipx/uv/venv
- terminal yardımcıları
- React/Vite/TypeScript/Tailwind/shadcn/Radix ve tasarım kütüphaneleri
- ESLint/Prettier/oxlint/Stylelint/Knip/Madge ve kalite araçları
- Playwright + Chromium + Firefox + WebKit
- Vitest/Jest/Testing Library
- Lighthouse/Pa11y/axe/k6/Autocannon/Artillery
- Semgrep/Gitleaks/Trivy/OWASP ZAP/OSV/Syft/Grype/Checkov/Hadolint/Bandit/pip-audit/detect-secrets/YARA
- ModSecurity/OWASP CRS/Lynis/AIDE
- auditd/AppArmor/unattended-upgrades/OpenSSH yardımcıları
- ClamAV/ImageMagick/libvips/ExifTool/mat2/NudeNet/OpenNSFW2/ONNX/OpenCV/ImageHash
- Tesseract/PaddleOCR/EasyOCR
- FFmpeg/ffprobe/PySceneDetect/faster-whisper/Whisper/Silero VAD/WebRTC VAD
- qpdf/Ghostscript/Poppler/LibreOffice/Pandoc/oletools/PDF araçları
- fastText/sentence-transformers/RapidFuzz/langdetect/pyahocorasick/RE2/Presidio/spaCy/Transformers
- PostgreSQL/pgvector/Redis/BullMQ
- MinIO hazırlığı
- restic/rclone/BorgBackup
- Sentry CLI/Uptime Kuma/Netdata/Glances/Prometheus/Grafana/Loki

4 GB RAM nedeniyle bütün ağır servisleri aynı anda çalıştırma. `kurulu ve hazır` ile `sürekli çalışan` kavramını karıştırma. Canlı AnaBeyin servisini tehlikeye atmamak için ağır izleme/depolama servislerini kurulmuş ve yapılandırması hazır halde tutup yalnız gerekliyse başlat.

### 6.4. 445–463 — GitHub ve otomatik denetim

GitHub CLI yetkilendirmesini doğrula. Depoyu erişilebilir tut. GitHub Actions ve kalite kapıları için şablonları hazırla; ancak canlı AnaBeyin projesine bu aşamada zorla yeni iş akışı uygulama. Site kodu Git deposuna alındığında ikinci büyük işte etkinleştir.

### 6.5. 464–521 — Gerçek AnaBeyin sitesi

Bunlar toplu paket kurulumunun sonunda **silinmeden ikinci aşamaya aktarılır.** Her biri `SONRA_SITE_GELISTIRME` olarak işaretlenir.

İkinci büyük işte kullanıcı her kategori için ayrıntılı `.md` dosyaları hazırlatacaktır. O geliştirme; görünen bütün sayfalarla birlikte gerçek arka uç, PostgreSQL veri tabanı, Redis/BullMQ, kullanıcı sistemi, medya, moderasyon, bildirim, ödeme, e-posta, SMS, görev motoru, ajan yetkileri ve diğer 464–521 maddelerini tek bütün olarak gerçekleştirecektir.

---

## 7. DIŞ SERVİSLER — ŞİMDİ MANUEL HESAP AÇMA

Aşağıdakiler bu ilk toplu araç kurulumunu engellemez:

- Google Maps / Google Places
- gerçek ödeme kuruluşu
- gerçek e-posta sağlayıcısı
- gerçek SMS sağlayıcısı
- dış Sentry hesabı
- uzak yedekleme sağlayıcısı

Google Maps/Places mevcut 521 listesinin zorunlu kurulabilir terminal aracı değildir. Harita özelliği ikinci büyük site geliştirmesinde gerekiyorsa sağlayıcı katmanı hazırlanır; kullanıcı o zaman Google Cloud anahtarını ekleyebilir. İstenirse MapLibre/OpenStreetMap tabanı sağlayıcıdan bağımsız hazırlanabilir.

Ödeme/e-posta/SMS için bağlantı katmanları ikinci büyük işte kodlanır; gerçek şirket anahtarları en son girilir.

---

## 8. KURULUM SIRASI

Kurucu aşağıdaki sırayı bozmasın:

1. Ön kontrol: root, disk, RAM, ağ, çalışan AnaBeyin servisleri.
2. Mevcut AnaBeyin ve servis ayarlarının tarihli yedeği.
3. Gizli anahtar dosyalarının güvenli kaydı ve izin kontrolü.
4. Temel sistem araçları.
5. Docker ve ayrı çalışma alanları.
6. Node/npm/pnpm ve ön yüz/test araçları.
7. Python sanal ortamı ve güvenlik/medya/metin araçları.
8. PostgreSQL/pgvector/Redis/BullMQ hazırlığı.
9. OpenCode/OpenCode Free/OmniRoute/Ollama/NVIDIA/OpenRouter/Hugging Face hazırlığı.
10. Tarayıcılar ve Playwright.
11. Güvenlik tarama araçları.
12. Medya/OCR/ses/video araçları.
13. Yedekleme ve izleme araçları.
14. Kimi beceri/ajan/MCP/Hook dosyaları; MODEL ÇAĞRISI YOK.
15. 1–521 durum eşleştirmesi.
16. İlk başarısızlar için otomatik yeniden deneme.
17. Kurulum doğrulaması.
18. Nihai rapor.

---

## 9. HATA DAVRANIŞI

- Bir paket bulunamadı diye tüm kurulumu sonlandırma.
- Başarısız maddeyi numarasıyla kaydet.
- Bağımsız sonraki maddelere devam et.
- En sonda en az 2 yeniden deneme turu yap.
- Aynı paket farklı güvenilir resmi kurulum yoluna sahipse ikinci yolu dene.
- Ubuntu 26.04 paket adı değişmişse uygun güncel paket adını bul.
- Mevcut canlı servisleri kaldırarak bağımlılık çözmeye çalışma.
- `apt autoremove` çalıştırma.
- Körlemesine `rm -rf` kullanma.
- `/var/www/anabeyin` altında temizlik yapma.
- Başarısız kurulumları saklama; raporda açıkça göster.

---

## 10. TAMAMLANDI SAYILMASI İÇİN

Toplu hazırlık ancak aşağıdakilerin hepsi gerçekleştiğinde tamamlandı sayılır:

1. Yedek dosyası gerçekten var.
2. `anabeyin-core` hâlâ çalışıyor.
3. `anabeyin-kimi-keeper` hâlâ çalışıyor.
4. Nginx hâlâ çalışıyor.
5. SSH erişimi korunuyor.
6. Kimi K3 model çağrısı yapılmamış.
7. 521 maddelik durum dosyasında 521 satır bulunuyor.
8. Hiçbir madde sessizce atlanmamış.
9. Kurulabilen araçların çalıştırılabilir dosyaları veya doğrulanabilir kurulumları mevcut.
10. Ağ dışına açılmaması gereken PostgreSQL/Redis/OmniRoute vb. yalnız yerel erişimde.
11. Kurulum raporunda disk/RAM durumu var.
12. Kurulum raporunda başarısız ve bekleyen maddeler ayrı yazıyor.
13. Sunucu otomatik yeniden başlatılmamış.
14. Canlı site bu aşamada yeniden yazılmamış.
15. `464–521` ikinci büyük site geliştirme listesinde eksiksiz korunmuş.

---

## 11. İKİNCİ BÜYÜK İŞ — ŞİMDİ BAŞLATMA

Bu toplu araç hazırlığı tamamlandıktan sonra hemen rastgele site kodlamaya başlama.

Kullanıcı daha sonra AnaBeyin'in her ana kategorisi için ayrıntılı, onlarca sayfalık `.md` şartnameleri oluşturacaktır. O dosyalar hazır olduktan sonra tek büyük geliştirme işi başlatılacaktır.

O ikinci işte:

- bütün görünür sayfalar,
- bütün kullanıcı akışları,
- gerçek arka uç,
- gerçek PostgreSQL veri tabanı,
- Redis/BullMQ,
- medya yükleme ve işleme,
- moderasyon,
- güvenlik,
- ödeme bağlantı katmanı,
- e-posta bağlantı katmanı,
- SMS bağlantı katmanı,
- yönetim,
- bildirim,
- ajan/görev sistemi,
- 464–521'in tamamı

tek uyumlu AnaBeyin sistemi olarak yapılacaktır.

Bu ilk kurulumun görevi yalnız **o dev geliştirme işinin bütün işçi ve araçlarını hazır bırakmaktır.**
