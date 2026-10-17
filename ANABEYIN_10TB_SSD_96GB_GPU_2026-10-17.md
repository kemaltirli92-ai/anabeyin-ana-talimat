# ANA BEYİN — 10 TB SSD, 96 GB UZAK GPU VE ÜCRETSİZ KAYNAK PLANI

**Tarih:** 17 Ekim 2026  
**Durum:** Hedef mimari; henüz satın alınmış/kurulmuş olduğu varsayılmaz.  
**Ana katalog:** [ÜCRETSİZ TÜM KAYNAKLAR](./UCRETSIZ_TUM_KAYNAKLAR.md) (V2.2, 319 kart)  
**Hızlı indeks:** [KAYNAKLAR_ICINDEKILER.md](./KAYNAKLAR_ICINDEKILER.md)

## Kalıcı kararlar
1. Mevcut Monster Abra A5 V15.6 Windows 11 (yaklaşık 16 GB RAM, 4 GB VRAM) üzerinde yazılım geliştirme, dosya saklama, Godot ve hafif AI işleri sürer; yeni kasa hemen alınmaz.
2. Hedef toplam 10 TB SSD **gelecekte başka bilgisayara taşınabilir** seçilir. Laptopun tüm kapasiteyi dahili yuvalarda desteklemesi henüz kanıtlanmamıştır. Disk model/tip/garanti seçimi satın almadan önce doğrulanır. Kritik projeler ayrı yedeklenir.
3. Gerektiğinde **RTX PRO 6000 Blackwell 96 GB VRAM GPU** saatlik kiralanabilir. Bu laptopa eklenmiş yerel ekran kartı değildir: ağır model ve CUDA işi uzakta çalışır. Bağlantı SSH/API/ComfyUI/vLLM gibi servislerle kurulur; modeller GPU makinesine de yüklenmelidir.
4. Hostinger'ın 32,18 TL/saat olarak görülen fiyatı **kesin hesap fiyatı değil başlangıç/önceki ekran bilgisi**. Gerçek CPU, sistem RAM'i, SSD, bölge, KDV ve saatlik ücreti satın almadan önce doğrula. Boştayken faturalandırılma ve silinen diskin kaybolması riskini hesaba kat.
5. **KVM1:** Ufak web/API/görev yönetimi ve mevcut Kimi K3 **uzak API bağlantısı** için; Kimi K3 modelinin tamamı KVM1'de çalışmıyor. Kimi K3 tam ağırlıkları tek 96 GB GPU'ya sığmaz. Bunun yerine Qwen/Devstral gibi uygun yerel modelleri GPU'da test et.
6. **Claude Pro:** Ücretli, sınırlı kullanım; yerel Claude Code ajanını yönetebilir. Ücretsiz kaynağa dönüştürme. OpenCode + açık ağırlık LLM + ücretsiz API kotaları alternatif. Harici API'ler kullanım/kota/lisans sınırına sahip olabilir.
7. **Ana Beyin:** Tek komuttan başlayan görevler modül modül kod, test, kayıt, düzeltme ve insan kontrolüyle tamamlanır. Kusursuz tek deneme veya sınırsız geliştirme garanti edilmez. Daha önceki topluca ajanlara bırakma başarısızlığını tekrarlama.
8. **Parantez Türkiye:** Senaryo → doğrulama → görsel → LTX/Wan AI video → Türkçe TTS → müzik (lisans) → altyazı → FFmpeg 1080p/4K denemesi → onay → platform resmî API. 10 dakikalık 4K belgesel uzun üretim süresi, kurgu ve insan kalite kontrolü ister.
9. **Godot oyunları:** Tek kişilik oyunlar oyuncunun cihazında çalışır, mağazalar dağıtır, aylık kendi oyun sunucusu zorunlu değildir. Google Play geliştirici hesabı bir defalık 25 USD, Apple Developer Program yıllık 99 USD (değişebilir); mağaza ücretleri ücretsiz araç sayılmaz. iOS son derleme/imzalama için macOS/Xcode gerekir.
10. **Önceki projeler:** Türkiye VIP Transfer yazılımında Kimi odaklı geliştirme kararı; TATTARIM, EKO HOCA, AIBorsam ve sosyal içerik operasyonları ayrı testli modüllerdir. Canlı BIST verisi lisanslı olabilir; yetkisiz veri yeniden dağıtılmaz.

## Gelir önceliği
- **Önce doğrudan ücretli hizmet:** İşletmelere kısa video, ilan videosu, tanıtım, web sitesi, QR menü, fiyat teklifi ve otomasyon.
- **Sonra tekrar eden abonelik:** TATTARIM muhasebe/yevmiye, işletme CRM, medya otomasyon platformu.
- **Uzun vadeli ve riski yüksek:** Parantez Türkiye reklam/sponsor geliri, Türkiye VIP Transfer komisyonları, Godot oyun reklamları, Ana Beyin ticari platformu. Satış garantisi yoktur.
- İşi satmadan her gün ücretli GPU açma; ilk gerçek örnekleri laptopta yap ve kiralık GPU'da küçük süreli maliyet/kalite testi ile doğrula.

## Dış ücretli altyapı — ücretsiz kaynak listesine ekleme
- Hostinger GPU kiralama: https://www.hostinger.com/tr/gpu-hosting
- Claude Pro: https://claude.ai/pricing
- Google Play Console: https://play.google.com/console/about/
- Apple Developer Program: https://developer.apple.com/programs/

## Sınıflandırma ve araştırma şartı
Ücretsiz **yazılım**, lisanslı **açık model ağırlığı**, **kotalı API**, **ücretsiz stok varlık** ve **ücretli altyapı** farklıdır. Her işte güncel resmî URL, model lisansı/ticari kullanım, SSD dosya boyutu, CPU RAM, VRAM, veri izinleri ve gerçek fatura karşılaştırılır. Bilinmeyen bilgiyi uydurma. **Bu katalog araştırmayı bitirmez; yeni ücretsiz alternatifleri bulmaya devam et.**
