# AnaBeyin — Manuel Hazırlık Listesi

Bu dosya yalnız insan tarafından yapılması gereken hesap, onay ve gizli anahtar işlemlerini içerir.
Toplu kurulum henüz başlatılmayacaktır.
Gizli anahtarlar GitHub'a, sohbete veya kaynak koda yazılmayacaktır.

## A — ŞİMDİ HAZIRLANACAKLAR

### 1. NVIDIA NGC / NVIDIA NIM anahtarı — ZORUNLU

Amaç:
NVIDIA NIM ve NVIDIA ücretsiz model havuzuna erişmek.

Yapılacak:
1. NVIDIA NGC hesabına giriş yap veya ücretsiz hesap oluştur.
2. Account Settings / Setup bölümüne gir.
3. API Keys bölümünü aç.
4. Generate Personal Key seç.
5. Anahtar adı: `anabeyin-nim`
6. Services Included kısmında en az:
   - NGC Catalog
   - NVIDIA Public API Endpoints
   seç.
7. Personal Key oluştur.
8. Anahtarı güvenli bir parola yöneticisine veya yalnız sana açık bir yerde sakla.
9. Anahtarı ChatGPT'ye veya GitHub'a gönderme.
10. Toplu kurulum sırasında terminal sana gizli olarak soracak ve sunucudaki güvenli gizli yapılandırmaya kaydedilecek.

Not:
Legacy NGC API Key kullanma; Personal Key kullanılacak.

### 2. OpenRouter anahtarı — HAZIRLA

Amaç:
NVIDIA yoğun veya erişilemez olduğunda ikinci ücretsiz model havuzu.

Yapılacak:
1. OpenRouter hesabına giriş yap veya hesap oluştur.
2. API Keys bölümüne gir.
3. Yeni anahtar oluştur.
4. Anahtar adı: `anabeyin-free-router`
5. Anahtarı kopyala ve güvenli sakla.
6. Sohbete/GitHub'a gönderme.
7. Toplu kurulum sırasında terminale gizli olarak girilecek.

### 3. GitHub erişimi — HAZIR OLMALI

Ana envanter şu depoya kaydedildi:
`kemaltirli92-ai/anabeyin-ana-talimat`

Sunucuda daha sonra `gh auth login` çalıştırıldığında:
1. GitHub.com seç.
2. HTTPS seç.
3. Tarayıcı ile giriş seç.
4. Terminalin verdiği kodu GitHub sayfasına gir.
5. Yetkilendirmeyi onayla.

GitHub parolanı veya erişim anahtarını sohbete gönderme.

### 4. Cloudflare — HESABIN VARSA HAZIRLA

Amaç:
DNS ve daha sonra güvenlik/ters vekil bağlantılarının otomatik yönetilebilmesi.

Cloudflare kullanıyorsan:
1. Cloudflare hesabına giriş yap.
2. AnaBeyin alan adının hesabında göründüğünü kontrol et.
3. My Profile > API Tokens bölümüne gir.
4. Create Token seç.
5. AnaBeyin alan adı için gerekli en düşük DNS yetkisini veren özel bir token oluştur.
6. Token adı: `anabeyin-dns`
7. Tokenı güvenli sakla.
8. Sohbete/GitHub'a gönderme.

Cloudflare kullanmıyorsan bu madde şimdilik atlanır.

### 5. Hugging Face anahtarı — GEREKİRSE HAZIRLA

Amaç:
Ollama/NIM dışında indirilecek bazı açık veya erişimi sınırlı modeller için.

Şimdi şart değil.
Toplu model seçimi sırasında gerekli bir model Hugging Face erişimi isterse:
1. Hugging Face hesabı oluştur/giriş yap.
2. Access Tokens bölümünden yalnız okuma yetkili token oluştur.
3. Anahtar adı: `anabeyin-model-read`
4. Güvenli sakla.
5. Sohbete/GitHub'a gönderme.

## B — ŞİMDİ HİÇBİR HESAP BİLGİSİ GİRMEYECEĞİMİZ AMA SİSTEMİ HAZIR KURACAĞIMIZ ŞEYLER

Aşağıdaki sistemlerin kodu, veri tabanı tabloları, kullanıcı sayfaları, yönetim ekranları, hata akışları ve bağlantı noktaları AnaBeyin geliştirilirken tamamlanacak.

Ama gerçek sağlayıcı bilgilerini en son sen gireceksin.

### 6. Ödeme kuruluşu — SONRA

Şimdi hesap açmak zorunlu değil.

AnaBeyin'de şimdiden hazırlanacak:
- ödeme başlatma
- başarılı ödeme
- başarısız ödeme
- iptal
- iade
- işlem geçmişi
- sipariş bağlantısı
- ödeme bildirimleri
- tekrar ödeme koruması
- kullanıcı ödeme sayfası
- yönetim ödeme ekranı
- sağlayıcı ayar ekranı

En son senin gireceğin:
- seçilen ödeme kuruluşu
- mağaza/üye işyeri numarası
- API anahtarı
- gizli anahtar
- canlı ortam bilgileri
- şirket/banka bilgileri

### 7. E-posta sağlayıcısı — SONRA

AnaBeyin'de şimdiden hazırlanacak:
- hesap doğrulama e-postaları
- şifre yenileme
- güvenlik bildirimleri
- bildirim e-postaları
- e-posta şablonları
- kuyruk
- tekrar deneme
- hata kayıtları
- yönetim ayarları

En son senin gireceğin:
- e-posta sağlayıcısı
- SMTP veya API bilgileri
- gönderici adresi
- alan adı doğrulama kayıtları
- API anahtarı/gizli parola

### 8. SMS sağlayıcısı — SONRA

AnaBeyin'de şimdiden hazırlanacak:
- telefon doğrulama
- tek kullanımlık doğrulama kodu
- güvenlik SMS'i
- SMS şablonları
- kuyruk
- hata kayıtları
- yönetim ayarları

En son senin gireceğin:
- SMS şirketi
- kullanıcı/şirket hesabı
- API anahtarı
- gönderen başlığı
- şirket onay bilgileri

### 9. Uzak yedekleme hedefi — SONRA

Sunucuda restic/rclone ve yerel yedekleme kurulacak.

En son seçilecek:
- uzak depolama hesabı
- erişim anahtarı
- hedef klasör/depo
- yedek şifreleme parolası

### 10. Sentry veya dış hata izleme hesabı — SONRA

Sistem Sentry bağlanabilecek şekilde hazırlanacak.
Dış Sentry kullanılacaksa en son:
- proje oluştur
- DSN al
- sunucunun gizli ayarına gir

Dış hesap kullanılmayacaksa yerel kayıt sistemleri çalışmaya devam eder.

## C — MANUEL OLMAYACAK; TOPLU KURULUM YAPACAK

Bunlar için sen tek tek uğraşmayacaksın:

- Kimi Skills
- Kimi ajanları
- MCP'ler
- Hooks
- OmniRoute
- OpenCode Free
- Ollama
- PostgreSQL
- pgvector
- Redis
- BullMQ
- Docker
- Playwright ve tarayıcıları
- Semgrep
- Trivy
- Gitleaks
- OWASP araçları
- ClamAV
- NudeNet
- FFmpeg
- Whisper/faster-whisper
- OCR araçları
- görsel/video işleme araçları
- metin denetleme araçları
- CrowdSec
- UFW/nftables
- Nginx/HTTPS yardımcıları
- yedekleme araçları
- izleme araçları
- GitHub kalite kapıları
- diğer 521 envanter kaleminin kurulabilir parçaları

Bunların tamamı mevcut AnaBeyin sunucusunda toplu hazırlanacak.
İkinci sunucu kurulmayacak.

## D — SIRA

1. Bu manuel hesap/anahtar hazırlıkları.
2. Mevcut sunucunun salt-okunur envanter kontrolü.
3. 521 kalem içindeki kurulabilir araç ve servislerin toplu kurulması.
4. Hepsinin çalıştığının otomatik kontrolü.
5. Araçlar sunucuda hazır bekler.
6. En son AnaBeyin sitesinin bütün sayfaları ve özellikleri tek büyük geliştirme işiyle yapılır.
7. Ödeme/e-posta/SMS gibi gerçek sağlayıcı bilgileri son aşamada girilir.
8. Canlı test ve güvenlik denetimi yapılır.
