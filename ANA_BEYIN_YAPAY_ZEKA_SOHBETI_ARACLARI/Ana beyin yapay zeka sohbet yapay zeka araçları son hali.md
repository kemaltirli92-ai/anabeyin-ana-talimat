# Ana beyin yapay zeka sohbet yapay zeka araçları son hali

**Proje:** anabeyin.com  
**Belge tarihi:** 22.10.2026  
**Kapsam:** Kullanıcı sohbetten veya ilgili ekrandan bir işlem istediğinde arka planda görev alan sunucu araçları ve dış hizmetler.  
**Derleme kaynağı:** Aynı GitHub klasöründeki `anabeyin yapay zeka sohbeti araçları.md` (v2.0) ve `ARSIV_2026-10-20_SOHBETI_ARACLARI_V1_6.md` (v1.6).  
**Belge türü:** Araç ve kaynak envanteri. Kurulum komutu, ajana talimat, mimari tercih emri veya rakip referansı içermez.

**Sayıların okunması:** SSD = tek uygulamanın/modelin yaklaşık kurulum ve çalışma dosyası alanı; **kullanıcı medyası, sohbet arşivi ve genel yedekler hariç**. RAM = tek hizmet/işlem için yaklaşık sistem belleği. VRAM = GPU belleği; normal sistem RAM'inden farklıdır. **≈ ile verilen rakamlar kapasite planlama tahminidir, cihazda ölçüm değildir**. Model checkpoint'i, hassasiyet (BF16/FP8/4-bit), çözünürlük, batch ve eşzamanlı iş sayısı rakamı değiştirebilir. Aynı ortak Python/Docker bağımlılıkları birden fazla satırda görünebilir; satır aralıkları körlemesine toplanmaz. **0 GB VRAM**, ilgili sunucu bileşeninin GPU kullanmadığını anlatır, işlemin başka bir yerde GPU gerektirmediğini değil.

## 1. SUNUCUDA SON HALİNDE BULUNACAK / İSTENDİĞİNDE ÇALIŞACAK ARAÇLAR

**Grup anlamı:** *Temel* bileşenler uygulama çalışırken servis sağlar. *İstekle işçi / istekle GPU* araçları kullanıcı işlemi gerektiğinde çalıştırılır. *Alternatif* ibaresi aynı görevi gören iki programın ikisinin de aynı anda zorunlu olmadığı anlamına gelir. *Lisansı doğrulanacak* satırları ticari dağıtım onayı olarak değerlendirilmez.

### 1.1 · Temel sunucu, sohbet, veri, yönlendirme

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| Ubuntu Server LTS | Linux sunucu işletim sistemi; web, veritabanı ve çalışan servislerin zemini. | 4–12 | 1–3 | 0 | Temel |
| Docker Engine + Compose | Web/API/işçi servislerini birbirinden ayrılmış konteynerler olarak çalıştırır. | 2–8 | 0,3–1,5 | 0 | Temel |
| LibreChat | Sohbet arayüzünün çoklu model, dosya ve konuşma işlevleri; Ana Beyin'e uyarlanabilen açık kaynak uygulama. | 1–4 | 0,5–3 | 0 | Temel arayüz bileşeni |
| Next.js + Node.js | Ana Beyin'in özel ekranları, menüleri, kullanıcıya gösterilen sohbet/medya arayüzü. | 0,5–3 | 0,3–2 | 0 | Temel |
| FastAPI + Python | Kullanıcı istekleri, sağlayıcı adaptörleri, medya iş emirleri ve uygulama API'si. | 0,5–3 | 0,3–2 | 0 | Temel |
| PostgreSQL | Üye, konuşma, proje, görev, kredi ve dosya kayıtlarını tutan kalıcı veritabanı. | 0,5–2 + veriler | 0,5–4 + yük | 0 | Temel |
| pgvector | PostgreSQL içinde vektör saklama ve semantik arama; kullanıcı belleği/belge araması. | 0,05–0,3 + indeks | PostgreSQL'e ek 0,2–2 | 0 | İşleve bağlı |
| Redis | Görev durumları, geçici önbellek ve hız sınırlama verileri. | 0,1–1 + veri | 0,2–2 + veri | 0 | Temel |
| Celery | Python görev işçileri: uzun video, belge, ajan ve zamanlı işleri kuyruktan yürütür. | 0,2–1 | 0,3–2 / işçi | 0 | Temel |
| Caddy veya Nginx | HTTPS, ters vekil, statik dosya ve servis yönlendirme; bir tanesi seçilir. | 0,1–0,5 | 0,1–0,5 | 0 | Temel |
| OIDC kimlik servisi (Authentik veya Keycloak) | Kayıt, oturum açma, kullanıcı/rol ve çok kiracılı erişim kontrolü; yalnız bir alternatif çalışır. | 0,5–3 | 1–4 | 0 | Temel |
| S3 uyumlu nesne depolama (MinIO veya dış S3 adaptörü) | Görsel, video, ses, belge ve proje dosyalarını saklar; yerel kurulumda disk veriyle büyür. | 0,2–3 + dosyalar | 0,5–4 | 0 | Temel dosya katmanı |
| LiteLLM Proxy | OpenAI/Claude/Gemini/yerel motorları ortak bir istemci arabiriminde yönlendirir; erişim/maliyet kaydı. | 0,5–2 | 0,5–3 | 0 | Model yönlendirme seçeneği |
| LangGraph | Ajanların çok adımlı konuşma, araç seçme, durum takibi ve görev akışları. | 0,1–1 | 0,5–3 | 0 | Ajan özelliklerinde |
| Model kayıt/kota/maliyet servisi (Ana Beyin modülü) | Mevcut model kimlikleri, etkin sağlayıcı, kota, fiyat ve otomatik seçim kayıtları. | 0,1–1 + veriler | 0,2–2 | 0 | Temel |
| Secret vault / şifreli anahtar kasası | API anahtarı, OAuth belirteci ve altyapı sırlarının sunucu tarafında tutulması. | 0,1–1 | 0,2–2 | 0 | Temel |
| Restic veya Kopia | Yedekleme ve geri yükleme; üretim verisi kopyalarını şifreler. | 0,1–1 + yedekler | 0,2–2 | 0 | Temel |
| Prometheus + Grafana | Servis sağlığı, GPU kullanım, işlem süresi ve hata metrikleri. | 1–5 + zaman serisi | 1–4 | 0 | Canlı işletim |
| Gitleaks + Trivy | Kaynak kodundaki anahtarları ve imaj bağımlılıklarındaki güvenlik açıklarını tarar. | 0,4–3 + tarama önbelleği | 0,5–4 | 0 | Güvenlik |

### 1.2 · Sohbet ve kod üretimi için yerel açık ağırlıklı modeller

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| Qwen3-4B (BF16 / 4-bit) | Türkçe dahil çok dilli sohbet, sınıflandırma ve hafif ajan istekleri. Resmî BF16 depo boyutu 8,06 GB. | 8,06 BF16; ≈3–5 4-bit | 8–16 | ≈10–14 BF16; ≈4–8 4-bit | İstekle GPU |
| Qwen3-32B (BF16 / 4-bit) | Daha güçlü sohbet, düşünme, belge analizi ve araç kullanımı. | ≈65 BF16; ≈18–25 4-bit | 16–80 | ≈70–96+ BF16; ≈24–48 4-bit | İstekle GPU |
| Qwen3-Coder-30B-A3B-Instruct | Kod üretimi, repo değişikliği ve yazılım ajanı modelidir. Resmî BF16 model deposu yaklaşık 61,1 GB. | 61,1 BF16; ≈18–25 4-bit | 16–80 | ≈65–96+ BF16; ≈24–48 4-bit | İstekle GPU |
| Qwen3-Coder-Next | Kod ve çok adımlı ajan görevleri; modelin GGUF/FP8 gibi farklı sürümleri ayrıdır. | ≈45–170 (sürüme göre) | 32–160 | ≈48–96+ (quant ve bağlama göre) | İstekle GPU |
| DeepSeek-R1-Distill-Qwen-32B | Zor muhakeme/matematik/kod için 32B boyutlu damıtılmış model. | ≈65 BF16; ≈18–25 4-bit | 16–80 | ≈70–96+ BF16; ≈24–48 4-bit | İstekle GPU |
| gpt-oss-20b | Açık ağırlıklı akıl yürütme ve araç çağırma modeli; resmi nicemli sürüm seçimine bağlı. | ≈12–45 | 16–64 | ≈16–32+ (nicem ve bağlama göre) | İstekle GPU |
| gpt-oss-120b | Daha büyük muhakeme modeli; çok uzun bağlamda önbellek VRAM'i yükseltir. | ≈65–260 | 64–256 | ≈80–160+ (nicem/çoklu GPU) | İstekle GPU |
| llama.cpp + GGUF runtime | Nicemlenmiş yerel metin modellerini CPU/GPU karışık çalıştırır; kendi başına model ağırlığı içermez. | 0,2–2 + model | 0,5–4 + model | Model yüklenirse, modele bağlı | İstekle GPU/CPU |
| Ollama | Yerel model servisi ve model indirme/katalogu; ağırlıklar ayrıca depolanır. | 0,5–3 + model | 0,5–3 + model | Model yüklenirse, modele bağlı | Çıkarım motoru alternatifi |
| vLLM / SGLang | Çok kullanıcıya paralel LLM servis etme, batching ve KV-cache; model ağırlığı ayrı. | 3–10 + model | 2–12 + model | Model yüklenirse, modele bağlı | Çıkarım motoru alternatifi |

### 1.3 · Araştırma, hafıza, görüntü okuma

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| SearXNG | Farklı arama motorlarından birleşik web araması sonuçları sağlar. | 0,5–2 | 0,5–2 | 0 | Araştırma |
| Crawl4AI | Web sayfası, doküman ve bağlantıları LLM'e aktarılabilir içeriğe dönüştürür. | 0,5–3 + tarayıcı önbelleği | 1–4 | 0 | Araştırma |
| Playwright + Chromium | Gerçek tarayıcıda sayfa okuma, kullanıcı adına izinli etkileşim ve ekran testi. | 1–4 + geçici veri | 1–4 / oturum | 0 | Tarayıcı/ajan |
| Trafilatura + Beautiful Soup | Web sayfasının ana metnini çıkarır, HTML temizler. | 0,1–0,5 | 0,2–1 | 0 | Araştırma |
| Scrapy + RSSHub | Site taraması ve haber/RSS akışlarını toplayıp değişiklikleri takip eder. | 0,5–3 + önbellek | 0,5–3 | 0 | Araştırma |
| BGE veya multilingual-e5 embedding modeli | Belgeleri vektöre çevirerek anlamsal arama yapar; tam checkpoint seçilmemiştir. | ≈0,5–5 + indeks | 1–8 | ≈0–6 (CPU veya GPU) | Hafıza |
| BGE reranker | Arama sonuçlarını soru ile alaka sırasına dizer; tam checkpoint seçilmemiştir. | ≈0,5–3 | 1–6 | ≈0–6 (CPU veya GPU) | Hafıza |
| Docling | PDF, Word, tablo ve karma belgelerden yapılandırılmış metin/tablo çıkarır. | 0,5–4 + OCR modeli | 1–8 | 0; VLM seçilirse modele bağlı | Belge anlama |
| PaddleOCR | Resim ve taranmış PDF'den çok dilli OCR; model varyantı seçimine bağlı. | 0,5–5 | 1–8 | 0 CPU; GPU seçilirse ≈2–8 | Görüntü anlama |
| Tesseract OCR | Düşük maliyetli taranmış metin okuma, dil paketleriyle OCR. | 0,2–1,5 | 0,5–2 | 0 | Görüntü anlama |
| Qwen3-VL küçük/orta checkpoint ailesi | Görsel, tablo, ekran ve fotoğrafları metinsel olarak yorumlar; tek model seçimi henüz belirtilmedi. | ≈10–75+ | 16–96 | ≈12–96+ (checkpoint/quant) | İstekle GPU |
| Florence-2 | Görüntü açıklama, etiketleme ve görselden bölge/nesne metni çıkarma. | ≈0,5–2 | 1–4 | ≈2–6 | Görüntü anlama |
| SAM2 | Görsel ve videoda nesne maskesi/segmentasyonu; checkpoint ve çözünürlük etkili. | ≈0,5–4 | 4–16 | ≈4–16 | Görsel/video düzenleme |

### 1.4 · Görsel üretimi ve fotoğraf düzenleme

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| ComfyUI | Görsel/video modellerinin düğüm tabanlı sunucu iş akışı; model ağırlıkları dahil değildir. | 1–6 + modeller | 2–8 | 0 tek başına; model yüklenince modele bağlı | İstekle GPU işçisi |
| Diffusers + PyTorch | Görsel/video diffusion modellerini Python ile çalıştıran kitaplık ve inference ortamı. | 3–12 + modeller | 2–12 | 0 tek başına; model yüklenince modele bağlı | İstekle GPU işçisi |
| FLUX.1-schnell | Metinden görsel üretimi; resmî model Apache-2.0 ve 12B BF16 parametreli. | ≈24–35 BF16; ≈12–22 nicemli | 16–64 | ≈24–40 BF16; ≈12–24 nicemli | İstekle GPU |
| SDXL Base 1.0 | Metinden görsel, stil ve kontrol tabanlı edit. | ≈7–15 + eklentiler | 8–32 | ≈8–16 (çözünürlük/batch) | İstekle GPU |
| Qwen-Image | Görsel oluşturma, metin yerleşimi ve poster benzeri çıktılar; tam checkpoint/quant fark yaratır. | ≈25–80 | 16–96 | ≈24–80+ | İstekle GPU |
| Qwen-Image-Edit | Referans görsel, ürün/fotoğraf düzeltme ve yazılı düzenleme. | ≈25–80 | 16–96 | ≈24–80+ | İstekle GPU |
| ControlNet / IP-Adapter | Görsel üretimde poz, kenar, derinlik veya referans fotoğraf koşullaması. | ≈1–15 / seçilen eklenti | 4–16 | Temel modele ek ≈1–8 | İstekle GPU |
| Real-ESRGAN / Upscayl | Görsel çözünürlük büyütme ve keskinleştirme. | 0,2–3 | 1–8 | ≈2–8; CPU kipinde 0 | İstekle işçi |
| rembg / BiRefNet | Arka plan kaldırma, alfa maske/şeffaf PNG oluşturma. | ≈0,3–4 | 1–8 | 0 CPU; ≈2–8 GPU kipinde | İstekle işçi |
| ImageMagick / libvips | Kırpma, boyutlandırma, format dönüştürme, filigran ve toplu resim işleri. | 0,1–1 | 0,2–4 | 0 | Temel görsel işçi |
| Inkscape CLI | SVG/vektör dönüştürme, çıktı dosyalarını PDF/PNG/SVG olarak işleme. | 0,3–2 | 0,5–4 | 0 | Vektör işçi |

### 1.5 · Video, avatar ve otomatik kurgu

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| Wan2.2-TI2V-5B | Metinden/fotoğraftan kısa video; resmî belgede offload ile en az 24 GB VRAM örneği. | ≈15–35 + önbellek | 32–96 | ≥24 offload ile; ≥80 hızlandırılmış örnekte | İstekle GPU |
| Wan2.2 I2V-A14B / T2V-A14B | Daha ağır metinden/video ve fotoğraftan video modelleri; MoE ve çözünürlük maliyeti yüksek. | ≈50–150 + yardımcılar | 64–192 | ≈48–160+ (quant/offload/çoklu GPU) | İstekle GPU |
| LTX video modelleri | Kısa video, animasyon ve düzenleme için yerel modeller; sürüm ve ticari lisans ayrıca farklılaşır. | ≈10–80 | 32–128 | ≈16–96+ (sürüm/quant) | Lisansı doğrulanacak GPU |
| CogVideoX modelleri | Metinden veya görüntüden kısa video alternatifleri; seçilen checkpoint ve sürüme göre değişir. | ≈10–60 | 32–96 | ≈16–80+ | İstekle GPU |
| LivePortrait | Fotoğraftaki yüz/portre hareketlerini başka hareket referansıyla canlandırır. | ≈2–6 | 8–16 | ≈4–12 | İstekle GPU |
| MuseTalk | Konuşma sesine dudak hareketi eşleyen avatar/video bileşeni. | ≈2–8 | 8–24 | ≈4–12 | İstekle GPU |
| LatentSync | Sesle dudak eşleme ve video oluşturma; sürüm/çözünürlük bellek kullanımını etkiler. | ≈5–20 | 16–32 | ≈8–24 | İstekle GPU |
| FFmpeg + FFprobe | Video birleştirme, montaj, 9:16 Reels/Shorts dönüştürme, altyazı, ses ekleme. | 0,1–1 | 1–8 / işlem | 0 CPU; GPU encoder kullanılırsa ek VRAM | Temel video işçi |
| Blender (arka plan render) | 3D sahne, animasyon, ürün görselleştirme, efekt ve render. | 1–5 + projeler | 4–32 | 0 CPU render; GPU render ≈4–48+ | İstekle işçi |

### 1.6 · Ses, konuşma, müzik ve çeviri

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| faster-whisper (model dahil) | Yüklenen sesin metne çevrilmesi, Türkçe konuşma transkripsiyonu. | ≈0,2–7 (küçük–large model) | 2–16 | 0 CPU; GPU kipinde ≈2–12 | İstekle işçi |
| whisper.cpp (model dahil) | Hafif CPU/GPU transkripsiyon alternatifi; seçilen GGML/GGUF Whisper ağırlığı dahil. | ≈0,1–7 | 1–8 | 0 CPU; GPU kipinde ≈1–10 | Alternatif STT |
| Piper TTS | TTS: metni yerel konuşma sesine dönüştürme; ses paketi/lisan seçilir. | ≈0,1–3 | 0,5–4 | 0 CPU | Ses işçi |
| Kokoro TTS | Yerel doğal konuşma seslendirmesi; Türkçe ses/kalite ayrı test konusu. | ≈0,5–3 | 1–8 | 0 CPU; GPU kipinde ≈2–6 | Ses işçi |
| F5-TTS | Referans sese dayalı sentez/konuşma oluşturma; kullanım izni ve ağırlık lisansı ayrı. | ≈2–8 | 4–16 | ≈4–12 | Ses GPU seçeneği |
| Silero VAD | Konuşma başlangıcı/sonu ve sessizlik tespiti. | 0,05–0,5 | 0,1–1 | 0 | Ses işçi |
| RNNoise / DeepFilterNet | Mikrofon ve yüklenen seste gürültü temizleme. | 0,1–2 | 0,3–3 | 0 CPU; GPU seçilirse ≈1–4 | Ses işçi |
| Demucs | Müzik, vokal, arka plan ve enstrüman ayrıştırma. | ≈1–5 | 4–16 | 0 CPU; GPU kipinde ≈3–12 | Müzik işçi |
| ACE-Step 1.5 | Müzik/şarkı üretimi için açık model ailesi; indirilecek checkpointin lisansı ve bellek profili ayrıdır. | ≈8–30 | 16–64 | ≈8–32 (tahmini; sürüme bağlı) | Müzik GPU seçeneği |
| Argos Translate | İndirilen dil paketleriyle sunucu içinde metin çevirisi. | ≈0,2–5 + diller | 1–6 | 0 | Çeviri işçi |

### 1.7 · PDF/Office/veri, matematik, 3D ve oyun

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| LibreOffice headless | DOCX/XLSX/PPTX okuma-dönüştürme; Office biçimlerinden PDF üretme. | 1–3 | 1–4 / işlem | 0 | Temel belge işçi |
| Pandoc | Markdown, HTML, DOCX vb. arası belge dönüşümü. | 0,1–0,8 | 0,2–2 | 0 | Belge işçi |
| PyMuPDF + pypdf + pdfplumber | PDF metin çıkarma, sayfa birleştirme, bölme ve PDF içeriği okuma. | 0,1–1 | 0,5–4 | 0 | Belge işçi |
| OCRmyPDF | Taranmış PDF'e aranabilir OCR metin katmanı ekleme. | 0,2–1,5 | 1–4 | 0 | Belge işçi |
| python-docx + python-pptx + PptxGenJS | İndirilebilir Word ve PowerPoint dosyalarını programlı üretme/düzenleme. | 0,2–2 | 0,5–4 | 0 | Belge üretimi |
| openpyxl + pandas + DuckDB | Excel/CSV okuma, tabloları işleme, hesaplama ve analiz. | 0,3–2 | 1–8 | 0 | Veri/Excel işçi |
| ReportLab + WeasyPrint | Şablon, HTML ve sayfa düzeninden PDF üretme. | 0,2–2 | 0,5–4 | 0 | PDF üretimi |
| Matplotlib + Plotly + ECharts | İstatistik grafiği, etkileşimli grafik verisi ve çıktı görselleştirme. | 0,3–2 | 0,5–4 | 0 | Grafik üretimi |
| NumPy + SciPy + SymPy | Sayısal hesaplar, denklem çözümü, istatistik ve matematik araçları. | 0,3–2 | 0,5–8 | 0 | Hesaplama |
| GeoPandas + MapLibre | Koordinat, harita verisi ve coğrafi görselleştirme; harita veri sunucusu ayrı olabilir. | 0,5–4 + harita verisi | 1–8 | 0 | Harita işçi |
| Blender / FreeCAD / OpenSCAD | 3D mesh, CAD, STL/OBJ/GLB dışa aktarma; Blender üstte de yer alır, tek kurulumdur. | Blender yukarıda; CAD ek ≈1–5 | 2–16 | 0 CPU; GPU render varsa modele/sahneye bağlı | 3D işçi |
| Hunyuan3D / TRELLIS | Görselden 3D varlık üretimi için büyük GPU modelleri; ağırlık ve lisans checkpoint bazında. | ≈15–100 | 32–128 | ≈16–96+ (modele bağlı) | 3D GPU seçeneği |
| Godot Engine | Üretilen oyunların proje derleme, sahne testi ve dışa aktarma işlemleri. | 0,3–3 + export şablonları | 1–8 | 0 headless; render varsa ≈1–8 | Oyun işçi |
| Godot MCP (Full Control veya alternatif) | Godot sahne/script işlemlerini izinli AI ajanına açan MCP sunucu köprüsü. | 0,1–1 | 0,3–2 | 0 (Godot render hariç) | Oyun/ajan işçi |

### 1.8 · Kodlama ajanları, otomasyon ve servis bağlantıları

| Araç / model | Kullanıcı isteğinde yaptığı iş | SSD (GB) | RAM (GB) | GPU VRAM (GB) | Çalışma biçimi |
|---|---|---:|---:|---:|---|
| OpenHands (açık çekirdek / SDK) | Kullanıcının repo dosyalarında ajanla kod üretme, hata düzeltme ve test etme. | ≈1–5 + her sandbox | ≈2–8 / aktif görev | 0 ajan yazılımı; bağlandığı LLM ayrı | Kodlama işçi |
| OpenCode | Kod tabanı okuyan ve LLM API'leri ile dosya düzenleyen geliştirici ajanı. | 0,1–1 + repo | 0,3–2 | 0 ajan yazılımı | Kodlama işçi |
| Aider | Terminal üzerinden Git tabanlı kod düzenleme ve önerilen değişiklikleri uygulama. | 0,1–1 + repo | 0,2–2 | 0 ajan yazılımı | Kodlama işçi |
| SWE-agent / Agentless | Hata bildirimi → yama önerisi → test; iki farklı ajan yöntemi. | ≈0,5–4 + sandbox | 2–8 / aktif görev | 0 ajan yazılımı; LLM ayrı | Kodlama/hata işçi |
| RepoAgent | Kaynak kod yapısını analiz edip proje dokümantasyonu ve repo haritası oluşturur. | ≈0,3–2 + indeks | 1–4 | 0 ajan yazılımı; LLM ayrı | Kod dokümantasyonu |
| Screenshot-to-Code | Ekran görüntüsünü taslak HTML/React/Tailwind koduna dönüştürür; arka model API/GPU ayrı. | ≈0,5–3 | 1–4 | 0 ön uç; model ayrı | Görselden kod |
| Git + proje sandbox + test paketleri | Görev başına repo, izole dosya alanı, pytest/Vitest/Playwright test ve güvenli build. | ≈1–10 + görev başı çalışma alanı | 2–16 / görev | 0 build; inference GPU ayrı | Kodlama altyapısı |
| Activepieces Community | İsteklere göre otomasyon, servis entegrasyonu, zamanlı iş ve webhook. | ≈1–5 | 1–4 | 0 | Otomasyon işçi |
| Node-RED | Araçlar arası olay akışı, webhooks, tetikleyici ve basit entegrasyonlar. | ≈0,2–2 | 0,2–2 | 0 | Otomasyon alternatifi |
| Postiz | İçerik planlama ve sosyal ağ yayın entegrasyonları; sosyal ağ API izinleri ayrıca gerekir. | ≈1–6 + medya | 1–4 | 0 | Sosyal medya işçi |

**Yerel model boyutu için kaynak örnekleri:** Qwen3-4B resmi BF16 depo toplamı **8,06 GB**: https://huggingface.co/Qwen/Qwen3-4B/tree/main . Qwen3-Coder-30B-A3B-Instruct BF16 depo toplamı **61,1 GB**: https://huggingface.co/Qwen/Qwen3-Coder-30B-A3B-Instruct/tree/main . Qwen3-Coder sürüm listesi: https://github.com/QwenLM/Qwen3-Coder . Wan2.2-TI2V-5B için resmî **24 GB offload / 80 GB hızlandırılmış** GPU örneği: https://huggingface.co/Wan-AI/Wan2.2-TI2V-5B . FLUX.1-schnell 12B BF16 ve Apache-2.0: https://huggingface.co/black-forest-labs/FLUX.1-schnell . Diğer tahminler depodan ölçülmüş kurulu GB veya gerçek VRAM benchmark'ı değildir. VRAM aralıkları aynı anda çalışan her kullanıcı için sabit tahsis demek değildir.

## 2. DIŞ MODEL, API VE UZAK HİZMETLER

**Bu bölümdeki her satırda Ana Beyin sunucusunun kendi ekran kartından kullanılan bellek: 0 GB VRAM.** Model başka sağlayıcının bilgisayarında çalıştığı için **sağlayıcının gerçekte kullandığı GPU VRAM değeri kamuya açık değil veya model/sürüm/iş yüküyle değişken**. Bu nedenle özel sağlayıcı GPU'su için kesin GB değeri yazılmamıştır. GPU kiralama hizmetlerinde ise GPU'nun VRAM kapasitesi **seçilen kiralık ekran kartının teknik özelliğidir**; tek bir sabit değer yoktur. Anahtar adları bağlantıyı tanımlar, gerçek anahtar değildir.

### 2.1 · Sohbet, muhakeme ve kod modelleri

| Dış hizmet | Kullanıcı isteğinde yaptığı iş | Bizim GPU VRAM (GB) | Sağlayıcı GPU VRAM (GB) | Bağlantı bilgisi |
|---|---|---:|---|---|
| OpenAI GPT API | Genel sohbet, kod, muhakeme ve çok modlu model erişimi. | 0 | Açıklanmamış / modele göre | OPENAI_API_KEY |
| Anthropic Claude API | Sohbet, kod üretimi, dosya analizi ve ajan muhakemesi. | 0 | Açıklanmamış / modele göre | ANTHROPIC_API_KEY |
| Google Gemini API | Çok modlu sohbet, analiz, kod ve uzun bağlam modelleri. | 0 | Açıklanmamış / modele göre | GOOGLE_AI_API_KEY |
| xAI Grok API | Sohbet ve araştırma model erişimi. | 0 | Açıklanmamış / modele göre | XAI_API_KEY |
| DeepSeek API | DeepSeek modellerine uzaktan metin/kod/muhakeme erişimi. | 0 | Açıklanmamış / modele göre | DEEPSEEK_API_KEY |
| Mistral API | Mistral/Devstral ailesinden sunulan uygun uzaktan sohbet/kod modelleri. | 0 | Açıklanmamış / modele göre | MISTRAL_API_KEY |
| Cohere API | Metin üretimi, embedding ve rerank türü hizmetler; ürün/sürüm koşulları ayrıdır. | 0 | Açıklanmamış / modele göre | COHERE_API_KEY |
| Perplexity API | Kaynaklı web araştırması ve uzaktan bilgiye dayalı cevap hizmetleri. | 0 | Açıklanmamış / modele göre | PERPLEXITY_API_KEY |

### 2.2 · Görsel oluşturma, düzenleme ve video

| Dış hizmet | Kullanıcı isteğinde yaptığı iş | Bizim GPU VRAM (GB) | Sağlayıcı GPU VRAM (GB) | Bağlantı bilgisi |
|---|---|---:|---|---|
| OpenAI Images / GPT Image | Görsel oluşturma ve fotoğraf düzenleme. | 0 | Açıklanmamış / modele göre | OPENAI_API_KEY |
| Google Imagen | Metinden görsel üretim ve düzenleme modelleri. | 0 | Açıklanmamış / modele göre | GOOGLE_AI_API_KEY |
| Google Nano Banana | Görsel düzenleme/çoklu görsel üretim deneyimi; kullanılan model/API sürümü sağlayıcıda değişir. | 0 | Açıklanmamış / modele göre | GOOGLE_AI_API_KEY |
| Black Forest Labs FLUX API | FLUX görsel modellerine uzaktan erişim. | 0 | Açıklanmamış / modele göre | BFL_API_KEY |
| Recraft API | Ürün görseli, tasarım ve vektör odaklı üretim. | 0 | Açıklanmamış / modele göre | RECRAFT_API_KEY |
| Ideogram API | Poster, afiş, yazı içeren görsel ve grafik tasarım üretimi. | 0 | Açıklanmamış / modele göre | IDEOGRAM_API_KEY |
| Adobe Firefly API | Ticari tasarım ve görsel/video üretimi; lisans ve erişim plana bağlı. | 0 | Açıklanmamış / modele göre | ADOBE_API_CREDENTIALS |
| Google Veo | Metinden/fotoğraftan video oluşturma. | 0 | Açıklanmamış / modele göre | GOOGLE_AI_API_KEY |
| Kling AI API | Kısa sinematik video ve fotoğraftan video üretimi. | 0 | Açıklanmamış / modele göre | KLING_API_KEY |
| MiniMax Hailuo API | Kısa video ve fotoğraf/video animasyonu. | 0 | Açıklanmamış / modele göre | MINIMAX_API_KEY |
| Seedance API | Video üretimi; hangi sağlayıcının resmî erişimi olduğu bölge/sürüme bağlı. | 0 | Açıklanmamış / modele göre | SEEDANCE_API_CREDENTIALS |
| Runway API | Video oluşturma ve düzenleme. | 0 | Açıklanmamış / modele göre | RUNWAY_API_KEY |
| Luma API | Kısa video, hareket ve görselden video modelleri. | 0 | Açıklanmamış / modele göre | LUMA_API_KEY |
| fal.ai API | Birden fazla görsel/video/ses modelini barındıran model yürütme hizmeti. | 0 | Açıklanmamış / modele göre | FAL_KEY |
| Replicate API | Barındırılan açık ve özel model sürümlerini uzaktan çalıştırma. | 0 | Açıklanmamış / modele göre | REPLICATE_API_TOKEN |

### 2.3 · Ses, müzik, avatar ve transkripsiyon

| Dış hizmet | Kullanıcı isteğinde yaptığı iş | Bizim GPU VRAM (GB) | Sağlayıcı GPU VRAM (GB) | Bağlantı bilgisi |
|---|---|---:|---|---|
| HeyGen API | Konuşan avatar, sunucu/karakter video üretimi ve dublaj. | 0 | Açıklanmamış / modele göre | HEYGEN_API_KEY |
| Hedra API | Karakter/konuşan yüz/video oluşturma. | 0 | Açıklanmamış / modele göre | HEDRA_API_KEY |
| ElevenLabs API | Metinden seslendirme, konuşma, ses efekti ve desteklenen müzik işlevleri. | 0 | Açıklanmamış / modele göre | ELEVENLABS_API_KEY |
| MiniMax Speech API | Metinden konuşma ve ses üretimi. | 0 | Açıklanmamış / modele göre | MINIMAX_API_KEY |
| MiniMax Music API | Müzik/şarkı üretimi; sağlayıcıya göre desteklenen model/erişim değişebilir. | 0 | Açıklanmamış / modele göre | MINIMAX_API_KEY |
| Google Lyria API / erişimi | Müzik üretimi; ürün ve bölgesel API erişimi kontrol edilir. | 0 | Açıklanmamış / modele göre | GOOGLE_AI_API_KEY |
| Hume API | Duygu odaklı konuşma/ses etkileşim hizmetleri. | 0 | Açıklanmamış / modele göre | HUME_API_KEY |
| Stable Audio (barındırılan erişim) | Ses efekti ve müzik üretimi; doğrudan erişim yolu/sözleşmesi değişebilir. | 0 | Açıklanmamış / modele göre | STABLE_AUDIO_CREDENTIALS |
| Deepgram API | STT, konuşma tanıma ve bazı TTS modelleri. | 0 | Açıklanmamış / modele göre | DEEPGRAM_API_KEY |
| AssemblyAI API | Ses dosyası transkripsiyonu ve konuşma analizi. | 0 | Açıklanmamış / modele göre | ASSEMBLYAI_API_KEY |
| OpenAI Audio API | STT, TTS ve desteklenen gerçek zamanlı ses hizmetleri. | 0 | Açıklanmamış / modele göre | OPENAI_API_KEY |
| Google Cloud Speech / TTS | Konuşma tanıma ve seslendirme. | 0 | Açıklanmamış / modele göre | GOOGLE_CLOUD_CREDENTIALS |
| Azure AI Speech | STT, TTS, konuşma çeviri ve ses hizmetleri. | 0 | Açıklanmamış / modele göre | AZURE_SPEECH_KEY |

### 2.4 · Web araştırması, uygulama bağlantıları, depolama ve hesaplama

| Dış hizmet | Kullanıcı isteğinde yaptığı iş | Bizim GPU VRAM (GB) | Sağlayıcı GPU VRAM (GB) | Bağlantı bilgisi |
|---|---|---:|---|---|
| Tavily API | Web araştırması için arama ve içerik çıkarma. | 0 | Açıklanmamış / modele göre | TAVILY_API_KEY |
| Exa API | Anlamsal web arama ve bağlantı keşfi. | 0 | Açıklanmamış / modele göre | EXA_API_KEY |
| Brave Search API | Web arama sonuçlarına resmî API erişimi. | 0 | Açıklanmamış / modele göre | BRAVE_SEARCH_API_KEY |
| SerpAPI | Arama motoru sonuçlarını programlı alma. | 0 | Açıklanmamış / modele göre | SERPAPI_API_KEY |
| OpenAlex API | Akademik eser ve yazar/kaynak verileri. | 0 | Açıklanmamış / modele göre | API_KEY_İSTEĞE_BAĞLI |
| Crossref REST API | DOI ve yayın bibliyografik verileri. | 0 | Açıklanmamış / modele göre | KEY_GEREKMEYEBİLİR |
| arXiv / PubMed APIs | Bilimsel makale ve özet arama; servis başına politika geçerlidir. | 0 | Açıklanmamış / modele göre | KEY_İSTEĞE_BAĞLI |
| Google Drive API | Kullanıcının izin verdiği dosyalara OAuth erişimi. | 0 | Açıklanmamış / modele göre | GOOGLE_OAUTH_CREDENTIALS |
| Gmail API | Kullanıcının izin verdiği postaya OAuth erişimi. | 0 | Açıklanmamış / modele göre | GOOGLE_OAUTH_CREDENTIALS |
| GitHub API | Kod depoları, issue, commit ve PR erişimi. | 0 | Açıklanmamış / modele göre | GITHUB_OAUTH_CREDENTIALS |
| Slack API | İzinli ekip kanalı ve mesaj erişimi/otomasyonu. | 0 | Açıklanmamış / modele göre | SLACK_OAUTH_CREDENTIALS |
| Cloudflare R2 API | Uzaktaki nesne depolamada kullanıcı dosyası/medya saklama. | 0 | Açıklanmamış / modele göre | R2_CREDENTIALS |
| Amazon S3 API | Bulut nesne depolama. | 0 | Açıklanmamış / modele göre | AWS_CREDENTIALS |
| Backblaze B2 API | Dış yedek ve nesne depolama. | 0 | Açıklanmamış / modele göre | B2_CREDENTIALS |
| Runpod GPU | İsteğe bağlı kiralık ekran kartında kendi açık modellerini çalıştırma. | 0 | Açıklanmamış / modele göre | RUNPOD_API_KEY |
| Vast.ai GPU | Kiralık GPU örneklerinde kendi modelini çalıştırma. | 0 | Açıklanmamış / modele göre | VAST_API_KEY |
| Lambda GPU Cloud | Kiralık GPU iş istasyonları/sunucuları. | 0 | Açıklanmamış / modele göre | LAMBDA_CREDENTIALS |
| Modal GPU | İsteğe bağlı uzaktan GPU fonksiyonu/işçisi. | 0 | Açıklanmamış / modele göre | MODAL_CREDENTIALS |
| iyzico API | Abonelik, ödeme ve işlem sonuçları entegrasyonu; yapay zekâ modeli değildir. | 0 | Açıklanmamış / modele göre | IYZICO_CREDENTIALS |
| PayTR API | Tahsilat, ödeme ve abonelik bağlantısı; yapay zekâ modeli değildir. | 0 | Açıklanmamış / modele göre | PAYTR_CREDENTIALS |

**API ile yerel model ayrımı:** Uzaktan GPT, Claude, Gemini, Grok, Kling, Hailuo vb. çağrıldığında model ağırlıkları Ana Beyin sunucusuna indirilmez; yalnız kullanıcı dosyası, istek, çıktı, geçici önbellek ve bağlantı kodu için disk/RAM kullanılır. Dış API'lerin bizim tarafta yarattığı GPU yükü **0 GB**, ancak sağlayıcının GPU kullanımı **0 GB değildir**. Runpod/Vast.ai/Lambda/Modal kiralık GPU'su ise uzaktaki GPU'dur; kiralanacak kartın **örneğin 24 GB, 48 GB, 80 GB veya 96 GB** olması hizmetten değil seçilen donanımdan kaynaklanır.

**İki kaynak belgeden ayıklanan kapsam:** Eski dosyadaki farklı sürüm/aile isimleri bu belgede zorunlu ayrı kurulum gibi çoğaltılmadı; model ailesi, uygulama motoru ve API sağlayıcısı birbirinden ayrıldı. Ana Beyin'in kendi uygulama kodu, burada listelenen yazılımlardan farklıdır. Bütün disk/RAM/VRAM rakamları, aksi resmî kaynak notuyla belirtilmedikçe **≈ teknik tahmin** niteliğindedir.
