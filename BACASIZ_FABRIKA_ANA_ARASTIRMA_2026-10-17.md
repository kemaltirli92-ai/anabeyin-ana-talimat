# ANA BEYİN — BACASIZ FABRİKA / TAM ARAŞTIRMA VE YEREL KURULUM PLANI

**Tarih:** 17 Ekim 2026  
**Envanter:** [ÜCRETSİZ TÜM KAYNAKLAR.md](./UCRETSIZ_TUM_KAYNAKLAR.md) — sürüm 3.0, **425** toplam kayıt (önce 319, yeni 106).  
**Arama:** [KAYNAKLAR_ICINDEKILER.md](./KAYNAKLAR_ICINDEKILER.md) ve [KAYNAKLAR_HIZLI_INDEKS.json](./KAYNAKLAR_HIZLI_INDEKS.json).  
**Hedef:** Mevcut Monster Abra A5 V15.6/Windows11/16 GB RAM/4GB GPU + ileride taşınabilir toplam 10TB SSD + kiralanan RTX PRO 6000 Blackwell 96GB GPU + KVM1 hafif kontrol + gerektiğinde sınırlı Claude Pro/Kimi API; tek komuttan çok modüllü, denetlenebilir işletme.

> **DURUM:** Bu bir araştırma ve mimari plandır. SSD satın alınmadı, 96GB GPU kiralanmadı, listedeki programların kurulduğu veya beraber çalıştığı doğrulanmadı. Kurulum onaylı testlerden sonra yapılır. 'Kusursuz, anında, sınırsız tüm görevler' vaadi gerçekçi değildir. Daima güvenlik, kaynak, ücret ve kalite sınırlarına uy.

## 1. Hangi makine ne yapacak?

| Katman | Donanım | İş | Sürekli açık mı? |
|---|---|---|---|
| Yerel kontrol | Monster Windows 11 + WSL2; 16GB RAM; 4GB VRAM | Ses dinleme tetikleyicisi, komut anlama, küçük LLM, Godot, web kodu, küçük veri tabanı, montaj ve görev paneli | Laptop açıkken |
| Yerel arşiv | İleride toplam 10TB taşınabilir SSD kapasitesi | Git, model arşivi, video/görsel, yedek, müşteri işleri | Erişilmesi için bağlı olmalı |
| KVM1 | Küçük mevcut VPS | Alan adı, hafif webhook, bildirim, küçük API/görev köprüsü, mevcut Kimi uzak API bağlantısı | Pakete bağlı |
| Kiralık GPU | RTX PRO 6000 96GB VRAM | LTX-2.5/Wan/ComfyUI, büyük Qwen kod modeli, yoğun TTS | **Yalnızca GPU kiralandığında** |
| Dış kaynak | Claude Pro, Kimi API, Perplexity web/Research, sosyal platform API | Planlama, dış araştırma, platform yayınları | Kota/ücret/izinler dahilinde |

**Kritik ayrım:** 10TB SSD tek parça 10TB çalışma belleği değildir. Laptopa depolanmış model GPU sunucusunda çalışmak için **orada da** indirilir veya güvenli ağdan kopyalanır; SSD harici kutu bağlantı hızları büyük modeli göndermede darboğaz olabilir. Uzak GPU diskinde veri silinirse yeniden kurulum/kopyalama saati ücretlidir. Sistem RAM'i ve GPU VRAM'i farklıdır. Hostinger 32,18 TL/saat önce görülen *başlangıç örneğidir*, kesin son fiyat değildir.

## 2. Araştırmayı sağlıklı yapmanın bilimsel/mühendislik yöntemi

**'Tüm ücretsiz araçları indir' yanlış strateji.** 1 araç = ürün/dosya, 1 model = ağırlık, 1 servis = API, 1 iş akışı = birleştirilmiş parçalar. Bunları ayır. 10TB ileride lazım olabilir ama onaylanmamış araçlarla doldurmak israf.

1. **İş tanımla:** '4K belgesel', '10 animasyonlu işletme sitesi', '40 hesap yayın', 'Türkçe yerel sesli komut' gibi ölçülebilir çıktı ve kalite eşiği. Aynı işi yapan 15 aracı kurma.
2. **Aday keşfi:** GitHub aktif projeler, Hugging Face modelleri, Papers With Code ve üretici belgeleri; Perplexity Free (günde **3 Pro Search, ayda 1 Research**, 2026-10-17 resmî yardım verisi), Google normal arama; Awesome-Selfhosted sadece kaynak bulma için. Perplexity Free API otomasyonunun sınırsız ücretsiz olduğu varsayılmaz.
3. **Resmî kaynak kanıtı:** Doğru geliştirici, resmi repo, README, LICENSE/model lisansı, releases, son güvenlik güncellemesi, işletim sistemi/GPU uyumu, ticari kısıt. Yalnız GitHub yıldızı yeterli değildir.
4. **Donanım maliyet ölçümü:** İndirme GB, *gerçek* kurulu GB, pik RAM/VRAM, örnek GPU saati, çıktı süresi, toplam maliyet, ağdan aktarılan GB ve tekrar kurulum süresi. Bunlar **uygulamayla ölçülmedikçe tahmini** olmalı.
5. **Güvenlik:** Virustotal imzası/hash, indirilen resmi yayıncı, paket bağımlılıkları, container izinleri, kamera/mikrofon yetkisi, gizli API anahtarlarının kasada tutulması, açık porta parola olmadan servis çıkarmama.
6. **Kurulum kapısı:** Tek araç sandbox/WSL ortamında kur, minik smoke test çalıştır, örnek çıktı oluştur, log al, geri kaldırma prosedürünü yaz; testi geçerse 'kurulu-test edildi' etiketi ver.
7. **A/B değerlendirmesi:** Aynı 3 örnekle kalite, hız, GPU maliyeti ve kararlılık kıyasla. İş için en iyisini birincil, ikincisini yedek seç. Diğerlerini kaynak listesinde sakla.
8. **Haftalık tarama:** Yalnız yeni yayın/sürüm/lisans değişikliği, GitHub arşiv/eol, yeni model, API fiyatı veya güvenlik açığı değişmişse işaretle. Otomatik güncelleme yerine testli PR/onay.
9. **Kalıcı fiş:** Her araç için ID, sürüm, URL, lisans, SHA/checksum, indirme boyutu, kurulu yer, çalıştı mı, CPU RAM, GPU VRAM, model uyumu, API sınırı, kaynak atfı, bağlantılı projeler, gelir kullanım durumu, sonraki kontrol tarihi.
10. **Tekrara engel:** Önce [JSON indeks](./KAYNAKLAR_HIZLI_INDEKS.json) eş isim/alias kontrolü, sonra yeni K-ID. Fiyat/kota zamanla değişiyorsa tarih etiketi.

**Önerilen kaynak fişi (YAML örneği):**

```yaml
id: K000
name: ornek_arac
status: discovered     # discovered/verified/tested/installed/rejected
source: https://resmi-proje-url
license_code: verify
license_weights: separate
cost: self-host-software-free / free-tier / paid
windows_wsl: verify
placement: laptop / gpu / kvm1 / browser
artifact_size_gb: unknown
peak_ram_gb: unknown
peak_vram_gb: unknown
sample_test: path-to-report
purpose: what-business-output
last_verified: 2026-10-17
```

**Perplexity Free için kopyalanabilir araştırma talimatı:**

> Windows 11 + WSL2 (16GB RAM/4GB GPU), gelecekte 10TB SSD arşivi ve gerektiğinde 96GB NVIDIA GPU kiralaması için [kategori] alanındaki 2026 güncel ücretsiz/açık kaynak araçları resmi GitHub/Hugging Face bağlantılarıyla araştır. Son aktif sürüm tarihi, tam lisans ve ticari kullanım, model dosyası/SSD boyutu, RAM/VRAM, NVIDIA CUDA gereksinimi, Windows veya Linux kurulumu, yerel API/CLI, örnek çıktı, ücretsiz kota/ücret, kullanımdan kalkmış proje riski ve iki alternatifini tablo halinde yaz. Eski listemizdeki aynı adları tekrar etme; doğrulanmayan bilgiler için 'belirsiz' yaz. Beni başka resmi kaynaklara yönlendir.

Perplexity web yanıtını otomatik doğru sayma; resmi kaynakta ikinci kontrol yap. Resmî kaynaklar: https://www.perplexity.ai/help-center/en/articles/11187416-which-perplexity-subscription-plan-is-right-for-you ; https://github.com/awesome-selfhosted/awesome-selfhosted ; https://huggingface.co/models ; https://github.com/topics/open-source.

## 3. Bütün sektörlerin araç haritası — seçilmiş temel çekirdek

**Durum anahtarı:** **L**=Laptopta temel kurulum; **G**=yalnız GPU kiralanınca kur/çalıştır; **S**=sunucu veya Docker hizmeti, başlangıçta yerel test; **A**=API/bulut; **R**=referans/arşiv, hemen kurma. Aynı görev için listedeki alternatiflerin hepsini kurma. 319 önceki + 106 yeni ayrıntılı kart ana envanterde vardır.

| Sektör | Öncelikli araçlar ve kurulum katmanı | Örnek çıktı |
|---|---|---|
| İşletim sistemi/geliştirme | **L:** Windows 11, WSL2, Git, VSCodium, Python, Node.js, uv, pnpm, Docker Engine, PowerShell | Test edilebilir tekrar kurulabilir proje |
| Yönetici/kod ajanı | **L:** OpenCode, Aider, Claude Code (Pro ücretli); **A:** mevcut Kimi K3 API; **G:** Qwen Coder | Ana Beyin / VIP sitelerinin modül modül kod ve testleri |
| Yerel dil modelleri | **L:** Ollama, llama.cpp, Qwen küçük GGUF; **G:** Qwen3-Coder-Next, Qwen3.5 35B, GPT-OSS 120B; **A:** ücretsiz API kotaları | Senaryo, kod, özet, sınıflandırma |
| Ajan orkestrasyon | **L/S:** LangGraph, LiteLLM, Celery, BullMQ, Activepieces, Prefect; **R:** Airflow, Dagster, Temporal | Sesli komut → iş kuyruğu → hata/düzeltme → rapor |
| Bilgi bankası RAG | **L/S:** Docling, Ollama embedding, Qdrant, FAISS, Meilisearch; **R:** Milvus/RAGFlow | Yerel proje ve müşteri evrakında kaynaklı arama |
| Araştırma/haber | **L/S:** FreshRSS/Miniflux, RSSHub, changedetection.io, trafilatura, ArchiveBox; **A:** Perplexity Free, resmi RSS | Tekrarsız kaynaklı haber tespit ve doğrulama |
| Sesli komut | **L:** openWakeWord, faster-whisper/whisper.cpp, Piper Türkçe; **S:** Wyoming; **R:** Vosk/sherpa-onnx | 'Ana Beyin yeni site hazırla' ses tetikleyicisi |
| Görsel/grafik | **L:** GIMP, Krita, Inkscape, rembg; **G:** ComfyUI, Qwen-Image, FLUX Schnell, SDXL, Fooocus | İlan, marka, thumbnail, orijinal sahne |
| AI video | **G:** LTX-2.5, Wan2.2, ComfyUI, WanGP; **L:** Kdenlive, FFmpeg, MoviePy, PySceneDetect | Sahne + ses + 1080p/4K çıktı (testli) |
| Montaj/altyazı | **L:** FFmpeg, HandBrake, LosslessCut, Subtitle Edit, faster-whisper, RIFE (GPU) | YouTube Shorts, belgesel, reklam ve altyazı |
| Ses/müzik | **L:** Piper, Audacity, MuseScore, LMMS; **G:** Chatterbox, ACE-Step 1.5, CosyVoice | Lisanslı Türkçe anlatıcı ve özgün müzik |
| Hareketli web | **L:** React, Next.js, Vite, TypeScript, Tailwind, shadcn/ui, Motion, GSAP, Lottie | Premium animasyonlu site, responsive panel |
| CMS/çoklu site | **L/S:** Astro, WordPress, Payload, Ghost, Hugo, Caddy, Nginx | Yönetim panelli ve özgün içerikli siteler |
| Veritabanı/kimlik | **L/S:** PostgreSQL, SQLite, PocketBase, Keycloak, Redis/Valkey, FastAPI | Müşteri/görev/proje/izin verisi |
| Web test | **L:** Playwright, Vitest, ESLint, axe-core, Lighthouse, BackstopJS, OWASP ZAP | Site açılışı, mobil responsive, güvenlik ve görsel test |
| Site analitik/SEO | **L/S:** Matomo, Umami, OpenTelemetry, Uptime Kuma, Search Console/API | 10+ sitenin hata ve dönüşüm takibi |
| Yayın otomasyonu | **S:** Postiz self-host (AGPL), Activepieces, n8n community (fair-code), **A:** resmi TikTok/Meta/YouTube/X API | İzinli hesaplara taslak, plan ve yayın |
| Godot oyun | **L:** Godot, GDevelop, Tiled, Pixelorama, LibreSprite, Blender; **G:** gereken AI görsel üretimi | 2D mobil/PC oyun, Android export |
| 3D/CAD | **L:** Blender, FreeCAD, OpenSCAD, Three.js, MapLibre | Ürün 3D, mağaza görselleştirme, harita |
| Muhasebe/ERP | **S:** ERPNext, Dolibarr, Odoo Community, InvenTree; **L:** GnuCash, Actual | TATTARIM, mağaza, avans, yevmiye, stok |
| CRM/satış | **S:** Twenty, SuiteCRM, Chatwoot, Cal.com, Easy!Appointments | Rezervasyon, müşteri takibi, satış hunisi |
| Belge/PDF | **L/S:** Paperless-ngx, OCRmyPDF, Docling, Stirling-PDF, Gotenberg | Fatura okuma, OCR, teklif ve arşiv |
| Büyük veri/BI | **L/S:** DuckDB, pandas, NumPy, scikit-learn, Metabase, Superset | Satış, reklam, finans, üretim raporları |
| Harita/rota | **L:** QGIS, Leaflet, MapLibre; **S:** OSRM, Valhalla, Traccar | VIP rota, seyahat, lokasyon analizi |
| Müşteri destek | **S:** Zammad, Chatwoot, Typebot, Listmonk, Mautic | Çağrı/talep kaydı ve izinli bülten |
| Güvenlik/backup | **L:** restic, Kopia, rclone, Syncthing, VeraCrypt, age; **S:** Vaultwarden, CrowdSec | Önemli projeler, API anahtarları ve veri yedeği |
| Proje yönetimi | **L/S:** Forgejo/GitHub, OpenProject, Memos, GitHub Actions | Kaybolmayan işler, sürüm/test/teslim izleri |

### Son kaynak taramasındaki önemli kırmızı bayraklar
- **Flowise** resmi bakımını bitirip Ağustos 2026'da arşivlendi. Envanterde tarihsel alternatif kalabilir ama yeni güvenlik kritik sistemin temeli olmasın. https://github.com/FlowiseAI/Flowise/discussions/6727
- **Postiz** self-host kodu AGPL-3.0; cloud deneme sonrası ücretli. Self-host gerekli geliştirici uygulamaları ve API izinlerini otomatik vermez. https://github.com/gitroomhq/postiz-app ; https://postiz.com/
- **Activepieces** MIT çekirdek, enterprise özellikleri lisanslı. https://github.com/activepieces/activepieces/blob/main/docs/about/license.mdx
- **Open WebUI** yeni sürümlerde özel marka kullanım şartlı lisans; tamamen klasik MIT sanma. https://github.com/open-webui/open-webui/blob/main/LICENSE
- **LTX-2.5** 32GB+ VRAM asgari, 80GB sınıfı ve 64GB+ sistem RAM önerisi, 200GB+ SSD çalışma alanı; community model lisansı. https://docs.ltx.io/open-source-model/getting-started/system-requirements/ ; https://github.com/Lightricks/LTX-2/blob/main/LICENSE-2_x
- **Kimi K3** KVM1'de yalnız uzak API/istemci olarak kullanılır; tam model küçük VPS'de çalışmaz. Kimi API kotası ve şartları kontrol edilir.

## 4. Sesli komuttan gerçek eyleme — iş akışı

```text
Mikrofon
  → openWakeWord (uyanma kelimesi)
  → faster-whisper / whisper.cpp (Türkçe konuşmayı yazıya)
  → niyet/rol çözümü (Ollama küçük model veya Claude/Kimi)
  → kimlik ve izin denetimi (yönetici kimlik doğrulama)
  → LangGraph kontrol + Celery/BullMQ görev kuyruğu
  → iş türü yönlendirme:
      SITE    → Next.js/Astro/Payload → test (Playwright/Lighthouse) → önizleme → yetkili yayın
      VIDEO   → LTX/Wan (GPU) → TTS → FFmpeg → ffprobe → kalite/etiket → yayın taslağı
      HABER   → resmî RSS → 2 bağımsız kaynaktan teyit → olgu kontrol → gerçek foto/lisans
      OYUN    → Godot → otomatik test/Android derleme → insan QA → mağaza
      TATTARIM→ ERP/özel modül → tutar/kayıt çift kontrolü → veritabanı
  → sonuç kaydı, dosya, kaynak, maliyet, log ve bildirim
```

**Uyandırma kelimesi tek başına yetki değildir.** Bilgisayara uzaktan erişen veya çevreden yüksek sesle komut veren biri yanlış işlem başlatamasın diye kullanıcı oturumu ve kritik işlemler için ikinci doğrulama gerekir. 'Yeni 10 site hazırla' komutu hemen **iş kuyruğuna eklenir**; 10 site kusursuz/anında bitmez. Laptop kapalıysa yerel mikrofon komut dinleyemez; KVM1'in açık olması laptopun yerel görevlerini çalıştırmaz.

### Sesli komut örnekleri
- **'Ana Beyin, Parantez Türkiye için İstanbul'un fethini anlatan 12 dakikalık belgesel üret.'** Özgün kaynak araştırma, bölüm planı, AI video kısa sahneler, anlatıcı, ses/müzik, montaj, kalite ve MP4 teslim.
- **'Ana Beyin, Akhisar emlak şirketi için animasyonlu 10 sayfalı internet sitesi geliştir.'** Müşteri brief'i, wireframe, Next.js/Astro/CMS, responsive, form/rol panelleri, test ve önizleme. Yeni üretim sitesine geçiş ve alan adı/DNS değişikliği için tanımlanmış yetki gerekir.
- **'Ana Beyin, 40 hesabın haftalık özgün içerik planlarını oluştur.'** 40 farklı hesap için içerik türü/kimlikleri, lisans, hesap yetkileri, tekrar engeli, API kota/plan, pilot kanallardan sonra kademeli genişleme.
- **'Ana Beyin, Çanakkale Savaşı mobil oyununu yap.'** Godot proje iskeleti, ilk oynanabilir seviye, orijinal varlıklar, test, sonra yeni bölümler. Tek komutta 100 bölümün hatasız hazır olması garanti değildir.

## 5. Haber ajanı ve 40 sosyal medya kanalı — doğru otomasyon

### Kaynak zinciri
1. Resmî kurum duyurusu, doğrulanabilir haber ajansı veya izinli RSS/feed yeni ID ile gelir.
2. Dedup: URL canonical, başlık hash, kaynak zaman damgası; eski habere tekrar GPU/LLM çağırma.
3. Kamuya açık siyasi ziyaret, afet, sağlık, ekonomi gibi **yüksek etkili haberlerde** en az iki güvenilir bağımsız kaynak veya doğrulanmış birincil belge denetimi ve tarih/konum doğrulaması. Çelişkili olayda otomatik yayın **durur**.
4. Haberin görseli için lisanslı gerçek fotoğraf kullan; bir siyasetçinin hiç yaşanmamış olayına 'gerçek fotoğraf' gibi AI görsel üretme. AI illüstrasyon kullanılacaksa belirgin **temsili/AI üretimi** etiketi ekle. Alıntı ve açıklamalar için doğrulanmış metin kullan.
5. Görsel/başlık/ses/altyazı metnini üret, kaynak linklerini ve kullanım haklarını kaydet; hassas haberlerde önizleme/onay kuyruğuna koy. Kullanıcının önceden onayladığı **düşük riskli** formatlarda kurallı otomatik yayın tercih edilebilir.
6. Postiz veya resmi API üzerinden yalnız yetkili hesaplara platforma uygun gönderi; başarısızsa kayıt/tekrar, aynı içeriği körlemesine onlarca kez atma.

**Asıl risk:** 40 kanal açmak teknik olarak mümkün olabilir, **40 kanalın özgün, sürdürülebilir, gelir sağlayan içerikle doldurulması farklı iştir**. Aynı haberin 40 hesapta kopyası hem izleyiciye düşük değer sunar hem platform kısıtları/para kazanma kurallarına takılabilir. Önce 2 kanal / 1 site / 1 kategori pilot. TikTok unreviewed Direct Post istemcileri özel görünürlüğe düşer; API audit gerekir: https://developers.tiktok.com/docs/en/content-posting-api-reference-direct-post . YouTube upload API OAuth ve kota kullanır: https://developers.google.com/youtube/data/reference/rest/v3/videos/insert . X API tüketim bazlı ücretlendirmeye geçmiştir: https://developer.x.com/ . Platformların OAuth hesap onayları ve yazılı izinleri zorunlu olabilir.

## 6. 100+ alt sayfa ve web otomasyon sınırları

- Müşteriye değer veren gerçek ürün/stok/bölge/rezervasyon verileriyle sayfalar üretilebilir. **Aynı metni şehir adı değiştirip yüzlerce kez çoğaltmak**, Google'ın doorway abuse / scaled content abuse kurallarına girebilir. https://developers.google.com/search/docs/essentials/spam-policies
- Her site: tasarım sistemi, sayfa hız testi, SEO metadata, erişilebilirlik, güvenlik, rol bazlı yönetim paneli, backup ve 'dev/staging/prod' ayrımı.
- Hiçbir üretim sistemi canlı sitedeki veritabanını otomatik silmemeli, fatura veya ödeme başlatmamalı, alan adını taşımamalı. Önizleme ve geri alma zorunlu.
- Animasyon var diye iyi site sayılmaz: mobil performans, müşteri hedefi, erişilebilirlik ve organik fayda ölçülür.

## 7. GPU kiralama ve bütçe disiplini

- GPU işçi açılışı → Docker/Conda image → modeli GPU sunucusuna indirme veya SSD'den güvenli aktarma → kısa deneme → toplu video/model üretimi → sonuçları laptop ve yedeğe aktar → örneği sil → fatura raporu.
- GPU kapalıyken ağır LTX/Wan video üretimi ve 96GB GPU'daki LLM durur. **Kiralama ihtiyacı yoksa GPU sürekli ücret yakmamalı.** Başka sağlayıcıda kalıcı disk teklifi daha ucuz olabilir; Hostinger fiyatı tek başına karşılaştırma için yeterli değildir.
- CPU RAM, SSD kapasitesi, data transferi, CUDA/sürücü, makine imajı, kota, bölge, asgari faturalama ve KDV ayrı doğrulanmadan kiralama yapılmaz.
- 10TB SSD'nin tamamını ayrı bir konumda yedeklemek masraflı olabilir. Vazgeçilmez kod/müşteri/hesap/yetki dosyaları **3-2-1 kuralına benzer** şekilde en az iki ayrı konuma, şifreli ve geri yükleme testli saklanır; model dosyaları gerekirse resmi indirmeden yeniden elde edilir.
- 40 sosyal kanal/100 sayfa/oyun üretim kapasitesini **GPU VRAM değil; haklar, API kotaları, insan kontrolü, sunucu trafiği, görev motoru ve satış** da sınırlar.

## 8. SSD 10 TB — mantıklı klasör ve kullanım şeması

```text
ANA_BEYIN_ROOT/
  00_ENVANTER/            # md, json, lisans, sürüm, hash
  01_MODELLER_ARSIV/      # GGUF, safetensors; indirilebilir ağırlıklar
  02_PROJELER/            # Ana Beyin, VIP, TATTARIM, AIBorsam, Godot
  03_MEDYA_HAM/           # video, ses, görüntü giriş
  04_MEDYA_CIKTI/         # mp4, 4k, thumbnail, subtitles
  05_VERITABANLARI/       # yerel test DB; prod ayrıdır
  06_YAYIN_TASLAK/        # onaylı/yayınlanmış ayrımı
  07_GOREV_LOG/           # job id, maliyet, hata, kaynak, hash
  08_YEDEKLEME/          # aynı diskteki klasör fiziksel yedek değildir
  09_KURULUM_PAKETLERI/  # kilitli sürüm, container recipe, checksum
  10_MUSTERI_PROJELERI/  # müşteri ayrı erişim izinleri
```

**Önemli:** Yukarıdaki tek 'ANA_BEYIN_ROOT' sanal bir kök; fiziksel olarak birden çok SSD kullanılabilir. Başlangıçta Storage Spaces ile disksiz yedeksiz tek havuz yapma. GPU işçisinin /models ve /output klasörü farklı sunucudadır.

## 9. Ölçülebilir başlangıç planı ve başarı testleri

| Evre | Süre tahmini | Yapılacak iş | Geçme kriteri |
|---|---|---|---|
| 0: Satın almadan önce | 1–3 gün | Laptop gerçek SSD yuvaları, 10TB taşınabilir disk düzeni, 96GB GPU ödeme ekranı, kesin RAM/SSD/vergi | Yanlış ürün satın alınmaması |
| 1: Çekirdek kurulum | 1–2 hafta | WSL2, Git, Python, OpenCode, Ollama küçük model, Whisper, Piper, openWakeWord, log ve görev kaydı | Türkçe sesli komut dosyaya gerçek görev yazar, bir Python/Godot testi çalışır |
| 2: İlk çalışan üretim | 2–4 hafta | 1 web site staging + 1 API + 1 Godot oynanabilir seviye + 1 FFmpeg video + bir haber taslağı | Her işte dosya, otomatik test, bütçe, lisans kaydı |
| 3: GPU pilotu | 1–2 hafta | RTX PRO 6000 gerçek maliyet, LTX kısa klip, büyük Qwen kod işi, dosya geri aktarımı | GPU durdurma/silme sonrası veri güvenli, ölçülen maliyet |
| 4: Para kazandıran küçük ölçek | 1–3 ay | 1–2 ücretli müşteri, 2 medya kanalı, 1 üretim sitesi, teklif ve fatura iş akışı | Gerçek teslimat, ücret tahsilatı, müşteri memnuniyeti |
| 5: Genişleme | Talebe bağlı | 40 kanal ve yeni siteler ancak içerik, gelir, API/onay ve operasyon testini geçtikçe | Tekrar oranı, hizmet süresi, hata, net kârlılık raporu |

Süreler garantili teslim tarihleri değil, ilk planlama aralıklarıdır; mevcut laptopun 16GB RAM sınırı büyük Docker setlerini eşzamanlı çalıştırmayı engelleyebilir. İlk aşamada yalnız çekirdek araçları kur ve diğerlerini ZIP/repo/manifest olarak katalogla.

## 10. Onay düzeyleri

| Görev | Varsayılan karar |
|---|---|
| Yerel taslak, kod üretme, test, özgün sahne, video | Otomatik; izolasyon ve kaynak sınırı ile |
| Müşterinin onayladığı düşük riskli planlı gönderi | Önceden tanımlı hesap/format/limitlerle otomatik olabilir |
| Siyaset/afet/kriz/sağlık gibi son dakika haberi | Kaynak ve güven denetimi; şüphede beklet, insan onayı |
| Para transferi, üyelik satın alma, reklam bütçesi | Açık onay olmadan uygulanmaz |
| Dosya silme, prod veritabanı değişikliği, kritik site deploy | Yedek, geri alma ve özel onay |
| Farklı kişi adına içerik, yüz/ses taklidi | Açık hak ve izin denetimi; aldatıcı medya reddedilir |

## 11. Gelir odağı

1. **En erken para:** işletmeler için reels, ilan videoları, çok dilli tanıtım, QR menü, randevu/form, web sitesi ve bakım. GPU olmadan örnek yapılabilir.
2. **Düzenli abonelik:** TATTARIM avans/işçi/teslimat takibi, küçük esnaf CRM, müşteri destek botu, onaylı içerik planı.
3. **Orta vadeli:** Türkiye VIP Transfer rezervasyon/şoför ağı (belgeler/işletme ortakları), Parantez Türkiye özgün belgesel ve sponsor, Godot uygulama/oyun.
4. **Büyük hedef:** Ana Beyin'in tekrarlanabilir, lisans ve güvenliği doğrulanmış modüllerinin ticari sürümü. 40 kanal ve 100 sayfa başlı başına ciro değildir.

## 12. İlk kurmamız gereken 20 araç (tamamı bir anda değil)

| Sıra | Araç | Kurulum amacı |
|---|---|---|
| 1 | Git | Geri alma ve proje sürümü |
| 2 | VSCodium | Editör |
| 3 | Python | İşçi kodu |
| 4 | WSL2 Ubuntu | Linux araçlarını çalıştırma |
| 5 | uv | Python kurulumlarını sürümleme |
| 6 | Node.js | Web ve ajan işleri |
| 7 | OpenCode | Ücretsiz/yerel sağlayıcılarla kod görevi |
| 8 | Ollama | Küçük yerel model (16GB RAM'e uygun) |
| 9 | SQLite | İlk görev/veri tabanı |
| 10 | FFmpeg | Medya montajı |
| 11 | faster-whisper / whisper.cpp | Türkçe konuşma tanıma |
| 12 | Piper Türkçe | Sesli yanıt |
| 13 | openWakeWord | Uyanma kelimesi |
| 14 | Godot | İlk oynanabilir oyun |
| 15 | GIMP | Görsel ve reklam |
| 16 | Kdenlive | Görsel kurgu |
| 17 | Playwright | Site testleri |
| 18 | FastAPI | Yerel görev API'si |
| 19 | restic | Yedekleme |
| 20 | Activepieces core veya tek görev kuyruğu | Çoklu iş akışı (16GB RAM'i ölç) |

**Daha sonra:** PostgreSQL, Postiz, Keycloak, CMS, ERP, büyük RAG ve GPU işleri test ederek etap etap. Bunları ilk gün hepsini açarsak 16GB RAM limitine çarparız.

## 13. Resmî kaynak notları / dayanaklar
- Perplexity Free kotaları: https://www.perplexity.ai/help-center/en/articles/11187416-which-perplexity-subscription-plan-is-right-for-you
- Postiz self-host: https://github.com/gitroomhq/postiz-app ve fiyat/hosting ayrımı https://postiz.com/
- TikTok Content Posting API audit: https://developers.tiktok.com/docs/en/content-posting-api-reference-direct-post
- YouTube resmi upload: https://developers.google.com/youtube/data/reference/rest/v3/videos/insert
- X API consumption-based: https://developer.x.com/
- Google doorway/scaled-content spam: https://developers.google.com/search/docs/essentials/spam-policies
- Yerel Home Assistant voice: https://www.home-assistant.io/integrations/wyoming/
- LTX-2.5 GPU gereksinimi: https://docs.ltx.io/open-source-model/getting-started/system-requirements/
- LTX-2.x lisans: https://github.com/Lightricks/LTX-2/blob/main/LICENSE-2_x
- Activepieces MIT çekirdek: https://github.com/activepieces/activepieces/blob/main/docs/about/license.mdx
- Flowise arşiv/EOL: https://github.com/FlowiseAI/Flowise/discussions/6727
- Open WebUI güncel lisans: https://github.com/open-webui/open-webui/blob/main/LICENSE
- WordPress içerik oluşturma API: https://developer.wordpress.org/rest-api/reference/posts/

> **Son kural:** Araç kataloğu asla araştırmanın sonu değildir. Her yeni görevin en iyi açık kaynak alternatifleri güncel araştırılır, kıyaslanır, testli modül hâline getirilir; bedava yazılım ile bedava GPU/hesap/erişim asla karıştırılmaz.
