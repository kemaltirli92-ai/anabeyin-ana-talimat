# Ana Beyin Tüm Kategoriler ve içinde çalışan yapay zeka araçları olacak

**Tarih:** 2026-10-24  
**Durum:** Türkçe ürün ve API katalog belgesi. Tasarım hedefidir; yazılım kurulmuş veya API anahtarları bağlanmış değildir.  
**Mimari:** LibreChat temeli geliştirilerek Ana Beyin markasına özgü arayüz; AI üretiminin tamamı izinli haricî model API’lerinde; sunucu tarafında hesaplar, hafıza, dosyalar, iş akışı, medya montajı ve pazaryeri.


## Kullanıcı ve geliştirici için net açıklama: Yapay zekâları nasıl seçeceğiz?

Ana Beyin, LibreChat'in açık kaynak kodundan yararlanan, **kendi adı, sayfa tasarımı, dinamik formları ve pazaryeri olan ayrı bir üründür**. Kullanıcı bir ana kategoriye girer; sohbet kutusunun altında hazır işlem kartlarını görür. Alt kartlar sol menüde açılmaz. **Avatar, Video Stüdyosu içinde kalır.**

- **Otomatik:** Kullanıcı sadece ne istediğini söyler ve dosyalarını ekler. Ana Beyin o göreve izinli, bağlı ve gerçekten destek veren API sağlayıcılarını seçer. Tek işte farklı aşamalar için farklı API'ler birlikte kullanılabilir.
- **Elle seç:** Kullanıcı işlemin içinde “Sohbet modeli”, “Görsel/video modeli”, “Seslendirme”, “Müzik”, “Harita” gibi gereken seçim kutularını görür. İsterse yalnız bir sağlayıcıyı, ister farklı aşamalar için farklı sağlayıcıları seçebilir.
- **Sağlayıcı gösterimi:** Kullanıcı GPT, Claude, Gemini, Kling, Runway, ElevenLabs vb. adları ve hangi aşamada çalıştıklarını görür. **API anahtarının gerçek değeri müşteriye görünmez.** Yönetici ilgili anahtarı güvenli yapılandırma alanına girer.
- **Açık olmayanlar:** Aşağıdaki marka adları **bağlanabilecek aday API seçenekleridir; hepsi satın alınmış, bağlanmış veya doğrulanmış değildir**. Bir sağlayıcının uygulamasında bulunan özellik, geliştirici API'sinde de bulunduğu anlamına gelmez. Yalnız erişimi, kullanım hakkı ve gerçek uçtan uca çalışması doğrulanan seçeneği müşteriye aktif göster.
- **İşlem kartları:** Aşağıdaki 18 kategoride toplam 431 hazır işlem aynen korunmuştur. Her birinde artık **kullanıcıdan ne istenecek, hangi yapay zekâlar seçilebilecek, hangi API anahtarları kullanılacak ve işlem gerçekte ne yapacak** tek tek yazıyor.
- **Yapay zekâ mimarisi:** Model ağırlığı, Ollama/vLLM veya GPU ile kendi modelimizi sunucuda çalıştırmıyoruz. Üretim harici API'lerde yapılır. İzinli dosya dönüşümü, FFmpeg montaj, veritabanı ve görev yönetimi sunucu üzerinde ayrı çalışır.
- **Depolama tercihi:** Cloudflare R2, Amazon S3 veya Backblaze B2 bu belgeyle **kararlaştırılmadı**, zorunlu seçilmedi.

**API anahtarları için kolay okuma:** Aşağıdaki her satırda sıralanan anahtarlar **hepsini birden alman gerektiği anlamına gelmez**. Kullanılan sağlayıcının anahtarı gerekir. Örneğin görsel için yalnız OpenAI seçilmişse FLUX, Recraft ve Ideogram anahtarları zorunlu değildir. Video, ses ve müzik ayrı sağlayıcılardan seçilirse o sağlayıcıların anahtarları ayrıca gerekir.

## API anahtarları ve sağlayıcıların genel listesi

Kullanıcı “model/araç seç” menüsünde hizmet adını görür. **Anahtar isimleri yalnız yönetici ve geliştirme ekibi içindir**; gizli değerler metne veya müşterinin tarayıcısına yazılmaz.

| Hizmet / seçilebilecek araç | İşlev | Yönetici tarafındaki anahtar / bağlantı | Durum |
|---|---|---|---|
| OpenAI GPT | sohbet, muhakeme, kodlama, görsel anlama | `OPENAI_API_KEY` | Aday; aktifliği doğrulanmadı |
| Claude | sohbet, muhakeme, kodlama, görsel anlama | `ANTHROPIC_API_KEY` | Aday; aktifliği doğrulanmadı |
| Google Gemini / ilgili Google modeli | sohbet, muhakeme, kodlama, görsel anlama | `GOOGLE_AI_API_KEY` | Aday; aktifliği doğrulanmadı |
| Grok | sohbet, muhakeme, kodlama | `XAI_API_KEY` | Aday; aktifliği doğrulanmadı |
| DeepSeek | sohbet, muhakeme, kodlama | `DEEPSEEK_API_KEY` | Aday; aktifliği doğrulanmadı |
| Mistral | sohbet, muhakeme, kodlama, görsel anlama | `MISTRAL_API_KEY` | Aday; aktifliği doğrulanmadı |
| Cohere | sohbet, rerank, embedding | `COHERE_API_KEY` | Aday; aktifliği doğrulanmadı |
| Perplexity | research, grounded answer, sohbet | `PERPLEXITY_API_KEY` | Aday; aktifliği doğrulanmadı |
| Tavily | web arama, web extract | `TAVILY_API_KEY` | Aday; aktifliği doğrulanmadı |
| Exa | web arama, web extract | `EXA_API_KEY` | Aday; aktifliği doğrulanmadı |
| Brave Search | web arama | `BRAVE_SEARCH_API_KEY` | Aday; aktifliği doğrulanmadı |
| SerpAPI | web arama | `SERPAPI_API_KEY` | Aday; aktifliği doğrulanmadı |
| OpenAlex | academic search | Hizmet koşuluna göre kimlik gerekmeyebilir. | Aday; aktifliği doğrulanmadı |
| Crossref | academic search | Hizmet koşuluna göre kimlik gerekmeyebilir. | Aday; aktifliği doğrulanmadı |
| arXiv | academic search | Hizmet koşuluna göre kimlik gerekmeyebilir. | Aday; aktifliği doğrulanmadı |
| PubMed | academic search | `NCBI_API_KEY` | Aday; aktifliği doğrulanmadı |
| FLUX (Black Forest Labs) | görsel üretme, image edit | `BFL_API_KEY` | Aday; aktifliği doğrulanmadı |
| Recraft | görsel üretme, design generate, image edit | `RECRAFT_API_KEY` | Aday; aktifliği doğrulanmadı |
| Ideogram | görsel üretme, design generate | `IDEOGRAM_API_KEY` | Aday; aktifliği doğrulanmadı |
| Adobe Firefly | görsel üretme, image edit, design generate | `ADOBE_CLIENT_ID`, `ADOBE_CLIENT_SECRET` | Aday; aktifliği doğrulanmadı |
| fal.ai | hosted model image, hosted model video, hosted model audio, hosted model 3d | `FAL_KEY` | Aday; aktifliği doğrulanmadı |
| Replicate | hosted model image, hosted model video, hosted model audio, hosted model 3d | `REPLICATE_API_TOKEN` | Aday; aktifliği doğrulanmadı |
| Runway | video üretme, video image to video, video edit, görsel üretme | `RUNWAY_API_KEY` | Aday; aktifliği doğrulanmadı |
| Kling AI | video üretme, video image to video, motion reference | `KLING_API_KEY` | Aday; aktifliği doğrulanmadı |
| MiniMax / Hailuo | video üretme, video image to video, seslendirme, müzik üretme | `MINIMAX_API_KEY` | Aday; aktifliği doğrulanmadı |
| Luma | video üretme, video image to video | `LUMA_API_KEY` | Aday; aktifliği doğrulanmadı |
| HeyGen | avatar video, talking photo, video dubbing, video translation | `HEYGEN_API_KEY` | Aday; aktifliği doğrulanmadı |
| Hedra | avatar video, talking photo | `HEDRA_API_KEY` | Aday; aktifliği doğrulanmadı |
| ElevenLabs | seslendirme, voice clone, voice dubbing, konuşmayı yazıya çevirme | `ELEVENLABS_API_KEY` | Aday; aktifliği doğrulanmadı |
| Deepgram | konuşmayı yazıya çevirme, seslendirme | `DEEPGRAM_API_KEY` | Aday; aktifliği doğrulanmadı |
| AssemblyAI | konuşmayı yazıya çevirme, audio analysis | `ASSEMBLYAI_API_KEY` | Aday; aktifliği doğrulanmadı |
| Azure Speech | seslendirme, konuşmayı yazıya çevirme, voice translation | `AZURE_SPEECH_KEY`, `AZURE_SPEECH_REGION` | Aday; aktifliği doğrulanmadı |
| Google Cloud Speech | seslendirme, konuşmayı yazıya çevirme | `GOOGLE_CLOUD_CREDENTIALS` | Aday; aktifliği doğrulanmadı |
| Google Lyria | müzik üretme | `GOOGLE_CLOUD_CREDENTIALS` | Aday; aktifliği doğrulanmadı |
| Meshy 3D | 3D model, image to 3d, 3d retexture, 3d rig | `MESHY_API_KEY` | Aday; aktifliği doğrulanmadı |
| Google Maps | harita, places, rota, geocoding | `GOOGLE_MAPS_API_KEY` | Aday; aktifliği doğrulanmadı |
| Mapbox | harita, places, rota, geocoding | `MAPBOX_ACCESS_TOKEN` | Aday; aktifliği doğrulanmadı |
| openrouteservice | rota, geocoding, travel time | `ORS_API_KEY` | Aday; aktifliği doğrulanmadı |
| Google (Gmail/Drive/Takvim/YouTube) | gmail, drive, calendar, YouTube yayın | `GOOGLE_OAUTH_CLIENT_ID`, `GOOGLE_OAUTH_CLIENT_SECRET` | Aday; aktifliği doğrulanmadı |
| GitHub | GitHub depo erişimi | `GITHUB_CLIENT_ID`, `GITHUB_CLIENT_SECRET (veya GitHub App)` | Aday; aktifliği doğrulanmadı |
| Slack | slack read, slack write | `SLACK_CLIENT_ID`, `SLACK_CLIENT_SECRET` | Aday; aktifliği doğrulanmadı |
| Instagram/Facebook (Meta) | Instagram yayın, facebook publish, social insights | `META_APP_ID`, `META_APP_SECRET` | Aday; aktifliği doğrulanmadı |
| TikTok | tiktok publish | `TIKTOK_CLIENT_KEY`, `TIKTOK_CLIENT_SECRET` | Aday; aktifliği doğrulanmadı |
| X | x publish | `X_CLIENT_ID`, `X_CLIENT_SECRET` | Aday; aktifliği doğrulanmadı |
| LinkedIn | linkedin publish | `LINKEDIN_CLIENT_ID`, `LINKEDIN_CLIENT_SECRET` | Aday; aktifliği doğrulanmadı |
| Pinterest | pinterest publish | `PINTEREST_APP_ID`, `PINTEREST_APP_SECRET` | Aday; aktifliği doğrulanmadı |
| iyzico (aday) | ödeme, marketplace payout | `IYZICO_API_KEY`, `IYZICO_SECRET_KEY` | Aday; aktifliği doğrulanmadı |
| PayTR (aday) | ödeme | `PAYTR_MERCHANT_ID`, `PAYTR_MERCHANT_KEY`, `PAYTR_MERCHANT_SALT` | Aday; aktifliği doğrulanmadı |

**Sosyal medya ve GitHub bağlantıları:** API anahtarı tek başına müşterinin hesabını açmaz. Müşteri kendi hesabına OAuth izni verir; yayın, dosya, depo erişimi bu izinle yapılır. Ödeme hizmeti seçimi ve komisyon yüzdeleri henüz kesinleşmedi.

## 1. SABİT EKRAN DÜZENİ

- **Sol ana menü:** Yeni Sohbet, Sohbetler, Arama, Projeler, Kitaplık, Zamanlananlar ve aşağıdaki üretim kategorileri. Alt işlem kartları **sol menüde açılan alt menüler olmayacak**.
- **Kategori sayfası:** Üstte sayfa adı ve kısa açıklama → aktif konuşma / sohbet yazma alanı → sohbet kutusunun **hemen altında** kategorinin alt işlem kartları, filtreleri ve araması → daha aşağıda o kategoriye özel **Topluluk Pazaryeri**.
- **Karta tıklayınca:** Aynı sohbetin içinde seçili iş başlığıyla **dinamik form** açılır; gerekli resim, video, ses, belge ve bilgi kutuları yüklenir; kullanıcı aynı sohbette yazmaya devam eder; alakasız alanlar gizlenir.
- **Her işlemde:** Otomatik / manuel model seçimi, işlem süresi/çıktı ölçüsü, maliyet/kredi tahmini, dosya ekleme, gönder, iş ilerlemesi, durdur/yeniden dene, çıktı önizleme, düzenle/yeniden üret, indir, projeye kaydet, pazaryerine koy.
- **Mobil:** Sol menü kapanır, kartlar yatay/ızgara düzende kaydırılabilir; sohbet ve dinamik alanlar kaybolmaz.
- **Ortak hafıza:** Sohbet/ekler/proje durumu Ana Beyin tarafında tutulur. GPT → Claude → Gemini geçişi aynı sohbet ID’si ve izinli bağlam üzerinden devam eder; sağlayıcıların kendi hafızasına güvenilmez.
- **Video özel kuralı:** Avatar ayrı sol menü veya ana kategori **değildir**; Video Stüdyosu kartları içindedir.
- **Kullanıcıya görünen özellik ≠ hazır API:** Katalog kartı ancak ilgili sağlayıcının etkin/izinli API’si ve gerçek uçtan uca testi varsa aktif açılır; diğerinde “yakında / erişim bekleniyor” görünür. Sağlayıcıların uygulama özellikleri, ticari API’lerinde birebir bulunmayabilir.

### 1.1. Kategori sayfası yerleşimi (kullanıcı akışı)

```text
[ANA BEYİN]    [Sol menü]
------------------------------------------------------------
Video Stüdyosu                      [Model: Otomatik ▼]
Konuşma geçmişi ve asistan cevapları
┌────────────────────────────────────────────────────────┐
│ Bu videoda ne yapmak istiyorsunuz?                       │
│ [Mesaj yaz / dosya + / mikrofon]                         │
└────────────────────────────────────────────────────────┘
[ALT İŞLEM ARA...]  [Reels] [Shorts] [Yüz] [Avatar] ...
[Kart: Tek komut video] [Kart: 3 kişilik yüz değiştirme] ...
→ Seçilen kart sohbet altında DİNAMİK GÖREV FORMU açar
→ Form + sohbet talimatı → kredi tahmini → tek komut
→ [İşlem aşamaları] → önizleme → yeniden düzenle → MP4
------------------------------------------------------------
Topluluğun şablonları ve eserleri [Ara] [Popüler] [Yeni]
[Şablon kartı] [Fiyat/ kullanım ücreti] [Kullan ve üret]
```

### 1.2. Her kartın veri alanı standardı

Her alt işlem kartının sistem kaydında `category`, `subcategory_id`, `title`, `summary`, `icon`, `cover_preview`, `input_schema`, `output_schema`, `supported_api_capabilities`, `workflow_id`, `estimated_credit_range`, `rights_requirements`, `sharing_policy`, `marketplace_eligible`, `status` alanları bulunur. `input_schema` formu tanımlar, yalnız açıklama metni değildir. Kullanıcı formu doldururken sohbet metni ve ekler kaybolmaz.

### 1.3. Dinamik form alanı tipleri

`text`, `textarea`, `number`, `dropdown`, `multi_select`, `file_image`, `file_video`, `file_audio`, `file_document`, `multiple_images`, `image_crop`, `person_role_mapping`, `timeline_range`, `script_editor`, `subtitle_editor`, `url`, `language`, `aspect_ratio`, `duration`, `style_preset`, `consent_checkbox`, `rights_declaration`, `estimated_cost`, `publish_permission`.

## 2. İŞLEM TİPİNE GÖRE AÇILACAK GERÇEK FORM ALANLARI

Bir kartın sağında yazılan **Form tipi**, seçildiğinde otomatik açılacak alan grubunu belirtir. Kartın başlığı ayrıca sohbet komutuna bağlanır.
- **`C`** — Konu/metin, hedef, ton, dil, uzunluk; mevcut sohbet hafızası.
- **`F`** — PDF/DOCX/TXT/görsel yükle, istenen işlem, hedef çıktı, dil.
- **`R`** — Araştırma sorusu, ülke/dil, tarih aralığı, kaynak tercihi, çıktı biçimi.
- **`I`** — Açıklama, stil, en-boy oranı, çıktı sayısı, çözünürlük, marka öğeleri (isteğe bağlı).
- **`IE`** — 1+ kaynak görsel, düzenlenecek bölge/nesne, komut, çıktı ölçüsü.
- **`IF`** — Kaynak görsel, kişi fotoğrafları, kişi → hedef eşleşmesi, kullanım izni beyanı.
- **`IB`** — CSV/ürün listesi, kaynak görseller, şablon, ölçüler, toplu çıktı sayısı.
- **`VT`** — Fikir/senaryo, süre, oran (9:16/16:9/1:1), dil, stil, ses ve müzik, isteğe bağlı logo.
- **`VI`** — 1+ fotoğraf, hareket/çekim açıklaması, süre, oran, ses tercihi.
- **`VV`** — Kaynak video, düzenleme isteği, sahne aralığı, hedef süre ve oran.
- **`VF`** — İzinli kaynak video, kişi başı fotoğraf (1–6), hedef karakter eşleme, sahneler, rıza/lisans beyanı.
- **`VA`** — İzinli portre/karakter fotoğrafı veya avatar, konuşma metni ya da ses, dil, ses ve rıza.
- **`VL`** — Uzun video/URL, klip adedi, klip süresi, platform, altyazı ve seçim ölçütü.
- **`VD`** — Video, kaynak/hedef diller, ses yöntemi, altyazı, konuşmacı sayısı, metin onayı.
- **`VO`** — Konu, hedef kitle, platform, süre, referans medya, logo, senaryo, ses, müzik, altyazı, bütçe.
- **`AT`** — Metin, dil, ses, ton, hız, format, süre.
- **`AA`** — Ses/video dosyası, kaynak dil, hedef dil, çıktı modu, transkript.
- **`AC`** — İzinli ses örneği, yetki/rıza, metin, ses kimliği, dil ve ton.
- **`M`** — Müzik briefi, tür, tempo, süre, vokal/enstrümantal, söz, kullanım lisansı.
- **`ME`** — Kaynak ses, efekt/ayırma/temizleme tercihi, çıktı formatı.
- **`K`** — İzinli Git deposu/ZIP, yapılacak iş, teknoloji, ortam, test, değişiklik onayı.
- **`W`** — Site fikri, marka/logo, sayfalar, işlevler, cihaz hedefi, yayın/alan adı.
- **`AP`** — Uygulama fikri, Android/iOS hedefi, ekranlar, izinler, tasarım, test hedefleri.
- **`G`** — Oyun türü, platform, karakter/grafik, mekanik, seviye, puan ve kontroller.
- **`D`** — Belge tipi, açıklama veya kaynak dosyalar, biçim, sayfa, dil, şablon.
- **`X`** — Excel/CSV/JSON veya bağlantı, analiz sorusu, ölçütler, filtreler, grafik/rapor.
- **`3`** — Eskiz/fotoğraf/metin, gerçek ölçüler, malzeme, çıktı formatı, hedef kullanım.
- **`E`** — Konu, yaş/seviye, dil, öğrenme hedefi, süre, soru sayısı ve cevap anahtarı.
- **`AG`** — Ajan rolü, yönerge, izinli araçlar/API’ler, dosyalar, yetki sınırları, bütçe.
- **`AU`** — Tetikleyici/tarih/sıklık, bağlı hesaplar, işlem adımları, onay ve bildirim.
- **`S`** — Platformlar, metin/foto/video, hedef kitle, zaman, gönderi biçimi, yayın izni.
- **`B`** — Ürün/hizmet, hedef kitle, fiyatlar, kampanya, marka, kanallar, satış hedefi.
- **`OF`** — İş hedefi, veri/şirket bilgisi, dosyalar, şablon, hesaplama ve çıktı biçimi.
- **`MP`** — Adres/konum, tarih, duraklar, seyahat türü, bütçe, harita/rota çıktısı.

## 3. BÜTÜN ANA KATEGORİLER, 431 HAZIR İŞLEM VE HER İŞLEMİN YAPAY ZEKÂLARI

**Nasıl okunur?** Kart başlığı müşterinin tıkladığı isimdir. “Bilgi / dosya” o kart seçilince sohbet içinde açılır. “Model ve araç seçimi”nde sağlayıcılar görevlere ayrılır. “Gereken anahtarlar” yöneticiye aittir; seçeneklerden **yalnız kullanılanlar** gerekir. “Nasıl işler?” otomasyonun kısa açıklamasıdır.

### 1. Sohbet ve Yazı — 20 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Yeni sohbet | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 2 | Sohbeti GPT/Claude/Gemini arasında sürdür | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 3 | İki modelden ikinci görüş al | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 4 | Modelleri yan yana karşılaştır | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 5 | Yüklenen dosyayla sohbet | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 6 | Fotoğraf/grafik üzerinden soru sor | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 7 | Canlı sesli sohbet | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech<br>**Canlı sesli sohbet:** OpenAI GPT, Google Gemini / ilgili Google modeli<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 8 | Yazıyı kısalt ve özetle | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 9 | Yazıyı yeniden yaz/dilini düzelt | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 10 | E-posta ve iş mesajı yaz | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 11 | Dilekçe/mektup oluştur | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 12 | Blog ve makale hazırla | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 13 | Hikâye/roman/senaryo yaz | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 14 | İçerik fikirleri üret | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 15 | Toplantıdan özet ve görev çıkar | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 16 | Kişisel notları düzenle | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 17 | Karşılaştırmalı karar tablosu oluştur | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 18 | İş ilanı ve özgeçmiş metni yaz | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 19 | Marka üslubuyla yaz | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 20 | Projeye bağlı uzun süreli sohbet | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 2. Araştırma ve Bilgi — 18 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Web üzerinde kaynaklı araştırma | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 2 | Derin çok adımlı araştırma | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 3 | Rakip işletme/ürün analizi | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 4 | Fiyat ve özellik karşılaştırma | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 5 | Pazar/sektör araştırması | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 6 | Akademik makale arama | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity<br>**Ozel kaynak:** OpenAlex, Crossref, arXiv, PubMed | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY`; `NCBI_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 7 | Bilimsel literatür özeti | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity<br>**Ozel kaynak:** OpenAlex, Crossref, arXiv, PubMed | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY`; `NCBI_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 8 | Patent araştırması | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity<br>**Ozel kaynak:** OpenAlex, Crossref, arXiv, PubMed | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY`; `NCBI_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 9 | Mevzuat ve resmî belge tarama | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity<br>**Ozel kaynak:** OpenAlex, Crossref, arXiv, PubMed | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY`; `NCBI_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 10 | Şirket/marka geçmişi araştırma | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 11 | Gündem/haber derlemesi | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 12 | Haber kaynaklarını çapraz kontrol | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 13 | Ürün/hizmet sağlayıcı bulma | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 14 | Kaynaklı rapor oluşturma | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 15 | Web sayfasını açıklama/özetle | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 16 | Araştırmadan sunum/PDF üret | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 17 | Sürekli konu takibi (izinli) | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 18 | Rakip özellik matrisi hazırlama | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 3. Görsel ve Tasarım — 36 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Metinden görsel üret | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 2 | Referans fotoğrafla görsel üret | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 3 | Fotoğrafın bir bölümünü değiştir | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 4 | Fotoğraf arka planını kaldır | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 5 | Arka planı başka mekâna taşı | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 6 | Nesne ekle veya kaldır | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 7 | Fotoğrafı genişlet (outpainting) | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 8 | Eski fotoğraf onarımı | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 9 | Netleştir/çözünürlük yükselt | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 10 | Renklendir/siyah-beyaza dönüştür | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 11 | Yüz değiştirme (izinli) | Kaynak fotoğraf, yeni kişi fotoğrafları, yüz eşleştirme ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. **Önemli:** Birebir çok kişili kimlik/yüz değiştirme desteği API düzeyinde henüz doğrulanmadı; somut lisanslı endpoint seçilmeden kullanıma açılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 12 | Çok kişili grup fotoğrafı dönüştür | Kaynak fotoğraf, yeni kişi fotoğrafları, yüz eşleştirme ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. **Önemli:** Birebir çok kişili kimlik/yüz değiştirme desteği API düzeyinde henüz doğrulanmadı; somut lisanslı endpoint seçilmeden kullanıma açılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 13 | Portre/vesikalık/kart fotoğrafı | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 14 | Profesyonel profil fotoğrafı | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 15 | Çizgi film/anime/karikatür | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 16 | Çocuk kitabı illüstrasyonu | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 17 | Logo tasarla | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 18 | Kurumsal kimlik ve marka kiti | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 19 | Afiş/poster oluştur | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 20 | Reklam banner'ı | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 21 | Instagram gönderisi | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 22 | Instagram Story tasarımı | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 23 | YouTube küçük resim (thumbnail) | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 24 | YouTube kanal kapağı | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 25 | Ürün e-ticaret fotoğrafı | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 26 | Ürün arka plan/sahne değiştirme | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 27 | Sanal kıyafet deneme (izinli) | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 28 | İç mekân dekorasyon önizlemesi | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 29 | Dış cephe/gayrimenkul görseli | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 30 | Davetiye/kartvizit/menü | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 31 | İnfografik/grafik poster | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 32 | Toplu ürün görseli (CSV) | Ürün listesi/CSV, fotoğraflar, şablon ve üretim sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Ürün listesi ve şablon birleştirilerek her ürün için tekrarlanabilir görseller üretilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme, csv oku, toplu gorev kuyrugu. |
| 33 | Kolaj/fotoğraf albümü | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 34 | Görseldeki yazıyı düzenle | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 35 | Şeffaf PNG/ikon/set üret | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 36 | Marka renkleriyle varyasyon | Ürün listesi/CSV, fotoğraflar, şablon ve üretim sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY` | Ürün listesi ve şablon birleştirilerek her ürün için tekrarlanabilir görseller üretilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme, csv oku, toplu gorev kuyrugu. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 4. Video Stüdyosu (Avatar Dahil) — 66 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Tam otomatik video — fikirden MP4'e | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Senaryo → sahneler → video API → seslendirme API → müzik API → altyazı → sunucuda FFmpeg montajı → tek MP4. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 2 | Instagram Reels oluştur | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 3 | TikTok videosu oluştur | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 4 | YouTube Shorts oluştur | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 5 | YouTube yatay uzun video oluştur | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 6 | Facebook Reels/video gönderisi | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 7 | Instagram Story video | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 8 | WhatsApp Status video | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 9 | LinkedIn ürün/iş videosu | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 10 | X için kısa video | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 11 | Ürün reklam filmi | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 12 | E-ticaret ürün tanıtımı | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 13 | Mağaza/kafe/otel tanıtımı | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 14 | Emlak ilanı/gezi videosu | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 15 | Otomobil ilan/tanıtım videosu | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 16 | Seyahat/gezi videosu | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 17 | Haber metninden video haber | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 18 | Blog yazısından video | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 19 | Metinden video (text-to-video) | Video konusu, süre, görüntü oranı, stil ve müzik/ses tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY` | Seçilen video API’si görüntüyü oluşturur; gerekiyorsa ses/altyazı eklenir ve çıktı sohbetten indirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 20 | Fotoğraftan video (image-to-video) | Fotoğraf yükleme, hareket açıklaması, video süresi ve boyut. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY` | Seçilen video API’si görüntüyü oluşturur; gerekiyorsa ses/altyazı eklenir ve çıktı sohbetten indirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 21 | Eski fotoğrafı canlandır | Fotoğraf yükleme, hareket açıklaması, video süresi ve boyut. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY` | Seçilen video API’si görüntüyü oluşturur; gerekiyorsa ses/altyazı eklenir ve çıktı sohbetten indirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 22 | Çoklu fotoğraftan slayt/video | Fotoğraf yükleme, hareket açıklaması, video süresi ve boyut. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY` | Seçilen video API’si görüntüyü oluşturur; gerekiyorsa ses/altyazı eklenir ve çıktı sohbetten indirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 23 | Referans videodan yeni video | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 24 | Video stilini değiştir | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 25 | Video arka planını değiştir | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 26 | Video nesnesi sil/değiştir | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 27 | Videoda ürünü/ambalajı değiştir | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 28 | Kişi yüzü değiştirme (rıza ile) | Kaynak video, her kişi için ayrı fotoğraf, videodaki hedef kişi eşlemesi ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Video ve izinli kişi fotoğrafı alınır; uygun yüz değiştirme API’si doğrulanana kadar kart pasiftir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 29 | İki kişilik videoda iki yüzü değiştir | Kaynak video, her kişi için ayrı fotoğraf, videodaki hedef kişi eşlemesi ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | İki ayrı kişinin fotoğrafları ve video eşleştirilir. Bu özel işlemi destekleyen gerçek API doğrulanmadan etkinleştirilmez. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 30 | Üç kişilik videoda üç yüzü değiştir | Kaynak video, kişi 1/2/3 için ayrı fotoğraf, videodaki hedef A/B/C, açık izin ve çıktı ayarı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Üç kişi için video + üç fotoğraf + kişi eşleştirme alınır. Çok kişili yüz değiştirmeyi destekleyen lisanslı bir API henüz seçilmedi; bu kart şimdilik kullanıma kapalıdır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 31 | Kalabalık videoda kişi-rol eşle | Kaynak video, her kişi için ayrı fotoğraf, videodaki hedef kişi eşlemesi ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Video ve kişi fotoğrafları eşleştirilir; yüz değiştirme için somut izinli API doğrulanana kadar çalıştırılmaz. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 32 | Kendi yüzümle film sahnesi oluştur | Kaynak video, her kişi için ayrı fotoğraf, videodaki hedef kişi eşlemesi ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Video ve kişi fotoğrafları eşleştirilir; yüz değiştirme için somut izinli API doğrulanana kadar çalıştırılmaz. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 33 | Kendimi farklı kıyafet/mekânda göster | Kaynak video, her kişi için ayrı fotoğraf, videodaki hedef kişi eşlemesi ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Video ve kişi fotoğrafları eşleştirilir; yüz değiştirme için somut izinli API doğrulanana kadar çalıştırılmaz. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 34 | Kendimi dans videosuna yerleştir | Kaynak video, her kişi için ayrı fotoğraf, videodaki hedef kişi eşlemesi ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Video ve kişi fotoğrafları eşleştirilir; yüz değiştirme için somut izinli API doğrulanana kadar çalıştırılmaz. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 35 | Kendimi tarihi/fantastik sahneye yerleştir | Kaynak video, her kişi için ayrı fotoğraf, videodaki hedef kişi eşlemesi ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Videoda yüz değiştirme:** Henüz doğrulanmış API yok (pasif) | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Video ve kişi fotoğrafları eşleştirilir; yüz değiştirme için somut izinli API doğrulanana kadar çalıştırılmaz. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. **Önemli:** Üç veya daha çok gerçek kişinin videosunda yüz değiştirme için doğrulanmış lisanslı API ve rıza/kimlik politikası gerekli; genel video API otomatik destekli sayılmaz. **Erişim:** gerekli API henüz seçilmediği için bu özel işlem etkin değildir. |
| 36 | İzinli konuşan fotoğraf oluştur | İzinli portre/karakter, konuşma metni veya ses, dil, seçilen ses ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşan avatar:** HeyGen, Runway, Hedra | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `RUNWAY_API_KEY`; `HEDRA_API_KEY` | Seçilen avatar/video API’si izinli karakteri konuşturur; konuşma metni veya sesle oluşturur. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 37 | Sanal sunucu/haber spikeri | İzinli portre/karakter, konuşma metni veya ses, dil, seçilen ses ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşan avatar:** HeyGen, Runway, Hedra | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `RUNWAY_API_KEY`; `HEDRA_API_KEY` | Seçilen avatar/video API’si izinli karakteri konuşturur; konuşma metni veya sesle oluşturur. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 38 | Konuşan karakter/mascot | İzinli portre/karakter, konuşma metni veya ses, dil, seçilen ses ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşan avatar:** HeyGen, Runway, Hedra | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `RUNWAY_API_KEY`; `HEDRA_API_KEY` | Seçilen avatar/video API’si izinli karakteri konuşturur; konuşma metni veya sesle oluşturur. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 39 | Konuşan evcil hayvan animasyonu | İzinli portre/karakter, konuşma metni veya ses, dil, seçilen ses ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşan avatar:** HeyGen, Runway, Hedra | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `RUNWAY_API_KEY`; `HEDRA_API_KEY` | Seçilen avatar/video API’si izinli karakteri konuşturur; konuşma metni veya sesle oluşturur. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 40 | Kurumsal eğitim avatarı | İzinli portre/karakter, konuşma metni veya ses, dil, seçilen ses ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşan avatar:** HeyGen, Runway, Hedra | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `RUNWAY_API_KEY`; `HEDRA_API_KEY` | Seçilen avatar/video API’si izinli karakteri konuşturur; konuşma metni veya sesle oluşturur. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 41 | Avatarlı ürün anlatımı | İzinli portre/karakter, konuşma metni veya ses, dil, seçilen ses ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşan avatar:** HeyGen, Runway, Hedra | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `RUNWAY_API_KEY`; `HEDRA_API_KEY` | Seçilen avatar/video API’si izinli karakteri konuşturur; konuşma metni veya sesle oluşturur. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 42 | Sesle dudak eşleme (lip-sync) | İzinli portre/karakter, konuşma metni veya ses, dil, seçilen ses ve rıza. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşan avatar:** HeyGen, Runway, Hedra | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `RUNWAY_API_KEY`; `HEDRA_API_KEY` | Seçilen avatar/video API’si izinli karakteri konuşturur; konuşma metni veya sesle oluşturur. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 43 | Video dili değiştir / dublaj | Video, mevcut dil, hedef dil, konuşmacılar ve altyazı seçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Dublaj / çeviri:** HeyGen, ElevenLabs, Runway<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `ELEVENLABS_API_KEY`; `RUNWAY_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses yazıya çevrilir; metin çevrilir; dublaj veya altyazı oluşturulup mevcut videoyla eşlenir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 44 | Videoya çok dilli altyazı ekle | Video, mevcut dil, hedef dil, konuşmacılar ve altyazı seçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Dublaj / çeviri:** HeyGen, ElevenLabs, Runway<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `HEYGEN_API_KEY`; `ELEVENLABS_API_KEY`; `RUNWAY_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses yazıya çevrilir; metin çevrilir; dublaj veya altyazı oluşturulup mevcut videoyla eşlenir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 45 | Uzun videodan 5–20 Shorts çıkar | Uzun video, kaç kısa video, klip süreleri, platform ve altyazı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Uzun videonun konuşması yazıya çevrilir; önemli bölümler seçilir ve FFmpeg ile 5–20 dikey kısa video kesilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 46 | Podcastten kısa kesitler çıkar | Uzun video, kaç kısa video, klip süreleri, platform ve altyazı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Uzun kayıt çözümleme ve sahne tespitiyle kısa kliplere bölünür; altyazı ve kadraj sunucu tarafında hazırlanır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 47 | Canlı yayın öne çıkan anları kes | Uzun video, kaç kısa video, klip süreleri, platform ve altyazı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Uzun kayıt çözümleme ve sahne tespitiyle kısa kliplere bölünür; altyazı ve kadraj sunucu tarafında hazırlanır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 48 | Sosyal medya trendine uyarlanmış kurgu | Uzun video, kaç kısa video, klip süreleri, platform ve altyazı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Uzun kayıt çözümleme ve sahne tespitiyle kısa kliplere bölünür; altyazı ve kadraj sunucu tarafında hazırlanır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 49 | Video otomatik altyazı | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 50 | Videodan sessizlik/dolgu sözü temizle | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 51 | Tek tık otomatik montaj | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 52 | Video intro/outro/logo ekle | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 53 | Sahne sahne storyboarddan video | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 54 | İki videoyu birleştir | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 55 | Dikey/yatay/kare yeniden kadrajla | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 56 | Sinematik renk/ışık düzeltme | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 57 | Video süresini uzat | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 58 | Video çözünürlüğünü yükselt | Video yükleme, hangi sahnenin değişeceği, süre ve oran. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video düzenleme:** Runway, HeyGen, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `HEYGEN_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Video yüklenir; uygun API ile düzenleme veya sunucuda kesme, altyazı, oran değiştirme, montaj yapılır. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 59 | Aynı videonun 3–10 varyasyonunu yap | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 60 | Ürün fotoğraflarından katalog videosu | Fotoğraf yükleme, hareket açıklaması, video süresi ve boyut. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY` | Seçilen video API’si görüntüyü oluşturur; gerekiyorsa ses/altyazı eklenir ve çıktı sohbetten indirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 61 | Referans karakteri tüm sahnelerde koru | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 62 | Şarkıya otomatik klip oluştur | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 63 | Düğün/doğum günü kutlama videosu | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 64 | İş başvurusu video sunumu | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 65 | Eğitim/how-to video | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 66 | Otomatik müzik+seslendirme+altyazı+montaj | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Video, konuşma ve müzik ayrı API’lerde hazırlanır; altyazı eklenir ve FFmpeg hepsini tek videoda birleştirir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 5. Ses ve Dublaj — 20 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Metinden ses oluştur (TTS) | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 2 | Doğal Türkçe seslendirme | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 3 | Sesli kitap seslendirme | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 4 | Reklam seslendirmesi | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 5 | Podcast anlatıcı sesi | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 6 | Ses kaydını yazıya çevir | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 7 | Video konuşmalarını yazıya çevir | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 8 | Sesli notları özetle | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 9 | Ses kaydını başka dile çevir | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 10 | Çok dilli dublaj | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech<br>**Video ve ses dublaj:** HeyGen, ElevenLabs, Runway | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `HEYGEN_API_KEY`; `ELEVENLABS_API_KEY`; `RUNWAY_API_KEY` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 11 | Toplantıyı metne ve kararlara dök | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 12 | Arka plan gürültüsünü kaldır | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. **Sunucu araçları:** ffmpeg ses isleme. |
| 13 | Sesi temizle ve seviyeyi eşitle | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 14 | İzinli kişisel ses klonu | İzinli ses örneği, rıza, konuşma metni, dil ve ton. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses klonlama izinli:** ElevenLabs, MiniMax / Hailuo | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY` | Kişinin açık izni ve ses örneği doğrulandıktan sonra sağlayıcının izinli ses özelliği kullanılır. **Önemli:** Gerçek kişinin rızası, platform/sağlayıcı uygunluğu, ses kimliği doğrulaması gerekli. |
| 15 | İki/çok konuşmacılı konuşma | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 16 | Telefona otomatik karşılama sesi | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 17 | Telaffuz ve aksan çalışması | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 18 | Metni farklı duyguyla seslendir | Seslendirilecek metin, dil, ses tipi, ton ve konuşma hızı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses uretimi:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Seçilen ses API’si verilen metni konuşmaya dönüştürür. |
| 19 | Sözcük/zaman kodlu SRT altyazı | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |
| 20 | Sesi konuşmacılara ayır | Ses/video yükleme, işlem, kaynak ve hedef dil. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı anlama:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Ses tanıma/çeviri API’si kayıt üzerinde çalışır; gerekirse metin/özet/altyazı hazırlanır. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 6. Müzik ve Ses Efektleri — 18 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Metinden özgün müzik üret | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 2 | Reklam jingle'ı oluştur | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 3 | YouTube giriş/çıkış müziği | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 4 | Podcast jeneriği | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 5 | Vokalli şarkı oluştur | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 6 | Enstrümantal fon müziği | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 7 | Sinema/fragman müziği | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 8 | Oyun müziği | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 9 | Meditasyon/ambiyans müziği | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 10 | Lo-fi/elektronik/pop/rock türleri | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 11 | Kısa sosyal medya fon müziği | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 12 | Söz yaz ve bestele | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 13 | Sesten vokal ayır | Ses dosyası, hangi seslerin ayrılacağı/düzeltileceği, çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses isleme:** Runway, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Yüklenen ses analiz edilir; ses ayrıştırma, düzeltme veya biçim dönüştürme yapılır. **Sunucu araçları:** ffmpeg ses isleme. |
| 14 | Enstrümanları ayır (stems) | Ses dosyası, hangi seslerin ayrılacağı/düzeltileceği, çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses isleme:** Runway, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Yüklenen ses analiz edilir; ses ayrıştırma, düzeltme veya biçim dönüştürme yapılır. **Sunucu araçları:** ffmpeg ses isleme. |
| 15 | Gürültü/ses efekti oluştur | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 16 | Videoya otomatik müzik yerleştir | Müzik fikri, tarz, tempo, süre, söz/vokal ve kullanım amacı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Müzik üretimi:** ElevenLabs, MiniMax / Hailuo, Google Lyria | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS` | Seçilen müzik API’si verilen tarz, süre ve söz bilgisine göre müzik/ses üretir. |
| 17 | Müziği kısalt/döngüye al | Ses dosyası, hangi seslerin ayrılacağı/düzeltileceği, çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses isleme:** Runway, ElevenLabs, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `ELEVENLABS_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Yüklenen ses analiz edilir; ses ayrıştırma, düzeltme veya biçim dönüştürme yapılır. **Sunucu araçları:** ffmpeg ses isleme. |
| 18 | Ses seviyelerini master et | Ses dosyası, hangi seslerin ayrılacağı/düzeltileceği, çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Ses isleme:** Runway, fal.ai, Replicate | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `RUNWAY_API_KEY`; `FAL_KEY`; `REPLICATE_API_TOKEN` | Yüklenen ses analiz edilir; ses ayrıştırma, düzeltme veya biçim dönüştürme yapılır. **Sunucu araçları:** ffmpeg ses isleme. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 7. Kodlama ve Yazılım — 22 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Sıfırdan kod üret | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 2 | Mevcut kodu açıkla | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 3 | Kod hatası bul ve düzelt | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 4 | GitHub deposunu incele | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 5 | Pull request taslağı hazırla | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 6 | Birim/entegrasyon testi yaz | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 7 | Testleri çalıştır ve hataları açıkla | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 8 | Kod güvenlik taraması | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 9 | Performans iyileştirme | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 10 | API endpoint oluştur | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 11 | API dokümantasyonu yaz | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 12 | Veritabanı şeması oluştur | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 13 | SQL sorgusu yaz/düzelt | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 14 | Python betiği oluştur | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 15 | JavaScript/TypeScript projesi | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 16 | Kod başka dile dönüştürme | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 17 | Kodu açıklamalı öğret | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 18 | Ekran görüntüsünden arayüz kodu | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 19 | Kod refactor/temizleme | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 20 | Docker/CI ayarlarını hazırla | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 21 | Sürüm karşılaştırması | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 22 | İzinli proje için incele-değiştir-test et | GitHub bağlantısı veya kod dosyaları, yapılacak değişiklik, dil ve test onayı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | İzinli kod projesi incelenir; istenen değişiklik ayrı kopyada hazırlanır, testten sonra kullanıcıya onay için sunulur. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 8. Web Sitesi, Mobil Uygulama ve Oyun — 26 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Kurumsal web sitesi oluştur | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 2 | E-ticaret sitesi oluştur | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 3 | Landing page/kampanya sayfası | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 4 | Portföy/kişisel site | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 5 | Blog/haber sitesi | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 6 | Rezervasyon/randevu sitesi | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 7 | Üyelik/abonelik sitesi | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 8 | SaaS yönetim paneli | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 9 | Online kurs/eğitim platformu | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 10 | Pazaryeri web sitesi | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 11 | Figma/görselden web sayfası | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 12 | Mevcut siteyi mobil uyumlu yap | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 13 | SEO ve hız iyileştirme | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 14 | Android uygulaması prototipi | Uygulama fikri, Android/iOS, ekranlar, özellikler ve izinler. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 15 | iOS uygulaması prototipi | Uygulama fikri, Android/iOS, ekranlar, özellikler ve izinler. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 16 | Tek kodla Android/iOS | Uygulama fikri, Android/iOS, ekranlar, özellikler ve izinler. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 17 | Uygulama ekran tasarımı | Uygulama fikri, Android/iOS, ekranlar, özellikler ve izinler. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 18 | Bildirim/oturum/ödeme entegrasyonu | Uygulama fikri, Android/iOS, ekranlar, özellikler ve izinler. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 19 | Mobil uygulama test paketi | Uygulama fikri, Android/iOS, ekranlar, özellikler ve izinler. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 20 | Basit 2D oyun oluştur | Oyun türü, hedef cihaz, karakterler, oyun kuralları ve görseller. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `MESHY_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 21 | Basit 3D oyun oluştur | Oyun türü, hedef cihaz, karakterler, oyun kuralları ve görseller. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `MESHY_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 22 | Bulmaca/kelime oyunu | Oyun türü, hedef cihaz, karakterler, oyun kuralları ve görseller. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `MESHY_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 23 | Hiper casual mobil oyun | Oyun türü, hedef cihaz, karakterler, oyun kuralları ve görseller. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `MESHY_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 24 | Oyun karakter ve bölüm üretimi | Oyun türü, hedef cihaz, karakterler, oyun kuralları ve görseller. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `MESHY_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 25 | Oyun test ve hata düzeltme | Oyun türü, hedef cihaz, karakterler, oyun kuralları ve görseller. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `MESHY_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 26 | Uygulama mağazası görselleri | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 9. Belgeler, PDF, Word, Sunum — 24 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Sıfırdan PDF oluştur | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 2 | PDF düzenle/birleştir/böl | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 3 | Taranmış PDF'yi okunur hale getir | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 4 | PDF'yi Word'e dönüştür | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 5 | Word belgesi oluştur | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 6 | Word'ü PDF'ye dönüştür | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 7 | PowerPoint sunumu oluştur | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 8 | Metinden 10–30 slayt sunum | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 9 | Sunum tasarımını yenile | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 10 | Excel çalışma kitabı oluştur | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 11 | Tablodan rapor hazırla | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 12 | Fatura/teklif şablonu | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 13 | CV/özgeçmiş | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 14 | Ön yazı/motivasyon mektubu | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 15 | İş planı/proje teklifi | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 16 | Toplantı tutanağı | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 17 | Sözleşme taslak şablonu | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 18 | Form/anket oluştur | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 19 | E-kitap/e-dergi hazırla | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 20 | Belge çevirisi ve biçimi koru | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 21 | Belge karşılaştırması | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 22 | PDF'den tablo çıkar | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 23 | Tarama/fişten Excel tablosu | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 24 | Dijital imzaya hazır belge | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 10. Veri, Grafik ve Analiz — 22 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | CSV/Excel dosyası analiz et | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 2 | Veri temizle/eksikleri düzelt | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 3 | Pivot tablo oluştur | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 4 | Grafik/dashboards oluştur | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 5 | KPI gösterge paneli | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 6 | Satış analizi | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 7 | Ürün kârlılığı analizi | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 8 | Gelir-gider/bütçe senaryosu | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 9 | Nakit akışı tablosu | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 10 | Müşteri segmentasyonu | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 11 | Stok ve sipariş analizi | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 12 | Talep tahmini | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 13 | Anket analizi | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 14 | Pazar karşılaştırma tablosu | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 15 | Web/API verisini rapora bağla | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 16 | SQL/veritabanı analitiği | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 17 | İstatistiksel testler | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 18 | Finansal veri görselleştirme | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 19 | Harita üzerinde veri gösterimi | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 20 | Tekrarlayan rapor otomasyonu | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 21 | Matematik/denklem çözme | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 22 | Bilimsel hesaplama | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 11. 3D, Mimari ve CAD — 20 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Metinden 3D model | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 2 | Fotoğraftan 3D model | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 3 | Ürün 3D mockup | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 4 | 3D karakter oluştur | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 5 | 3D avatar/mascot modelle | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 6 | Mobilya 3D tasarımı | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 7 | İç mekân 3D yerleşimi | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 8 | Ev planını 3D'ye çevir | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 9 | Dış cephe görselleştirme | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 10 | Peyzaj/bahçe tasarımı | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 11 | Stand/mağaza tasarımı | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 12 | Ambalaj/kutu 3D tasarım | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 13 | 3D baskıya uygun STL | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. **Önemli:** AI 3D mesh ile ölçü hassasiyetli CAD aynı değildir; mekanik doğruluk kullanıcı tarafından denetlenmeli. |
| 14 | CAD teknik çizim taslağı | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. **Önemli:** AI 3D mesh ile ölçü hassasiyetli CAD aynı değildir; mekanik doğruluk kullanıcı tarafından denetlenmeli. |
| 15 | GLB/OBJ/STL dosya dönüştürme | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. **Önemli:** AI 3D mesh ile ölçü hassasiyetli CAD aynı değildir; mekanik doğruluk kullanıcı tarafından denetlenmeli. |
| 16 | 3D ışıklandırma/render | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 17 | 3D ürün döndürme videosu | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 18 | Oyun için 3D varlık | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 19 | 3D model optimize et | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. |
| 20 | Basit mekanik parça modeli | Metin, eskiz/fotoğraf, ölçüler, malzeme ve 3D çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**3D üretimi:** Meshy 3D | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MESHY_API_KEY` | 3D API’si uygun olduğunda taslak mesh üretebilir; ölçülü CAD ve format dönüşümleri ayrı araçlarla yapılır. **Sunucu araçları:** 3D dosyalarını Blender/FreeCAD ile dönüştürme. **Önemli:** AI 3D mesh ile ölçü hassasiyetli CAD aynı değildir; mekanik doğruluk kullanıcı tarafından denetlenmeli. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 12. Eğitim, Dil ve Öğrenme — 20 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Kişisel öğretmen/konu anlatımı | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 2 | Adım adım soru çözümü | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 3 | Test/çoktan seçmeli soru oluştur | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 4 | Deneme sınavı oluştur | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 5 | Flashcard/hafıza kartları | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 6 | Özet ders notları | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 7 | PDF'den öğrenme planı | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 8 | Dil öğrenme sohbeti | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 9 | İngilizce/Türkçe konuşma pratiği | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 10 | Telaffuz kontrolü | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Konuşmayı yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `ELEVENLABS_API_KEY`; `MINIMAX_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 11 | Metin çevirisi | Yazılacak konu, dil, ton ve uzunluk; mevcut konuşma. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Kullanıcının talebi ve önceki konuşma bağlamıyla ilgili API seçilir; sonuç aynı sohbet içinde gösterilir. |
| 12 | Belge çevirisi | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 13 | Kelime çalışma programı | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 14 | Çocuklar için hikâyeli öğrenme | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 15 | Matematik ve fen deney simülasyonu taslağı | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 16 | Ders sunumu oluştur | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 17 | Eğitim videosu hazırlama | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 18 | Soru bankasından quiz | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 19 | Mülakat/sertifika sınavı pratiği | Konu, öğrenci seviyesi, dil, öğrenme hedefi ve soru sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli eğitim içeriği/soru/çözüm hazırlar; gerekiyorsa ses veya belge oluşturulur. |
| 20 | Konuya göre öğrenme takvimi | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 13. Ajanlar ve Özel Asistanlar — 16 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Kişisel asistan oluştur | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 2 | Müşteri destek ajanı oluştur | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 3 | Satış temsilcisi ajanı | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 4 | Araştırmacı ajan | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 5 | Kodlama ajanı | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GITHUB_CLIENT_ID`; `GITHUB_CLIENT_SECRET`; **hesap bağlantısı:** GitHub (kullanıcı OAuth onayı) | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 6 | İçerik üretim ajanı | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 7 | Sosyal medya yöneticisi ajan | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 8 | E-ticaret ürün ajanı | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 9 | Ofis/yönetici sekreter ajanı | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 10 | E-posta sınıflandırma ajanı | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; **hesap bağlantısı:** Google (Gmail/Drive/Takvim/YouTube) (kullanıcı OAuth onayı) | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 11 | Belgelere dayalı bilgi asistanı | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 12 | Web tarama ajanı (izinli) | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 13 | Birden çok ajanla iş tamamlama | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 14 | Kendi şirketime özel ajan | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 15 | Paylaşılabilir ajan/skill paketi | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |
| 16 | Ajan rol ve erişim yönetimi | Ajanın görevi, kullanılmasına izin verilen araçlar, belgeler, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli, Grok, DeepSeek | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `XAI_API_KEY`; `DEEPSEEK_API_KEY` | Kullanıcının seçtiği sohbet modeli ve izin verdiği araçlarla çok aşamalı ajan çalışır. **Sunucu araçları:** ajan orkestrasyon, izin yonetimi. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 14. Otomasyon ve Zamanlananlar — 20 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Tek tık çok adımlı iş akışı | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 2 | Her gün/hafta zamanlanmış görev | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 3 | Gelen e-postayı özetle | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; **hesap bağlantısı:** Google (Gmail/Drive/Takvim/YouTube) (kullanıcı OAuth onayı) | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 4 | Yanıta göre takip hatırlatması | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 5 | RSS/haberden video oluştur | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 6 | Blogdan sosyal medya postu üret | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 7 | Video → Shorts → altyazı → yayın hazırlığı | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), LinkedIn, X (kullanıcı OAuth onayı) | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 8 | Ürün kataloğundan reklam seti | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 9 | Form doldurulunca CRM kaydı | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 10 | Randevu/etkinlik hatırlatması | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 11 | Fiyat değişince bilgilendir | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 12 | Site içeriği güncelleme takibi | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 13 | Dosya gelince PDF/Excel işle | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 14 | Takvimden görev listesi çıkar | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; **hesap bağlantısı:** Google (Gmail/Drive/Takvim/YouTube) (kullanıcı OAuth onayı) | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 15 | Onayla ve yayınla akışı | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), LinkedIn, X (kullanıcı OAuth onayı) | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 16 | Webhook/API bağlama | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 17 | Çoklu platform otomatik paylaşım | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), LinkedIn, X (kullanıcı OAuth onayı) | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 18 | Başarısız adımı yeniden dene/raporla | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 19 | Toplu dosya dönüşümü | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 20 | Otomasyon şablonunu paylaş/sat | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 15. Sosyal Medya Stüdyosu — 23 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Instagram içerik takvimi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 2 | Instagram Reels paketi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 3 | Instagram Story paketi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 4 | Instagram kaydırmalı gönderi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 5 | TikTok video paketi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 6 | YouTube Shorts paketi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 7 | YouTube video başlık/açıklama | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 8 | YouTube thumbnail paketi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 9 | Facebook gönderisi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 10 | LinkedIn gönderisi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 11 | X/Twitter konu dizisi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 12 | Pinterest pin seti | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 13 | WhatsApp Status paketi | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 14 | Platformlara otomatik boyut uyarlama | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 15 | Gönderi açıklaması/hashtag | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 16 | A/B başlık/kapak oluştur | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 17 | Haftalık/aylık toplu paylaşım planı | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 18 | Yorumlara yanıt taslağı | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 19 | Rakip içerik format analizi | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 20 | Marka içerik kiti | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 21 | Trendden özgün içerik fikri | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 22 | Gönderiyi farklı dillere uyarlama | Hangi platform, içerik metni, medya, hedef kitle, takvim ve yayın izni. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `META_APP_ID`; `META_APP_SECRET`; `TIKTOK_CLIENT_KEY`; `TIKTOK_CLIENT_SECRET`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `X_CLIENT_ID`; `X_CLIENT_SECRET`; `LINKEDIN_CLIENT_ID`; `LINKEDIN_CLIENT_SECRET`; `PINTEREST_APP_ID`; `PINTEREST_APP_SECRET`; **hesap bağlantısı:** Instagram/Facebook (Meta), TikTok, Google (Gmail/Drive/Takvim/YouTube), X, LinkedIn, Pinterest (kullanıcı OAuth onayı) | Sohbet modeli içerik hazırlar; gereken görsel/video API’si üretir; yayın için bağlı sosyal hesap izni gerekir. |
| 23 | Yayın öncesi onay takvimi | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 16. Pazarlama ve E-Ticaret — 24 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Ürün açıklaması yaz | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 2 | Ürün fotoğrafını reklama çevir | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 3 | Ürün satış videosu oluştur | Konu/ürün, fotoğraf, logo, platform, süre, seslendirme, müzik, altyazı, bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Video üretimi:** Kling AI, Runway, Google Gemini / ilgili Google modeli, MiniMax / Hailuo, Luma<br>**Seslendirme:** ElevenLabs, OpenAI GPT, MiniMax / Hailuo, Google Cloud Speech, Azure Speech<br>**Müzik:** ElevenLabs, MiniMax / Hailuo, Google Lyria<br>**Altyazı / konuşma yazıya:** OpenAI GPT, Deepgram, AssemblyAI, Google Cloud Speech, Azure Speech | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `KLING_API_KEY`; `RUNWAY_API_KEY`; `MINIMAX_API_KEY`; `LUMA_API_KEY`; `ELEVENLABS_API_KEY`; `GOOGLE_CLOUD_CREDENTIALS`; `AZURE_SPEECH_KEY`; `AZURE_SPEECH_REGION`; `DEEPGRAM_API_KEY`; `ASSEMBLYAI_API_KEY` | Önce kısa senaryo ve sahne planı hazırlanır; gereken video, ses, müzik API’leri çalışır; sonuç sunucuda birleştirilir. **Sunucu araçları:** Sunucuda video montajı (FFmpeg), Video üretim kuyruğu ve dosya yönetimi, Video önizlemesi. |
| 4 | Meta reklam metni/yaratıcı | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 5 | Google reklam metni | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 6 | TikTok reklam kreatifi | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 7 | Reklam A/B varyasyonları | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 8 | E-posta kampanya serisi | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 9 | SMS/WhatsApp kampanya metni | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 10 | Kampanya landing page | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 11 | SEO ürün ve kategori metinleri | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 12 | Amazon/Trendyol pazaryeri listeleme metni | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 13 | Dropshipping ürün sayfası | Site fikri, logo, sayfalar, işlevler, örnekler ve yayın tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Seçilen kod modeli taslak üretir; sunucudaki test/derleme araçları sonucu denetler ve önizleme sunar. **Sunucu araçları:** İzole kod çalıştırma ve test, GitHub/Git işlemleri ve testler, Değişiklik için kullanıcı onayı. |
| 14 | Katalog PDF oluştur | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 15 | Broşür/menü/fiyat listesi | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 16 | Marka sloganı ve kimliği | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 17 | Müşteri persona çıkar | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 18 | Rakip fiyat karşılaştırması | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 19 | Ürün paketleme/mockup | Düzenlenecek fotoğraflar, değişiklik komutu ve işaretli alan. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Yüklenen görsel işlenir; API’nin gerçekten desteklediği düzenleme uygulanır; hak/izin kontrol edilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 20 | Kupon/indirim kampanyası | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 21 | Kampanya takvimi | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 22 | Toplu ürün reklamı (CSV) | Ürün listesi/CSV, fotoğraflar, şablon ve üretim sayısı. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel düzenleme:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Adobe Firefly, Runway<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `ADOBE_CLIENT_ID`; `ADOBE_CLIENT_SECRET`; `RUNWAY_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün listesi ve şablon birleştirilerek her ürün için tekrarlanabilir görseller üretilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme, csv oku, toplu gorev kuyrugu. |
| 23 | Satış hunisi taslağı | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |
| 24 | Müşteri yorumlarını özetle | Ürün/hizmet, hedef kitle, kampanya, marka ve fiyat bilgisi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İş için görsel:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY` | Ürün ve hedef kitle üzerinden reklam, içerik veya kampanya taslağı oluşturulur; istenirse görsel/video API’si eklenir. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 17. İş, Ofis ve Verimlilik — 20 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | İş planı oluştur | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 2 | Proje yol haritası | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 3 | Gantt/görev planı | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 4 | Toplantı gündemi/tutanağı | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 5 | Teklif ve fiyat dosyası | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 6 | Bütçe planı | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 7 | Kâr/zarar senaryosu | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 8 | Raporlama paneli | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 9 | İnsan kaynakları ilan taslağı | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 10 | Mülakat soru seti | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 11 | Çalışan eğitim sunumu | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 12 | Müşteri yanıt merkezi | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; `SLACK_CLIENT_ID`; `SLACK_CLIENT_SECRET`; **hesap bağlantısı:** Google (Gmail/Drive/Takvim/YouTube), Slack (kullanıcı OAuth onayı) | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 13 | CRM veri düzenleme | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 14 | Ürün/hizmet karşılaştırması | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. |
| 15 | Operasyon kontrol listesi | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 16 | Kurumsal bilgi bankası | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 17 | Çeviri ve çok dilli doküman | Belge veya fotoğraf yükleme, yapılacak işlem ve çıktı türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Belge ve görsel anlama:** OpenAI GPT, Google Gemini / ilgili Google modeli, Claude, Mistral | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `MISTRAL_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF/Word dosyasını okuma, PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 18 | Aylık faaliyet raporu | İş konusu, şirket/dosya bilgisi, beklenen rapor veya belge. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet modeli iş içeriğini düzenler; gerektiğinde Excel, rapor veya belge üretilir. **Sunucu araçları:** Rapor/PDF hazırlama. |
| 19 | Takvim/posta otomasyonu | Görev, tetikleyici/saat, bağlı hesap ve işlem-onay adımları. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_OAUTH_CLIENT_ID`; `GOOGLE_OAUTH_CLIENT_SECRET`; **hesap bağlantısı:** Google (Gmail/Drive/Takvim/YouTube) (kullanıcı OAuth onayı) | Zamanlayıcı görevi başlatır; seçilen API’lerle aşamalar yürütülür; dış hesaba işlem için izin gerekir. **Sunucu araçları:** zamanlayici, kuyruk, durum kayitlari. |
| 20 | Firma sunum dosyası | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

### 18. Harita, Seyahat ve Konum — 16 alt işlem

**Sayfa düzeni:** Sohbet kutusu → bu bölümün hazır işlem kartları → seçilen kartın sohbet içi formu ve model seçicisi → işlem sonucu → bu kategorinin pazaryeri.

| # | Müşterinin tıklayacağı hazır işlem | Sohbet içinde açılan dosya / bilgi alanları | Kullanıcının seçebileceği yapay zekâ ve API araçları | Gereken API anahtarları (seçilene göre) | Arka planda ne yapılacak? |
|---:|---|---|---|---|---|
| 1 | Rota ve durak planı | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Seçilen harita servisinden gerçek yol ve süre bilgileri gelir; seçilen sohbet modeli güzergâhı açıklar. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 2 | Çok duraklı gezi güzergâhı | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 3 | Yakındaki işletme/yer arama | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 4 | Seyahat gün gün program | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 5 | Ulaşım alternatifleri | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 6 | Bütçeli tatil planı | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 7 | Otel/konaklama karşılaştırması | Araştırma sorusu, ülke, tarih aralığı ve kaynak tercihi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**İnternet araştırması:** Tavily, Exa, Brave Search, SerpAPI, Perplexity | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `TAVILY_API_KEY`; `EXA_API_KEY`; `BRAVE_SEARCH_API_KEY`; `SERPAPI_API_KEY`; `PERPLEXITY_API_KEY` | Arama API’sinden gerçek kaynaklar gelir; sohbet modeli bağlantılı araştırma sonucu hazırlar. **Sunucu araçları:** Kaynakları karşılaştırma, Rapor/PDF hazırlama. **Önemli:** Harita/Places API gerçek zamanlı otel fiyatı veya rezervasyon garantisi sağlamaz; yetkili ek rezervasyon API gerekir. |
| 8 | Restoran keşfi | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 9 | Tur/transfer planlama | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 10 | Haritaya CSV adres yükleme | Excel/CSV veya veri bağlantısı, analiz sorusu, filtre ve grafik türü. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Veri güvenli çalışma alanında hesaplanır; sohbet modeli sonuçları açıklar; grafik/tablo üretilir. **Sunucu araçları:** İzole veri analizi, Excel/CSV düzenleme. |
| 11 | Bölge/pazar yer analizi | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 12 | Mesafe/süre hesaplama | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita servisinden mesafe ve seyahat süresi alınır; sohbet modeli açıklamayı yapar. Süreler tahmin edilmez. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 13 | Etkinlik/ziyaret ajandası | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |
| 14 | İşletme konum tanıtım görseli | Görsel açıklaması, stil, renk, ölçü, gerekiyorsa logo. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Görsel üretimi:** OpenAI GPT, Google Gemini / ilgili Google modeli, FLUX (Black Forest Labs), Recraft, Ideogram<br>**Harita / rota:** Google Maps, Mapbox | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `BFL_API_KEY`; `RECRAFT_API_KEY`; `IDEOGRAM_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN` | Görsel üretim API’si brief ve stil üzerinden görsel hazırlar; sonuç farklı boyutlara uyarlanabilir. **Sunucu araçları:** Sunucuda görseli uygun boyuta ve dosya biçimine dönüştürme. |
| 15 | Müşteriye rota PDF'i | Belge türü, yazılacak içerik, kaynak dosyalar ve çıktı biçimi. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Seçilen sohbet/görsel modelinden içerik alınır; sunucuda gerçek belge/PDF/Office dosyası hazırlanır. **Sunucu araçları:** PDF, Word, Excel ve sunum dosyası oluşturma/dönüştürme. |
| 16 | Konum bazlı saha planı | Başlangıç/varış konumları, duraklar, tarih, ulaşım türü ve bütçe. | **Sohbet / senaryo:** OpenAI GPT, Claude, Google Gemini / ilgili Google modeli<br>**Harita / rota:** Google Maps, Mapbox, openrouteservice | `OPENAI_API_KEY`; `ANTHROPIC_API_KEY`; `GOOGLE_AI_API_KEY`; `GOOGLE_MAPS_API_KEY`; `MAPBOX_ACCESS_TOKEN`; `ORS_API_KEY` | Harita API’si gerçek yer/rota verisi verir; sohbet modeli planı hazırlar; harita veya PDF sunulur. **Sunucu araçları:** Harita ve rota gösterimi, Rapor/PDF hazırlama. |

**Bu kategorinin pazaryeri:** Kullanıcı hak sahibi olduğu sonucu veya tekrar kullanılabilir şablonu açık izniyle yayımlar. Başkası ücretli şablonu başarıyla çalıştırırsa kararlaştırılan koşullara göre üretici payı hesaplanır.

## 4. ÖZEL DİNAMİK FORM ÖRNEKLERİ

### 4.1. Üç kişilik videoda üç kişinin yüzünü değiştirme

Kullanıcı **Video Stüdyosu → Üç kişilik videoda üç yüzü değiştir** kartına tıkladığında sohbet içinde şu alanlar açılır:

1. Kaynak video yükle (`file_video`, zorunlu).
2. Kişi 1 fotoğrafını yükle (`file_image`, zorunlu) → kaynak videodaki **hedef kişi A** seçimi.
3. Kişi 2 fotoğrafını yükle → hedef kişi B seçimi.
4. Kişi 3 fotoğrafını yükle → hedef kişi C seçimi.
5. Gerekirse hedef kişileri karelerde/önizlemede işaretle; sahne/zaman kodu eşlemesi yap.
6. Çıktı oranı, kalite ve varsa konuşma/ses değişimi seç.
7. Görsellerin ve videonun kullanım yetkisi/ilgili kişilerin rızası onayı (zorunlu).
8. Maliyet/kredi ve örnek kare önizlemesi → üretim → video önizleme → düzelt → indir → isterse hakları uygunsa paylaş.

**Hassas içerik kısıtı:** İzinsiz gerçek kişi yüz/ses değiştirme, aldatıcı kimlik taklidi, müstehcen veya mahrem içerik, reşit olmayan kişilerin sömürülmesi amacıyla kullanım sunulmaz; hak ve rıza kontrolü yalnız bir kutucuğu işaretlemeye indirgenmez. Sağlayıcının politikaları ve insan denetimi uygulanır.

### 4.2. Tek komutla eksiksiz Reels reklamı

Kullanıcı **Video Stüdyosu → Tam otomatik video** seçer. Gerekli alanlar: ürün/kampanya, hedef kitle, süre, dil, 9:16 oran, logo, ürün fotoğrafları, ses tipi, müzik türü, altyazı, kapanış çağrısı, yayın platformu, yaklaşık azami maliyet.

**Arka plan hattı:** sohbetten brief → senaryo → sahneler → görsel/video sağlayıcısına haricî API çağrıları → seslendirme API → izinli müzik API → altyazı/transkript → CPU tabanlı montaj → MP4 → kalite kontrol → kullanıcıya önizleme. Hizmetin tek çağrıda yapabildikleri tekrar oluşturulmaz; başarısız adımlar izlenir.

### 4.3. Uzun videodan 10 Shorts

Video yükleme / izinli URL → 10 klip → 20–60 sn hedef → en iyi bölümleri seç → 9:16 otomatik kadraj → altyazı stili → kapak ve başlıklar → ayrı dosyalar/ZIP.

### 4.4. PDF veya rapor

Kaynak dosyayı ekle → belge türü seç → alanları doldur → sohbette talimat ver → indirilebilir düzenlenebilir DOCX/XLSX/PPTX veya PDF. Biçim korunamadığında açıkça bildir.

### 4.5. Kodlama

İzinli GitHub depo bağlantısı veya ZIP → istenen geliştirme → teknoloji → sadece incele / taslak yama / test / yayın seçenekleri → diff önizlemesi → kullanıcı onayı. Gizli anahtarlar sohbet metninde gösterilmez.

## 5. BÜTÜN KATEGORİLERİN ALTINDA PAZARYERİ

**Ortak kural:** İçerik üretildiğinde kullanıcı **Paylaş / Pazaryerinde yayınla** seçeneğini görür. Ancak kullanıcı açıkça yayınlamadıkça sohbet, görsel, ses, proje dosyası veya şablon başka kullanıcıya açılmaz.

**İki ayrı ürün tipi:** (a) yeniden kullanılabilir hazır işlem **şablonu/iş akışı**; (b) lisansı uygun tamamlanmış **dijital eser** (video, fotoğraf, müzik, kod, CAD, belge). Her kartta örnek medya/thumbnail, üretici, açıklama, kullanılabilir alt kategori, giriş alanları, kullanım hakkı, ücret, çözünürlük/format, sürüm, değerlendirme ve `Kullan` / `Satın al` bulunur.

**Kullanım başına üretici kazancı:** Başkasının şablonu çalıştırılıp sonuç **başarıyla teslim edildiğinde**, kullanıcıdan tahsil edilen şablon kullanım bedelinin tanımlanan payı üreticinin bakiyesine yazılır. Tek seferlik eser satın alımında satış komisyonu oluşur. Taslak açmak, önizlemek veya başarısız üretim kazanç doğurmaz. Ücretsiz kullanımda üreticiye ödeme vaat ediliyorsa bunun kaynağı platform promosyon bütçesi olmalıdır; bedelsiz işlemden yoktan komisyon oluşmaz. Komisyon oranı, sabit taban ve minimum çekim tutarı **henüz kararlaştırılmamıştır**; yönetimden tanımlanacaktır.

**Her kategoride aynı akış:** `Paylaş` → lisans/çalıntı içerik kontrolü → kişisel veri/anahtar temizliği → görsellerden kullanıcıya özel yüz/ses/dosya ayrıştırma → fiyat/kullanım geliri belirleme → moderasyon → yayına al → başka kullanıcı `Şablonu kullan` → dinamik alanları doldur → kredi + telif göster → başarılı üretim → üretici defterine alacak → iade/itiraz süresi → ödeme.

**Ödeme kayıtları:** `creator_id`, `market_item_id`, `market_item_version`, `purchase_id`, `template_run_id`, `run_status`, `buyer_charge`, `provider_api_cost`, `platform_fee`, `creator_royalty`, `refund_state`, `payout_state`; tekrar webhook’tan iki kez ödeme yapılmaması için idempotency.

**Haklar:** Model API çıktılarına dair ticari kullanım hakları, sağlayıcı sözleşmesi ve üçüncü şahıs görsel/ses/video izinleri kontrol edilir. Satıcı kendisine ait olmayan hakları satamaz. Kişi fotoğrafları, ses örnekleri, özel sohbet geçmişi ve gizli marka dosyaları varsayılan olarak pazaryerine taşınmaz. Açık rıza ve izinsiz benzerlik taklidi kontrolleri geçerli.

### 5.1. Kategoriye göre örnek satılık ürün

| Kategori sayfası | Pazaryerinde satılabilecek ürün/şablon |
|---|---|
| Sohbet ve Yazı | Sohbeti GPT/Claude/Gemini arasında sürdür şablonu; Fotoğraf/grafik üzerinden soru sor dosyası/iş akışı |
| Araştırma ve Bilgi | Derin çok adımlı araştırma şablonu; Akademik makale arama dosyası/iş akışı |
| Görsel ve Tasarım | Referans fotoğrafla görsel üret şablonu; Nesne ekle veya kaldır dosyası/iş akışı |
| Video Stüdyosu (Avatar Dahil) | Instagram Reels oluştur şablonu; Facebook Reels/video gönderisi dosyası/iş akışı |
| Ses ve Dublaj | Doğal Türkçe seslendirme şablonu; Ses kaydını yazıya çevir dosyası/iş akışı |
| Müzik ve Ses Efektleri | Reklam jingle'ı oluştur şablonu; Enstrümantal fon müziği dosyası/iş akışı |
| Kodlama ve Yazılım | Mevcut kodu açıkla şablonu; Birim/entegrasyon testi yaz dosyası/iş akışı |
| Web Sitesi, Mobil Uygulama ve Oyun | E-ticaret sitesi oluştur şablonu; Rezervasyon/randevu sitesi dosyası/iş akışı |
| Belgeler, PDF, Word, Sunum | PDF düzenle/birleştir/böl şablonu; Word'ü PDF'ye dönüştür dosyası/iş akışı |
| Veri, Grafik ve Analiz | Veri temizle/eksikleri düzelt şablonu; Satış analizi dosyası/iş akışı |
| 3D, Mimari ve CAD | Fotoğraftan 3D model şablonu; Mobilya 3D tasarımı dosyası/iş akışı |
| Eğitim, Dil ve Öğrenme | Adım adım soru çözümü şablonu; Özet ders notları dosyası/iş akışı |
| Ajanlar ve Özel Asistanlar | Müşteri destek ajanı oluştur şablonu; İçerik üretim ajanı dosyası/iş akışı |
| Otomasyon ve Zamanlananlar | Her gün/hafta zamanlanmış görev şablonu; Blogdan sosyal medya postu üret dosyası/iş akışı |
| Sosyal Medya Stüdyosu | Instagram Reels paketi şablonu; YouTube Shorts paketi dosyası/iş akışı |
| Pazarlama ve E-Ticaret | Ürün fotoğrafını reklama çevir şablonu; TikTok reklam kreatifi dosyası/iş akışı |
| İş, Ofis ve Verimlilik | Proje yol haritası şablonu; Bütçe planı dosyası/iş akışı |
| Harita, Seyahat ve Konum | Çok duraklı gezi güzergâhı şablonu; Bütçeli tatil planı dosyası/iş akışı |

## 6. KARTLARIN DÜZENLENMESİ, AKTİFLİĞİ VE SAYFA TASARIMI

- **Üst sıra:** “Sık Kullanılanlar”, “Popüler”, “Yeni”, “Ücretsiz Başlangıç”, “İş İçin”, “Eğlence”, “Örnek Yükle” filtreleri; gerçek kullanım metriği olmadan “popüler” etiketi uydurulmaz.
- **Arama:** “üç kişiyi videoya koy”, “sesimi değiştir”, “üründen reklam yap” gibi doğal dil kart adı/etiketi eşleşmesine gider.
- **Kart üzerine gelince:** Kısa açıklama ve doğru örnek GIF/video; kart seçimi aynı sohbet içinde forma gider, başka konuya sıfırdan geçmez.
- **Formun minimum alanı:** O işlem için zorunlu olanlar; ileri seçenekler kapalı açılır panelde.
- **Hata:** Sağlayıcının gerçek API yeteneği yoksa kartta “API bağlantısı bekleniyor / desteklenmiyor”; sahte üretim, sahte çıktı yok.
- **Durum yönetimi:** `draft`, `needs-api`, `ready`, `beta`, `disabled`. Etkin kullanıcıya `ready` veya izinli `beta` gösterilir.
- **Yönetim:** Kart başlıkları, formlar, örnek medyalar, izinler, ücret/kredi, API eşlemesi ve pazaryeri komisyonu yönetici ekranından güncellenir; geliştiricinin kodu her kart için yeniden yazması gerekmez.
- **Önizleme:** Kullanıcı kendi fotoğrafını yükleyip yüz eşlemesi yaparken özel verisini üçüncü kişilerin örnek kartında göstermez.
- **Gizlilik:** Dosyalar varsayılan özel; yayımlama kullanıcı onayına bağlı; hesaplar arası veri karışımı yok.

## 7. LIBRECHAT’TEN GELEN VE ANA BEYİN’E ÖZGÜNLEŞECEK PARÇALAR

LibreChat mevcut sohbet/mesaj, model değişimi, dosya yükleme, kullanıcı oturumu, ajan/araç ve çoklu sağlayıcı desteğine sahiptir. Burada ürünün üzerine **Ana Beyin’e özgü kategori sayfası + dinamik işlem kartı + otomatik iş akışı + pazaryeri/telif + birleşik proje hafızası** geliştirilecek. Sol menü, grafik kimliği, kullanıcı yolları ve marka özgün tasarlanır; LibreChat’in kaynak lisansı ve telif bildirimleri korunur.

**Ayrım:** Bu dosyadaki yüzlerce kart, önerilen **ürün kapsamıdır**. Her kart için API desteği, maliyeti ve telif/mahremiyet uygunluğu ayrı doğrulanmadan “çalışıyor” sayılmaz. Dış API aboneliği ve ücretli erişim gerektiren modeller bağımsız satın alınır.

## 8. KURULUM DURUMU VE İSİM KURALLARI

- Bu belge **işlev ve sağlayıcı eşlemesidir**, çalışan uygulama veya satın alınmış API anahtarı değildir.
- Her sağlayıcı için somut model/sürüm, API endpoint, izin, fiyat ve kullanıcıya sunulacak yetenek gerçek entegrasyonda ayrıca doğrulanır.
- API sağlayıcısının herhangi bir aşamayı desteklemediği durumlarda alt işlem kartında “henüz kullanılamıyor” yazılır; sahte işlem sonucu üretilmez.
- LibreChat'in açık kaynak lisansı ve marka ayrımı gözetilerek **Ana Beyin** adı ve özgün ekran tasarımı kullanılır; üçüncü taraf kapalı tasarımlar birebir kopyalanmaz.
- Bu doküman **18 ana kategori ve 431 alt işlemin tamamını içerir**. Önceki metin tasarımının ekran, form ve pazaryeri kuralları korunmuş; her alt işleme yalnız yeni API seçimleri/anahtarlar/işleyiş açıklamaları eklenmiştir.

## 9. ANA BEYİN — TÜM ALT İŞLEMLER İÇİN SAYFA TASARIMI VE DİNAMİK FORM GELİŞTİRME TALİMATLARI

**Geliştirecek yapay zekâya görev:** Bu bölümdeki her başlığı gerçek müşteri ekranına dönüştür. Hazır kartlar sohbet kutusunun *altında*, kategoriye ait pazaryeri daha aşağıda bulunur. 431 kart sol menüye eklenmez; sol menü yalnız ana kategorileri gösterir. Avatar Video Stüdyosu'na dahildir. LibreChat üzerinde Ana Beyin'e ait özgün ekran bileşenlerini geliştir. Gerçek API ve kullanıcı izinleri olmadan çalışıyor görünümü sunma.

**Form motoru:** Her alt işlem için başlık, görünür kutular, zorunlu alanlar, kabul edilen dosyalar, alan adedi, koşullu alan, eşleştirme, model seçim aşaması, önizleme, çıktı, izin ve şablon ayarı kaydedilir. Kullanıcı kartı seçince kayıtlı alanlardan form otomatik oluşturulur; müşterinin oturumu ve sohbet geçmişi aynı kalır. Otomatik / Elle model seçimi bütün kartlarda vardır; seçimler üstteki API tablolarıyla bağlıdır. Gerçek API anahtarları müşteriye gösterilmez.

**Dört kişilik video örneği:** Satıcı video şablonunu yükler ve bunun için dört ayrı kişi resmi gerektiğini belirler. Hedef kişiler A/B/C/D olarak işaretlenir. Müşteri 'Kullan' dediğinde '1. Fotoğraf → A', '2. Fotoğraf → B', '3. Fotoğraf → C', '4. Fotoğraf → D' alanları aynı sohbet içinde açılır; küçük önizleme, fotoğraf değiştir/kırp, kişi işaretleme, izin onayı ve kredi gösterilir. Örnek kare onaylanır, sonra gerçek video API'si varsa işleme geçilir. Bunun yalnız fotoğrafları videoya koyma olmadığı; yüz takibi, izin ve sağlayıcı desteği gerektirdiği belirtilir. Başka şablonlarda kişi sayısı kadar kutu oluşturulur; kod değiştirmek gerekmez.

**Şablon satıcısı:** Satıcı alt işlemi seçer, örnek dosyasını ekler, alıcının değiştireceği alanları ve sayılarını belirler, sonucu test eder, kullanım ücreti ve lisans bildirir. **Alıcı:** Pazaryerinde daha satın almadan gerekli görsel/video/metin adedini, örnek çıktıyı, şablon ücretini ve ayrıca API üretim bedelini görür. Alıcı kullanımda kendi özel dosyalarını ekler; satıcının özel dosyalarına erişemez. Başarılı ücretli kullanımda komisyon hesaplanır; oran yönetim ayarından gelir.

**Referans siteler:** Hangi dış sitelerin örnek alınacağı daha sonra ayrı belgede belirtilecek. Bu MD içinde site linkleri bulunmaz.

### 9.1. Alt işlemlerin her birinin arayüzü

#### 1. Sohbet ve Yazı — 20 hazır işlem

##### 01-001 — Yeni sohbet

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Yeni sohbet** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yeni sohbet** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-002 — Sohbeti GPT/Claude/Gemini arasında sürdür

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sohbeti GPT/Claude/Gemini arasında sürdür** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sohbeti GPT/Claude/Gemini arasında sürdür** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-003 — İki modelden ikinci görüş al

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İki modelden ikinci görüş al** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İki modelden ikinci görüş al** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-004 — Modelleri yan yana karşılaştır

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Modelleri yan yana karşılaştır** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Modelleri yan yana karşılaştır** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-005 — Yüklenen dosyayla sohbet

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Yüklenen dosyayla sohbet** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yüklenen dosyayla sohbet** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-006 — Fotoğraf/grafik üzerinden soru sor

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Fotoğraf/grafik üzerinden soru sor** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fotoğraf/grafik üzerinden soru sor** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-007 — Canlı sesli sohbet

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Canlı sesli sohbet** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; Canli Ses: openai, google_gemini; Konusma Yaziya: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Canlı sesli sohbet** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-008 — Yazıyı kısalt ve özetle

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Yazıyı kısalt ve özetle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yazıyı kısalt ve özetle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-009 — Yazıyı yeniden yaz/dilini düzelt

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Yazıyı yeniden yaz/dilini düzelt** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yazıyı yeniden yaz/dilini düzelt** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-010 — E-posta ve iş mesajı yaz

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **E-posta ve iş mesajı yaz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **E-posta ve iş mesajı yaz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-011 — Dilekçe/mektup oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Dilekçe/mektup oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dilekçe/mektup oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-012 — Blog ve makale hazırla

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Blog ve makale hazırla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Blog ve makale hazırla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-013 — Hikâye/roman/senaryo yaz

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Hikâye/roman/senaryo yaz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Hikâye/roman/senaryo yaz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-014 — İçerik fikirleri üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İçerik fikirleri üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İçerik fikirleri üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-015 — Toplantıdan özet ve görev çıkar

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Toplantıdan özet ve görev çıkar** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Toplantıdan özet ve görev çıkar** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-016 — Kişisel notları düzenle

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kişisel notları düzenle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kişisel notları düzenle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-017 — Karşılaştırmalı karar tablosu oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır. İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Karşılaştırmalı karar tablosu oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Karşılaştırmalı karar tablosu oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-018 — İş ilanı ve özgeçmiş metni yaz

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İş ilanı ve özgeçmiş metni yaz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İş ilanı ve özgeçmiş metni yaz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-019 — Marka üslubuyla yaz

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Marka üslubuyla yaz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Marka üslubuyla yaz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 01-020 — Projeye bağlı uzun süreli sohbet

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Projeye bağlı uzun süreli sohbet** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Projeye bağlı uzun süreli sohbet** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 2. Araştırma ve Bilgi — 18 hazır işlem

##### 02-001 — Web üzerinde kaynaklı araştırma

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Web üzerinde kaynaklı araştırma** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Web üzerinde kaynaklı araştırma** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-002 — Derin çok adımlı araştırma

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Derin çok adımlı araştırma** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Derin çok adımlı araştırma** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-003 — Rakip işletme/ürün analizi

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Rakip işletme/ürün analizi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Rakip işletme/ürün analizi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-004 — Fiyat ve özellik karşılaştırma

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Fiyat ve özellik karşılaştırma** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fiyat ve özellik karşılaştırma** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-005 — Pazar/sektör araştırması

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Pazar/sektör araştırması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Pazar/sektör araştırması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-006 — Akademik makale arama

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Akademik makale arama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; Ozel Kaynak: openalex, crossref, arxiv, pubmed; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Akademik makale arama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-007 — Bilimsel literatür özeti

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Bilimsel literatür özeti** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; Ozel Kaynak: openalex, crossref, arxiv, pubmed; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Bilimsel literatür özeti** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-008 — Patent araştırması

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Patent araştırması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; Ozel Kaynak: openalex, crossref, arxiv, pubmed; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Patent araştırması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-009 — Mevzuat ve resmî belge tarama

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Mevzuat ve resmî belge tarama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; Ozel Kaynak: openalex, crossref, arxiv, pubmed; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mevzuat ve resmî belge tarama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-010 — Şirket/marka geçmişi araştırma

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Şirket/marka geçmişi araştırma** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Şirket/marka geçmişi araştırma** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-011 — Gündem/haber derlemesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Gündem/haber derlemesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Gündem/haber derlemesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-012 — Haber kaynaklarını çapraz kontrol

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Haber kaynaklarını çapraz kontrol** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Haber kaynaklarını çapraz kontrol** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-013 — Ürün/hizmet sağlayıcı bulma

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Ürün/hizmet sağlayıcı bulma** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün/hizmet sağlayıcı bulma** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-014 — Kaynaklı rapor oluşturma

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kaynaklı rapor oluşturma** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kaynaklı rapor oluşturma** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-015 — Web sayfasını açıklama/özetle

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Web sayfasını açıklama/özetle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Web sayfasını açıklama/özetle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-016 — Araştırmadan sunum/PDF üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Araştırmadan sunum/PDF üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Araştırmadan sunum/PDF üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-017 — Sürekli konu takibi (izinli)

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Sürekli konu takibi (izinli)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sürekli konu takibi (izinli)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 02-018 — Rakip özellik matrisi hazırlama

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Rakip özellik matrisi hazırlama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Rakip özellik matrisi hazırlama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 3. Görsel ve Tasarım — 36 hazır işlem

##### 03-001 — Metinden görsel üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Metinden görsel üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metinden görsel üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-002 — Referans fotoğrafla görsel üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Referans fotoğrafla görsel üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Referans fotoğrafla görsel üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-003 — Fotoğrafın bir bölümünü değiştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Fotoğrafın bir bölümünü değiştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fotoğrafın bir bölümünü değiştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-004 — Fotoğraf arka planını kaldır

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Fotoğraf arka planını kaldır** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fotoğraf arka planını kaldır** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-005 — Arka planı başka mekâna taşı

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Arka planı başka mekâna taşı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Arka planı başka mekâna taşı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-006 — Nesne ekle veya kaldır

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Nesne ekle veya kaldır** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Nesne ekle veya kaldır** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-007 — Fotoğrafı genişlet (outpainting)

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Fotoğrafı genişlet (outpainting)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fotoğrafı genişlet (outpainting)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-008 — Eski fotoğraf onarımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Eski fotoğraf onarımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Eski fotoğraf onarımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-009 — Netleştir/çözünürlük yükselt

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Netleştir/çözünürlük yükselt** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Netleştir/çözünürlük yükselt** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-010 — Renklendir/siyah-beyaza dönüştür

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Renklendir/siyah-beyaza dönüştür** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Renklendir/siyah-beyaza dönüştür** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-011 — Yüz değiştirme (izinli)

- **Kullanıcı bu karta bastığında açılacak ekran:** Kişi fotoğraf yuvaları; kişi→yüz işaretleme; İşleme özel: person role mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; kişi fotoğrafları; hedef yüz eşleştirmesi; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Yüz değiştirme (izinli)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yüz değiştirme (izinli)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-012 — Çok kişili grup fotoğrafı dönüştür

- **Kullanıcı bu karta bastığında açılacak ekran:** Kişi fotoğraf yuvaları; kişi→yüz işaretleme; İşleme özel: person role mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; kişi fotoğrafları; hedef yüz eşleştirmesi; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Çok kişili grup fotoğrafı dönüştür** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çok kişili grup fotoğrafı dönüştür** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-013 — Portre/vesikalık/kart fotoğrafı

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Portre/vesikalık/kart fotoğrafı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Portre/vesikalık/kart fotoğrafı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-014 — Profesyonel profil fotoğrafı

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Profesyonel profil fotoğrafı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Profesyonel profil fotoğrafı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-015 — Çizgi film/anime/karikatür

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Çizgi film/anime/karikatür** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çizgi film/anime/karikatür** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-016 — Çocuk kitabı illüstrasyonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Çocuk kitabı illüstrasyonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çocuk kitabı illüstrasyonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-017 — Logo tasarla

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Logo tasarla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Logo tasarla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-018 — Kurumsal kimlik ve marka kiti

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kurumsal kimlik ve marka kiti** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kurumsal kimlik ve marka kiti** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-019 — Afiş/poster oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Afiş/poster oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Afiş/poster oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-020 — Reklam banner'ı

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Reklam banner'ı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Reklam banner'ı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-021 — Instagram gönderisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **Instagram gönderisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram gönderisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-022 — Instagram Story tasarımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **Instagram Story tasarımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram Story tasarımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-023 — YouTube küçük resim (thumbnail)

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **YouTube küçük resim (thumbnail)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube küçük resim (thumbnail)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-024 — YouTube kanal kapağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **YouTube kanal kapağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube kanal kapağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-025 — Ürün e-ticaret fotoğrafı

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Ürün e-ticaret fotoğrafı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün e-ticaret fotoğrafı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-026 — Ürün arka plan/sahne değiştirme

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Ürün arka plan/sahne değiştirme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün arka plan/sahne değiştirme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-027 — Sanal kıyafet deneme (izinli)

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Sanal kıyafet deneme (izinli)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sanal kıyafet deneme (izinli)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-028 — İç mekân dekorasyon önizlemesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **İç mekân dekorasyon önizlemesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İç mekân dekorasyon önizlemesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-029 — Dış cephe/gayrimenkul görseli

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Dış cephe/gayrimenkul görseli** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dış cephe/gayrimenkul görseli** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-030 — Davetiye/kartvizit/menü

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Davetiye/kartvizit/menü** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Davetiye/kartvizit/menü** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-031 — İnfografik/grafik poster

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İnfografik/grafik poster** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İnfografik/grafik poster** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-032 — Toplu ürün görseli (CSV)

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme tablosu; toplu fotoğraf sonuçları. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün CSV listesi; fotoğraflar; şablon; adet. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır. CSV satırları şablonun görsel/metin alanlarıyla eşleştirilir; başarılı/başarısız her satır ayrı gösterilir.
- **Model/API seçimleri:** Üstteki **Toplu ürün görseli (CSV)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Toplu ürün görseli (CSV)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-033 — Kolaj/fotoğraf albümü

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Kolaj/fotoğraf albümü** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kolaj/fotoğraf albümü** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-034 — Görseldeki yazıyı düzenle

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Görseldeki yazıyı düzenle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Görseldeki yazıyı düzenle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-035 — Şeffaf PNG/ikon/set üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Şeffaf PNG/ikon/set üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Şeffaf PNG/ikon/set üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 03-036 — Marka renkleriyle varyasyon

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme tablosu; toplu fotoğraf sonuçları. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün CSV listesi; fotoğraflar; şablon; adet. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir. CSV satırları şablonun görsel/metin alanlarıyla eşleştirilir; başarılı/başarısız her satır ayrı gösterilir.
- **Model/API seçimleri:** Üstteki **Marka renkleriyle varyasyon** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Marka renkleriyle varyasyon** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 4. Video Stüdyosu (Avatar Dahil) — 66 hazır işlem

##### 04-001 — Tam otomatik video — fikirden MP4'e

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Tam otomatik video — fikirden MP4'e** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tam otomatik video — fikirden MP4'e** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-002 — Instagram Reels oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Instagram Reels oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram Reels oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-003 — TikTok videosu oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **TikTok videosu oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **TikTok videosu oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-004 — YouTube Shorts oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **YouTube Shorts oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube Shorts oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-005 — YouTube yatay uzun video oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **YouTube yatay uzun video oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube yatay uzun video oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-006 — Facebook Reels/video gönderisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Facebook Reels/video gönderisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Facebook Reels/video gönderisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-007 — Instagram Story video

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Instagram Story video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram Story video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-008 — WhatsApp Status video

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **WhatsApp Status video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **WhatsApp Status video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-009 — LinkedIn ürün/iş videosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **LinkedIn ürün/iş videosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **LinkedIn ürün/iş videosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-010 — X için kısa video

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **X için kısa video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **X için kısa video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-011 — Ürün reklam filmi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Ürün reklam filmi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün reklam filmi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-012 — E-ticaret ürün tanıtımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **E-ticaret ürün tanıtımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **E-ticaret ürün tanıtımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-013 — Mağaza/kafe/otel tanıtımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Mağaza/kafe/otel tanıtımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mağaza/kafe/otel tanıtımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-014 — Emlak ilanı/gezi videosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Emlak ilanı/gezi videosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Emlak ilanı/gezi videosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-015 — Otomobil ilan/tanıtım videosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Otomobil ilan/tanıtım videosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Otomobil ilan/tanıtım videosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-016 — Seyahat/gezi videosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Seyahat/gezi videosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Seyahat/gezi videosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-017 — Haber metninden video haber

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Haber metninden video haber** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Haber metninden video haber** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-018 — Blog yazısından video

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Blog yazısından video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Blog yazısından video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-019 — Metinden video (text-to-video)

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne kartları; süre; oran seçimi; video önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video konusu; süre; oran; dil; ses/müzik. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Metinden video (text-to-video)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metinden video (text-to-video)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-020 — Fotoğraftan video (image-to-video)

- **Kullanıcı bu karta bastığında açılacak ekran:** Fotoğraf yükleme ve sıralama; hareket ayarları; önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Bir veya daha fazla fotoğraf; hareket; süre. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Fotoğraftan video (image-to-video)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fotoğraftan video (image-to-video)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-021 — Eski fotoğrafı canlandır

- **Kullanıcı bu karta bastığında açılacak ekran:** Fotoğraf yükleme ve sıralama; hareket ayarları; önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Bir veya daha fazla fotoğraf; hareket; süre. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Eski fotoğrafı canlandır** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Eski fotoğrafı canlandır** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-022 — Çoklu fotoğraftan slayt/video

- **Kullanıcı bu karta bastığında açılacak ekran:** Fotoğraf yükleme ve sıralama; hareket ayarları; önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Bir veya daha fazla fotoğraf; hareket; süre. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Çoklu fotoğraftan slayt/video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çoklu fotoğraftan slayt/video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-023 — Referans videodan yeni video

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Referans videodan yeni video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Referans videodan yeni video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-024 — Video stilini değiştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Video stilini değiştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video stilini değiştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-025 — Video arka planını değiştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Video arka planını değiştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video arka planını değiştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-026 — Video nesnesi sil/değiştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Video nesnesi sil/değiştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video nesnesi sil/değiştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-027 — Videoda ürünü/ambalajı değiştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Videoda ürünü/ambalajı değiştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Videoda ürünü/ambalajı değiştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-028 — Kişi yüzü değiştirme (rıza ile)

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **Kişi yüzü değiştirme (rıza ile)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kişi yüzü değiştirme (rıza ile)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-029 — İki kişilik videoda iki yüzü değiştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **İki kişilik videoda iki yüzü değiştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İki kişilik videoda iki yüzü değiştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-030 — Üç kişilik videoda üç yüzü değiştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. İşlemdeki kişi sayısına göre numaralı görsel yükleme alanları oluşur; üç kişide 3, dört kişide 4 kutu. Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **Üç kişilik videoda üç yüzü değiştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Üç kişilik videoda üç yüzü değiştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-031 — Kalabalık videoda kişi-rol eşle

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. İşlemdeki kişi sayısına göre numaralı görsel yükleme alanları oluşur; üç kişide 3, dört kişide 4 kutu. Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **Kalabalık videoda kişi-rol eşle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kalabalık videoda kişi-rol eşle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-032 — Kendi yüzümle film sahnesi oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **Kendi yüzümle film sahnesi oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kendi yüzümle film sahnesi oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-033 — Kendimi farklı kıyafet/mekânda göster

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **Kendimi farklı kıyafet/mekânda göster** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kendimi farklı kıyafet/mekânda göster** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-034 — Kendimi dans videosuna yerleştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **Kendimi dans videosuna yerleştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kendimi dans videosuna yerleştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-035 — Kendimi tarihi/fantastik sahneye yerleştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Numaralı kişi fotoğraf yuvaları; videoda A/B/C/D işaretleme; İşleme özel: source video; replacement face count; individual face photos; mapping; consent evidence. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak video; ayrı kişi fotoğrafları; hedef eşleştirme; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gereken kişi sayısı şablona göre 1–6 olabilir. Alıcı seçilen kişi sayısı kadar ayrı fotoğraf kutusu görür. Hedef videoda A/B/C/D gibi kişi işaretleri oluşturulur; her fotoğraf bir hedefe bağlanır. Şablon satıcısı fotoğraf adedini, kişi rollerini ve hedef eşleşmelerini belirler; alıcı yalnız kendi izinli fotoğraflarını yükler. Gerçek çoklu kişi/yüz değiştirme API yeteneği kanıtlanmadan çalışır gösterilmez.
- **Model/API seçimleri:** Üstteki **Kendimi tarihi/fantastik sahneye yerleştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yuz Esleme Video: ; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kendimi tarihi/fantastik sahneye yerleştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-036 — İzinli konuşan fotoğraf oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Avatar önizleme; ses seçim kartı; metin kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Portre/karakter fotoğrafı; konuşma metni/ses; dil; izin. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **İzinli konuşan fotoğraf oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Avatar Video: heygen, runway, hedra; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İzinli konuşan fotoğraf oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-037 — Sanal sunucu/haber spikeri

- **Kullanıcı bu karta bastığında açılacak ekran:** Avatar önizleme; ses seçim kartı; metin kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Portre/karakter fotoğrafı; konuşma metni/ses; dil; izin. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sanal sunucu/haber spikeri** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Avatar Video: heygen, runway, hedra; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sanal sunucu/haber spikeri** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-038 — Konuşan karakter/mascot

- **Kullanıcı bu karta bastığında açılacak ekran:** Avatar önizleme; ses seçim kartı; metin kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Portre/karakter fotoğrafı; konuşma metni/ses; dil; izin. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Konuşan karakter/mascot** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Avatar Video: heygen, runway, hedra; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Konuşan karakter/mascot** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-039 — Konuşan evcil hayvan animasyonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Avatar önizleme; ses seçim kartı; metin kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Portre/karakter fotoğrafı; konuşma metni/ses; dil; izin. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Konuşan evcil hayvan animasyonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Avatar Video: heygen, runway, hedra; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Konuşan evcil hayvan animasyonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-040 — Kurumsal eğitim avatarı

- **Kullanıcı bu karta bastığında açılacak ekran:** Avatar önizleme; ses seçim kartı; metin kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Portre/karakter fotoğrafı; konuşma metni/ses; dil; izin. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kurumsal eğitim avatarı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Avatar Video: heygen, runway, hedra; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kurumsal eğitim avatarı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-041 — Avatarlı ürün anlatımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Avatar önizleme; ses seçim kartı; metin kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Portre/karakter fotoğrafı; konuşma metni/ses; dil; izin. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Avatarlı ürün anlatımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Avatar Video: heygen, runway, hedra; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Avatarlı ürün anlatımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-042 — Sesle dudak eşleme (lip-sync)

- **Kullanıcı bu karta bastığında açılacak ekran:** Avatar önizleme; ses seçim kartı; metin kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Portre/karakter fotoğrafı; konuşma metni/ses; dil; izin. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Sesle dudak eşleme (lip-sync)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Avatar Video: heygen, runway, hedra; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sesle dudak eşleme (lip-sync)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-043 — Video dili değiştir / dublaj

- **Kullanıcı bu karta bastığında açılacak ekran:** Konuşmacı eşleştirme; zaman kodlu altyazı; dublaj karşılaştırma. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video; kaynak/hedef dil; konuşmacı sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Video dili değiştir / dublaj** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Dublaj Video: heygen, elevenlabs, runway; Altyazi Transkripsiyon: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video dili değiştir / dublaj** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-044 — Videoya çok dilli altyazı ekle

- **Kullanıcı bu karta bastığında açılacak ekran:** Konuşmacı eşleştirme; zaman kodlu altyazı; dublaj karşılaştırma. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video; kaynak/hedef dil; konuşmacı sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Videoya çok dilli altyazı ekle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Dublaj Video: heygen, elevenlabs, runway; Altyazi Transkripsiyon: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Videoya çok dilli altyazı ekle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-045 — Uzun videodan 5–20 Shorts çıkar

- **Kullanıcı bu karta bastığında açılacak ekran:** Klip listesi; başlangıç/bitiş; dikey önizleme; İşleme özel: number of clips; aspect ratio. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Uzun kaynak video; kısa klip adedi ve süresi; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır. Klip sayısı kullanıcıya sorulur; bu sayıda ayrı çıktı yuvası ve kırpma bölümü açılır.
- **Model/API seçimleri:** Üstteki **Uzun videodan 5–20 Shorts çıkar** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Konusma Yaziya: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Uzun videodan 5–20 Shorts çıkar** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-046 — Podcastten kısa kesitler çıkar

- **Kullanıcı bu karta bastığında açılacak ekran:** Klip listesi; başlangıç/bitiş; dikey önizleme; İşleme özel: number of clips; aspect ratio. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Uzun kaynak video; kısa klip adedi ve süresi; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Klip sayısı kullanıcıya sorulur; bu sayıda ayrı çıktı yuvası ve kırpma bölümü açılır.
- **Model/API seçimleri:** Üstteki **Podcastten kısa kesitler çıkar** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Konusma Yaziya: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Podcastten kısa kesitler çıkar** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-047 — Canlı yayın öne çıkan anları kes

- **Kullanıcı bu karta bastığında açılacak ekran:** Klip listesi; başlangıç/bitiş; dikey önizleme; İşleme özel: number of clips; aspect ratio. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Uzun kaynak video; kısa klip adedi ve süresi; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Klip sayısı kullanıcıya sorulur; bu sayıda ayrı çıktı yuvası ve kırpma bölümü açılır.
- **Model/API seçimleri:** Üstteki **Canlı yayın öne çıkan anları kes** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Konusma Yaziya: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Canlı yayın öne çıkan anları kes** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-048 — Sosyal medya trendine uyarlanmış kurgu

- **Kullanıcı bu karta bastığında açılacak ekran:** Klip listesi; başlangıç/bitiş; dikey önizleme; İşleme özel: number of clips; aspect ratio. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Uzun kaynak video; kısa klip adedi ve süresi; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Klip sayısı kullanıcıya sorulur; bu sayıda ayrı çıktı yuvası ve kırpma bölümü açılır.
- **Model/API seçimleri:** Üstteki **Sosyal medya trendine uyarlanmış kurgu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Konusma Yaziya: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sosyal medya trendine uyarlanmış kurgu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-049 — Video otomatik altyazı

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Video otomatik altyazı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; Altyazi Transkripsiyon: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video otomatik altyazı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-050 — Videodan sessizlik/dolgu sözü temizle

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Videodan sessizlik/dolgu sözü temizle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Videodan sessizlik/dolgu sözü temizle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-051 — Tek tık otomatik montaj

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Tek tık otomatik montaj** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tek tık otomatik montaj** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-052 — Video intro/outro/logo ekle

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Video intro/outro/logo ekle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video intro/outro/logo ekle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-053 — Sahne sahne storyboarddan video

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Sahne sahne storyboarddan video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sahne sahne storyboarddan video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-054 — İki videoyu birleştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **İki videoyu birleştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İki videoyu birleştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-055 — Dikey/yatay/kare yeniden kadrajla

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Dikey/yatay/kare yeniden kadrajla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dikey/yatay/kare yeniden kadrajla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-056 — Sinematik renk/ışık düzeltme

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sinematik renk/ışık düzeltme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sinematik renk/ışık düzeltme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-057 — Video süresini uzat

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Video süresini uzat** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video süresini uzat** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-058 — Video çözünürlüğünü yükselt

- **Kullanıcı bu karta bastığında açılacak ekran:** Video oynatıcı; zaman çizelgesi; sahne işaretleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek video; sahne zamanı; çıktı tercihleri. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir.
- **Model/API seçimleri:** Üstteki **Video çözünürlüğünü yükselt** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Duzenleme: runway, heygen, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video çözünürlüğünü yükselt** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-059 — Aynı videonun 3–10 varyasyonunu yap

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Aynı videonun 3–10 varyasyonunu yap** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Aynı videonun 3–10 varyasyonunu yap** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-060 — Ürün fotoğraflarından katalog videosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Fotoğraf yükleme ve sıralama; hareket ayarları; önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Bir veya daha fazla fotoğraf; hareket; süre. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Ürün fotoğraflarından katalog videosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün fotoğraflarından katalog videosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-061 — Referans karakteri tüm sahnelerde koru

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Referans karakteri tüm sahnelerde koru** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Referans karakteri tüm sahnelerde koru** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-062 — Şarkıya otomatik klip oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Şarkıya otomatik klip oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Şarkıya otomatik klip oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-063 — Düğün/doğum günü kutlama videosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Düğün/doğum günü kutlama videosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Düğün/doğum günü kutlama videosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-064 — İş başvurusu video sunumu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **İş başvurusu video sunumu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İş başvurusu video sunumu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-065 — Eğitim/how-to video

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Eğitim/how-to video** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Eğitim/how-to video** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 04-066 — Otomatik müzik+seslendirme+altyazı+montaj

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Otomatik müzik+seslendirme+altyazı+montaj** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Otomatik müzik+seslendirme+altyazı+montaj** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 5. Ses ve Dublaj — 20 hazır işlem

##### 05-001 — Metinden ses oluştur (TTS)

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Metinden ses oluştur (TTS)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metinden ses oluştur (TTS)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-002 — Doğal Türkçe seslendirme

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Doğal Türkçe seslendirme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Doğal Türkçe seslendirme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-003 — Sesli kitap seslendirme

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Sesli kitap seslendirme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sesli kitap seslendirme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-004 — Reklam seslendirmesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Reklam seslendirmesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Reklam seslendirmesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-005 — Podcast anlatıcı sesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Podcast anlatıcı sesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Podcast anlatıcı sesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-006 — Ses kaydını yazıya çevir

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Ses kaydını yazıya çevir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ses kaydını yazıya çevir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-007 — Video konuşmalarını yazıya çevir

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Video konuşmalarını yazıya çevir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video konuşmalarını yazıya çevir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-008 — Sesli notları özetle

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Sesli notları özetle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sesli notları özetle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-009 — Ses kaydını başka dile çevir

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Ses kaydını başka dile çevir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ses kaydını başka dile çevir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-010 — Çok dilli dublaj

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Çok dilli dublaj** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; Video Ve Ses Dublaj: heygen, elevenlabs, runway; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çok dilli dublaj** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-011 — Toplantıyı metne ve kararlara dök

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Toplantıyı metne ve kararlara dök** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Toplantıyı metne ve kararlara dök** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-012 — Arka plan gürültüsünü kaldır

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Arka plan gürültüsünü kaldır** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Arka plan gürültüsünü kaldır** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-013 — Sesi temizle ve seviyeyi eşitle

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Sesi temizle ve seviyeyi eşitle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sesi temizle ve seviyeyi eşitle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-014 — İzinli kişisel ses klonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Ses doğrulama; örnek dinleme; izin kartı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İzinli ses örneği; konuşma metni; rıza. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **İzinli kişisel ses klonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Klonlama Izinli: elevenlabs, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İzinli kişisel ses klonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-015 — İki/çok konuşmacılı konuşma

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **İki/çok konuşmacılı konuşma** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İki/çok konuşmacılı konuşma** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-016 — Telefona otomatik karşılama sesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Telefona otomatik karşılama sesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Telefona otomatik karşılama sesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-017 — Telaffuz ve aksan çalışması

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Telaffuz ve aksan çalışması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Telaffuz ve aksan çalışması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-018 — Metni farklı duyguyla seslendir

- **Kullanıcı bu karta bastığında açılacak ekran:** Metin editörü; ses örneği dinleme; oynatıcı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Seslendirilecek metin; dil; ses; ton; hız. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Metni farklı duyguyla seslendir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Uretimi: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metni farklı duyguyla seslendir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-019 — Sözcük/zaman kodlu SRT altyazı

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sözcük/zaman kodlu SRT altyazı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sözcük/zaman kodlu SRT altyazı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 05-020 — Sesi konuşmacılara ayır

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; konuşmacı ve metin zaman çizelgesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak ses/video; dil; beklenen metin/ses. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Sesi konuşmacılara ayır** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Tanima: openai, deepgram, assemblyai, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sesi konuşmacılara ayır** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 6. Müzik ve Ses Efektleri — 18 hazır işlem

##### 06-001 — Metinden özgün müzik üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Metinden özgün müzik üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metinden özgün müzik üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-002 — Reklam jingle'ı oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Reklam jingle'ı oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Reklam jingle'ı oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-003 — YouTube giriş/çıkış müziği

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **YouTube giriş/çıkış müziği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube giriş/çıkış müziği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-004 — Podcast jeneriği

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Podcast jeneriği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Podcast jeneriği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-005 — Vokalli şarkı oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Vokalli şarkı oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Vokalli şarkı oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-006 — Enstrümantal fon müziği

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Enstrümantal fon müziği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Enstrümantal fon müziği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-007 — Sinema/fragman müziği

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sinema/fragman müziği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sinema/fragman müziği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-008 — Oyun müziği

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Oyun müziği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Oyun müziği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-009 — Meditasyon/ambiyans müziği

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Meditasyon/ambiyans müziği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Meditasyon/ambiyans müziği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-010 — Lo-fi/elektronik/pop/rock türleri

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Lo-fi/elektronik/pop/rock türleri** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Lo-fi/elektronik/pop/rock türleri** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-011 — Kısa sosyal medya fon müziği

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **Kısa sosyal medya fon müziği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kısa sosyal medya fon müziği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-012 — Söz yaz ve bestele

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Söz yaz ve bestele** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Söz yaz ve bestele** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-013 — Sesten vokal ayır

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; ayrı enstrüman kanalları; önce/sonra. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek ses; uygulanacak efekt/ayırma. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Sesten vokal ayır** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Isleme: runway, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sesten vokal ayır** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-014 — Enstrümanları ayır (stems)

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; ayrı enstrüman kanalları; önce/sonra. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek ses; uygulanacak efekt/ayırma. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Enstrümanları ayır (stems)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Isleme: runway, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Enstrümanları ayır (stems)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-015 — Gürültü/ses efekti oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Gürültü/ses efekti oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Gürültü/ses efekti oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-016 — Videoya otomatik müzik yerleştir

- **Kullanıcı bu karta bastığında açılacak ekran:** Müzik briefi; söz editörü; oynatıcı; varyasyon galerisi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Müzik konusu; tür; tempo; söz; süre; vokal. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Videoya otomatik müzik yerleştir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Muzik Uretimi: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Videoya otomatik müzik yerleştir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-017 — Müziği kısalt/döngüye al

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; ayrı enstrüman kanalları; önce/sonra. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek ses; uygulanacak efekt/ayırma. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Müziği kısalt/döngüye al** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Isleme: runway, elevenlabs, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Müziği kısalt/döngüye al** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 06-018 — Ses seviyelerini master et

- **Kullanıcı bu karta bastığında açılacak ekran:** Dalga biçimi; ayrı enstrüman kanalları; önce/sonra. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İşlenecek ses; uygulanacak efekt/ayırma. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Ses seviyelerini master et** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Ses Isleme: runway, fal, replicate; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ses seviyelerini master et** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 7. Kodlama ve Yazılım — 22 hazır işlem

##### 07-001 — Sıfırdan kod üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Sıfırdan kod üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sıfırdan kod üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-002 — Mevcut kodu açıkla

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Mevcut kodu açıkla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mevcut kodu açıkla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-003 — Kod hatası bul ve düzelt

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Kod hatası bul ve düzelt** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kod hatası bul ve düzelt** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-004 — GitHub deposunu incele

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **GitHub deposunu incele** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **GitHub deposunu incele** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-005 — Pull request taslağı hazırla

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Pull request taslağı hazırla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Pull request taslağı hazırla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-006 — Birim/entegrasyon testi yaz

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Birim/entegrasyon testi yaz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Birim/entegrasyon testi yaz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-007 — Testleri çalıştır ve hataları açıkla

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Testleri çalıştır ve hataları açıkla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Testleri çalıştır ve hataları açıkla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-008 — Kod güvenlik taraması

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Kod güvenlik taraması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kod güvenlik taraması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-009 — Performans iyileştirme

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Performans iyileştirme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Performans iyileştirme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-010 — API endpoint oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **API endpoint oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **API endpoint oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-011 — API dokümantasyonu yaz

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **API dokümantasyonu yaz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **API dokümantasyonu yaz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-012 — Veritabanı şeması oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır. Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Veritabanı şeması oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Veritabanı şeması oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-013 — SQL sorgusu yaz/düzelt

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **SQL sorgusu yaz/düzelt** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **SQL sorgusu yaz/düzelt** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-014 — Python betiği oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Python betiği oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Python betiği oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-015 — JavaScript/TypeScript projesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **JavaScript/TypeScript projesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **JavaScript/TypeScript projesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-016 — Kod başka dile dönüştürme

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Kod başka dile dönüştürme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kod başka dile dönüştürme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-017 — Kodu açıklamalı öğret

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Kodu açıklamalı öğret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kodu açıklamalı öğret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-018 — Ekran görüntüsünden arayüz kodu

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Ekran görüntüsünden arayüz kodu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ekran görüntüsünden arayüz kodu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-019 — Kod refactor/temizleme

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Kod refactor/temizleme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kod refactor/temizleme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-020 — Docker/CI ayarlarını hazırla

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Docker/CI ayarlarını hazırla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Docker/CI ayarlarını hazırla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-021 — Sürüm karşılaştırması

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir. Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **Sürüm karşılaştırması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sürüm karşılaştırması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 07-022 — İzinli proje için incele-değiştir-test et

- **Kullanıcı bu karta bastığında açılacak ekran:** Kod editörü; Git diff; test ve onay panelleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Yetkili GitHub deposu veya ZIP; hedef değişiklik; ortam. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Gerçek depo verileri kullanıcı izniyle okunur; kaynak üzerinde değişiklik öncesi diff ve test sonucu sunulur.
- **Model/API seçimleri:** Üstteki **İzinli proje için incele-değiştir-test et** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İzinli proje için incele-değiştir-test et** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 8. Web Sitesi, Mobil Uygulama ve Oyun — 26 hazır işlem

##### 08-001 — Kurumsal web sitesi oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kurumsal web sitesi oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kurumsal web sitesi oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-002 — E-ticaret sitesi oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **E-ticaret sitesi oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **E-ticaret sitesi oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-003 — Landing page/kampanya sayfası

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Landing page/kampanya sayfası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Landing page/kampanya sayfası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-004 — Portföy/kişisel site

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Portföy/kişisel site** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Portföy/kişisel site** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-005 — Blog/haber sitesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Blog/haber sitesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Blog/haber sitesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-006 — Rezervasyon/randevu sitesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Rezervasyon/randevu sitesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Rezervasyon/randevu sitesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-007 — Üyelik/abonelik sitesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Üyelik/abonelik sitesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Üyelik/abonelik sitesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-008 — SaaS yönetim paneli

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **SaaS yönetim paneli** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **SaaS yönetim paneli** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-009 — Online kurs/eğitim platformu

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Online kurs/eğitim platformu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Online kurs/eğitim platformu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-010 — Pazaryeri web sitesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Pazaryeri web sitesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Pazaryeri web sitesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-011 — Figma/görselden web sayfası

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Figma/görselden web sayfası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Figma/görselden web sayfası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-012 — Mevcut siteyi mobil uyumlu yap

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Mevcut siteyi mobil uyumlu yap** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mevcut siteyi mobil uyumlu yap** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-013 — SEO ve hız iyileştirme

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **SEO ve hız iyileştirme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **SEO ve hız iyileştirme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-014 — Android uygulaması prototipi

- **Kullanıcı bu karta bastığında açılacak ekran:** Telefon ekranı önizleme; akış/gezinti editörü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Mobil uygulama amacı; ekranlar; Android/iOS; izinler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Her uygulama ekranı mobil boyutta önizlenir; gerçek mağazaya yayın ayrıca onaylanır.
- **Model/API seçimleri:** Üstteki **Android uygulaması prototipi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Android uygulaması prototipi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-015 — iOS uygulaması prototipi

- **Kullanıcı bu karta bastığında açılacak ekran:** Telefon ekranı önizleme; akış/gezinti editörü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Mobil uygulama amacı; ekranlar; Android/iOS; izinler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Her uygulama ekranı mobil boyutta önizlenir; gerçek mağazaya yayın ayrıca onaylanır.
- **Model/API seçimleri:** Üstteki **iOS uygulaması prototipi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **iOS uygulaması prototipi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-016 — Tek kodla Android/iOS

- **Kullanıcı bu karta bastığında açılacak ekran:** Telefon ekranı önizleme; akış/gezinti editörü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Mobil uygulama amacı; ekranlar; Android/iOS; izinler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Her uygulama ekranı mobil boyutta önizlenir; gerçek mağazaya yayın ayrıca onaylanır.
- **Model/API seçimleri:** Üstteki **Tek kodla Android/iOS** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tek kodla Android/iOS** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-017 — Uygulama ekran tasarımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Telefon ekranı önizleme; akış/gezinti editörü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Mobil uygulama amacı; ekranlar; Android/iOS; izinler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Her uygulama ekranı mobil boyutta önizlenir; gerçek mağazaya yayın ayrıca onaylanır.
- **Model/API seçimleri:** Üstteki **Uygulama ekran tasarımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Uygulama ekran tasarımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-018 — Bildirim/oturum/ödeme entegrasyonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Telefon ekranı önizleme; akış/gezinti editörü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Mobil uygulama amacı; ekranlar; Android/iOS; izinler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Her uygulama ekranı mobil boyutta önizlenir; gerçek mağazaya yayın ayrıca onaylanır.
- **Model/API seçimleri:** Üstteki **Bildirim/oturum/ödeme entegrasyonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Bildirim/oturum/ödeme entegrasyonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-019 — Mobil uygulama test paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Telefon ekranı önizleme; akış/gezinti editörü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Mobil uygulama amacı; ekranlar; Android/iOS; izinler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır. Her uygulama ekranı mobil boyutta önizlenir; gerçek mağazaya yayın ayrıca onaylanır.
- **Model/API seçimleri:** Üstteki **Mobil uygulama test paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mobil uygulama test paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-020 — Basit 2D oyun oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Oyun sahnesi; karakter seçimi; oynanabilir test. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Oyun fikri; tür; kontroller; görseller; cihaz hedefi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Oyun ekranı için oynanabilir prototip veya gerçek test çıktısı sunulur.
- **Model/API seçimleri:** Üstteki **Basit 2D oyun oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Basit 2D oyun oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-021 — Basit 3D oyun oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Oyun sahnesi; karakter seçimi; oynanabilir test. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Oyun fikri; tür; kontroller; görseller; cihaz hedefi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Oyun ekranı için oynanabilir prototip veya gerçek test çıktısı sunulur.
- **Model/API seçimleri:** Üstteki **Basit 3D oyun oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Basit 3D oyun oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-022 — Bulmaca/kelime oyunu

- **Kullanıcı bu karta bastığında açılacak ekran:** Oyun sahnesi; karakter seçimi; oynanabilir test. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Oyun fikri; tür; kontroller; görseller; cihaz hedefi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Oyun ekranı için oynanabilir prototip veya gerçek test çıktısı sunulur.
- **Model/API seçimleri:** Üstteki **Bulmaca/kelime oyunu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Bulmaca/kelime oyunu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-023 — Hiper casual mobil oyun

- **Kullanıcı bu karta bastığında açılacak ekran:** Oyun sahnesi; karakter seçimi; oynanabilir test. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Oyun fikri; tür; kontroller; görseller; cihaz hedefi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Oyun ekranı için oynanabilir prototip veya gerçek test çıktısı sunulur.
- **Model/API seçimleri:** Üstteki **Hiper casual mobil oyun** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Hiper casual mobil oyun** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-024 — Oyun karakter ve bölüm üretimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Oyun sahnesi; karakter seçimi; oynanabilir test. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Oyun fikri; tür; kontroller; görseller; cihaz hedefi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Oyun ekranı için oynanabilir prototip veya gerçek test çıktısı sunulur.
- **Model/API seçimleri:** Üstteki **Oyun karakter ve bölüm üretimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Oyun karakter ve bölüm üretimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-025 — Oyun test ve hata düzeltme

- **Kullanıcı bu karta bastığında açılacak ekran:** Oyun sahnesi; karakter seçimi; oynanabilir test. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Oyun fikri; tür; kontroller; görseller; cihaz hedefi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Oyun ekranı için oynanabilir prototip veya gerçek test çıktısı sunulur.
- **Model/API seçimleri:** Üstteki **Oyun test ve hata düzeltme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Oyun test ve hata düzeltme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 08-026 — Uygulama mağazası görselleri

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Uygulama mağazası görselleri** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Uygulama mağazası görselleri** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 9. Belgeler, PDF, Word, Sunum — 24 hazır işlem

##### 09-001 — Sıfırdan PDF oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sıfırdan PDF oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sıfırdan PDF oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-002 — PDF düzenle/birleştir/böl

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **PDF düzenle/birleştir/böl** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **PDF düzenle/birleştir/böl** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-003 — Taranmış PDF'yi okunur hale getir

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Taranmış PDF'yi okunur hale getir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Taranmış PDF'yi okunur hale getir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-004 — PDF'yi Word'e dönüştür

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **PDF'yi Word'e dönüştür** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **PDF'yi Word'e dönüştür** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-005 — Word belgesi oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Word belgesi oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Word belgesi oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-006 — Word'ü PDF'ye dönüştür

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Word'ü PDF'ye dönüştür** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Word'ü PDF'ye dönüştür** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-007 — PowerPoint sunumu oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **PowerPoint sunumu oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **PowerPoint sunumu oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-008 — Metinden 10–30 slayt sunum

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **Metinden 10–30 slayt sunum** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metinden 10–30 slayt sunum** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-009 — Sunum tasarımını yenile

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sunum tasarımını yenile** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sunum tasarımını yenile** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-010 — Excel çalışma kitabı oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Excel çalışma kitabı oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Excel çalışma kitabı oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-011 — Tablodan rapor hazırla

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Tablodan rapor hazırla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tablodan rapor hazırla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-012 — Fatura/teklif şablonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Fatura/teklif şablonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fatura/teklif şablonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-013 — CV/özgeçmiş

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **CV/özgeçmiş** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **CV/özgeçmiş** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-014 — Ön yazı/motivasyon mektubu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Ön yazı/motivasyon mektubu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ön yazı/motivasyon mektubu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-015 — İş planı/proje teklifi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İş planı/proje teklifi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İş planı/proje teklifi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-016 — Toplantı tutanağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Toplantı tutanağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Toplantı tutanağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-017 — Sözleşme taslak şablonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Sözleşme taslak şablonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sözleşme taslak şablonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-018 — Form/anket oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Form/anket oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Form/anket oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-019 — E-kitap/e-dergi hazırla

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **E-kitap/e-dergi hazırla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **E-kitap/e-dergi hazırla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-020 — Belge çevirisi ve biçimi koru

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Belge çevirisi ve biçimi koru** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Belge çevirisi ve biçimi koru** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-021 — Belge karşılaştırması

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Belge karşılaştırması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Belge karşılaştırması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-022 — PDF'den tablo çıkar

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **PDF'den tablo çıkar** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **PDF'den tablo çıkar** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-023 — Tarama/fişten Excel tablosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Tarama/fişten Excel tablosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tarama/fişten Excel tablosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 09-024 — Dijital imzaya hazır belge

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Dijital imzaya hazır belge** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dijital imzaya hazır belge** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 10. Veri, Grafik ve Analiz — 22 hazır işlem

##### 10-001 — CSV/Excel dosyası analiz et

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **CSV/Excel dosyası analiz et** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **CSV/Excel dosyası analiz et** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-002 — Veri temizle/eksikleri düzelt

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Veri temizle/eksikleri düzelt** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Veri temizle/eksikleri düzelt** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-003 — Pivot tablo oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Pivot tablo oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Pivot tablo oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-004 — Grafik/dashboards oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Grafik/dashboards oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Grafik/dashboards oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-005 — KPI gösterge paneli

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **KPI gösterge paneli** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **KPI gösterge paneli** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-006 — Satış analizi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Satış analizi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Satış analizi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-007 — Ürün kârlılığı analizi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Ürün kârlılığı analizi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün kârlılığı analizi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-008 — Gelir-gider/bütçe senaryosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Gelir-gider/bütçe senaryosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Gelir-gider/bütçe senaryosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-009 — Nakit akışı tablosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Nakit akışı tablosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Nakit akışı tablosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-010 — Müşteri segmentasyonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Müşteri segmentasyonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Müşteri segmentasyonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-011 — Stok ve sipariş analizi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Stok ve sipariş analizi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Stok ve sipariş analizi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-012 — Talep tahmini

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Talep tahmini** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Talep tahmini** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-013 — Anket analizi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Anket analizi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Anket analizi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-014 — Pazar karşılaştırma tablosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır. İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Pazar karşılaştırma tablosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Pazar karşılaştırma tablosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-015 — Web/API verisini rapora bağla

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Web/API verisini rapora bağla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Web/API verisini rapora bağla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-016 — SQL/veritabanı analitiği

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **SQL/veritabanı analitiği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **SQL/veritabanı analitiği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-017 — İstatistiksel testler

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İstatistiksel testler** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İstatistiksel testler** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-018 — Finansal veri görselleştirme

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Finansal veri görselleştirme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Finansal veri görselleştirme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-019 — Harita üzerinde veri gösterimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Harita üzerinde veri gösterimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Harita üzerinde veri gösterimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-020 — Tekrarlayan rapor otomasyonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Tekrarlayan rapor otomasyonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tekrarlayan rapor otomasyonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-021 — Matematik/denklem çözme

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Matematik/denklem çözme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Matematik/denklem çözme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 10-022 — Bilimsel hesaplama

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Bilimsel hesaplama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Bilimsel hesaplama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 11. 3D, Mimari ve CAD — 20 hazır işlem

##### 11-001 — Metinden 3D model

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Metinden 3D model** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metinden 3D model** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-002 — Fotoğraftan 3D model

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Fotoğraftan 3D model** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fotoğraftan 3D model** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-003 — Ürün 3D mockup

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Ürün 3D mockup** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün 3D mockup** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-004 — 3D karakter oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **3D karakter oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **3D karakter oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-005 — 3D avatar/mascot modelle

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **3D avatar/mascot modelle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **3D avatar/mascot modelle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-006 — Mobilya 3D tasarımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Mobilya 3D tasarımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mobilya 3D tasarımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-007 — İç mekân 3D yerleşimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İç mekân 3D yerleşimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İç mekân 3D yerleşimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-008 — Ev planını 3D'ye çevir

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Ev planını 3D'ye çevir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ev planını 3D'ye çevir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-009 — Dış cephe görselleştirme

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Dış cephe görselleştirme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dış cephe görselleştirme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-010 — Peyzaj/bahçe tasarımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Peyzaj/bahçe tasarımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Peyzaj/bahçe tasarımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-011 — Stand/mağaza tasarımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Stand/mağaza tasarımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Stand/mağaza tasarımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-012 — Ambalaj/kutu 3D tasarım

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Ambalaj/kutu 3D tasarım** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ambalaj/kutu 3D tasarım** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-013 — 3D baskıya uygun STL

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **3D baskıya uygun STL** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **3D baskıya uygun STL** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-014 — CAD teknik çizim taslağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **CAD teknik çizim taslağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **CAD teknik çizim taslağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-015 — GLB/OBJ/STL dosya dönüştürme

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **GLB/OBJ/STL dosya dönüştürme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **GLB/OBJ/STL dosya dönüştürme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-016 — 3D ışıklandırma/render

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **3D ışıklandırma/render** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **3D ışıklandırma/render** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-017 — 3D ürün döndürme videosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **3D ürün döndürme videosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **3D ürün döndürme videosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-018 — Oyun için 3D varlık

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Oyun için 3D varlık** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Oyun için 3D varlık** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-019 — 3D model optimize et

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **3D model optimize et** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **3D model optimize et** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 11-020 — Basit mekanik parça modeli

- **Kullanıcı bu karta bastığında açılacak ekran:** Döndürülebilir 3B önizleme; ölçü kontrolleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Fotoğraf/eskiz; ölçüler; malzeme; 3B format. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Basit mekanik parça modeli** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Uc Boyutlu Uretim: meshy; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Basit mekanik parça modeli** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 12. Eğitim, Dil ve Öğrenme — 20 hazır işlem

##### 12-001 — Kişisel öğretmen/konu anlatımı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kişisel öğretmen/konu anlatımı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kişisel öğretmen/konu anlatımı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-002 — Adım adım soru çözümü

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Adım adım soru çözümü** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Adım adım soru çözümü** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-003 — Test/çoktan seçmeli soru oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Test/çoktan seçmeli soru oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Test/çoktan seçmeli soru oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-004 — Deneme sınavı oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Deneme sınavı oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Deneme sınavı oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-005 — Flashcard/hafıza kartları

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Flashcard/hafıza kartları** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Flashcard/hafıza kartları** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-006 — Özet ders notları

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Özet ders notları** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Özet ders notları** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-007 — PDF'den öğrenme planı

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **PDF'den öğrenme planı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **PDF'den öğrenme planı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-008 — Dil öğrenme sohbeti

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Dil öğrenme sohbeti** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dil öğrenme sohbeti** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-009 — İngilizce/Türkçe konuşma pratiği

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **İngilizce/Türkçe konuşma pratiği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Konusma Yaziya: openai, deepgram, assemblyai, google_cloud_speech; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İngilizce/Türkçe konuşma pratiği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-010 — Telaffuz kontrolü

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Sesle ilgili çıktı önizlemesinde oynat ve durdur düğmeleri vardır.
- **Model/API seçimleri:** Üstteki **Telaffuz kontrolü** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Konusma Yaziya: openai, deepgram, assemblyai, google_cloud_speech; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Telaffuz kontrolü** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-011 — Metin çevirisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Mesaj alanı; bağlamı koruyan sohbet; model seçici. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sohbet metni; varsa kaynak belge; dil ve üslup. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Metin çevirisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Metin çevirisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-012 — Belge çevirisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Belge çevirisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Belge çevirisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-013 — Kelime çalışma programı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kelime çalışma programı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kelime çalışma programı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-014 — Çocuklar için hikâyeli öğrenme

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Çocuklar için hikâyeli öğrenme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çocuklar için hikâyeli öğrenme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-015 — Matematik ve fen deney simülasyonu taslağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Matematik ve fen deney simülasyonu taslağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Matematik ve fen deney simülasyonu taslağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-016 — Ders sunumu oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Ders sunumu oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ders sunumu oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-017 — Eğitim videosu hazırlama

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Eğitim videosu hazırlama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Eğitim videosu hazırlama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-018 — Soru bankasından quiz

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Soru bankasından quiz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Soru bankasından quiz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-019 — Mülakat/sertifika sınavı pratiği

- **Kullanıcı bu karta bastığında açılacak ekran:** Ders paneli; soru kartları; cevaplar/ilerleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Konu; seviye; dil; süre; soru sayısı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Mülakat/sertifika sınavı pratiği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mülakat/sertifika sınavı pratiği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 12-020 — Konuya göre öğrenme takvimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Konuya göre öğrenme takvimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Konuya göre öğrenme takvimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 13. Ajanlar ve Özel Asistanlar — 16 hazır işlem

##### 13-001 — Kişisel asistan oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Kişisel asistan oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kişisel asistan oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-002 — Müşteri destek ajanı oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Müşteri destek ajanı oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Müşteri destek ajanı oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-003 — Satış temsilcisi ajanı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Satış temsilcisi ajanı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Satış temsilcisi ajanı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-004 — Araştırmacı ajan

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Araştırmacı ajan** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Araştırmacı ajan** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-005 — Kodlama ajanı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Kodlama ajanı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kodlama ajanı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-006 — İçerik üretim ajanı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **İçerik üretim ajanı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İçerik üretim ajanı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-007 — Sosyal medya yöneticisi ajan

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Sosyal medya yöneticisi ajan** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Sosyal medya yöneticisi ajan** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-008 — E-ticaret ürün ajanı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **E-ticaret ürün ajanı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **E-ticaret ürün ajanı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-009 — Ofis/yönetici sekreter ajanı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Ofis/yönetici sekreter ajanı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ofis/yönetici sekreter ajanı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-010 — E-posta sınıflandırma ajanı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **E-posta sınıflandırma ajanı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **E-posta sınıflandırma ajanı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-011 — Belgelere dayalı bilgi asistanı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Belgelere dayalı bilgi asistanı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Belgelere dayalı bilgi asistanı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-012 — Web tarama ajanı (izinli)

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Web tarama ajanı (izinli)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Web tarama ajanı (izinli)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-013 — Birden çok ajanla iş tamamlama

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Birden çok ajanla iş tamamlama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Birden çok ajanla iş tamamlama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-014 — Kendi şirketime özel ajan

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Kendi şirketime özel ajan** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kendi şirketime özel ajan** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-015 — Paylaşılabilir ajan/skill paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır. Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Paylaşılabilir ajan/skill paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Paylaşılabilir ajan/skill paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 13-016 — Ajan rol ve erişim yönetimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Ajan yapılandırma; yetki ve test sohbeti. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ajan rolü; amaç; izinli dosyalar ve servisler; bütçe. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Kullanıcının izin verdiği harici hesaplar ve API yetenekleri dışında işlem yapılmaz.
- **Model/API seçimleri:** Üstteki **Ajan rol ve erişim yönetimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ajan rol ve erişim yönetimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 14. Otomasyon ve Zamanlananlar — 20 hazır işlem

##### 14-001 — Tek tık çok adımlı iş akışı

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Tek tık çok adımlı iş akışı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tek tık çok adımlı iş akışı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-002 — Her gün/hafta zamanlanmış görev

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Her gün/hafta zamanlanmış görev** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Her gün/hafta zamanlanmış görev** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-003 — Gelen e-postayı özetle

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Gelen e-postayı özetle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Gelen e-postayı özetle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-004 — Yanıta göre takip hatırlatması

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Yanıta göre takip hatırlatması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yanıta göre takip hatırlatması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-005 — RSS/haberden video oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **RSS/haberden video oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **RSS/haberden video oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-006 — Blogdan sosyal medya postu üret

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Blogdan sosyal medya postu üret** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Blogdan sosyal medya postu üret** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-007 — Video → Shorts → altyazı → yayın hazırlığı

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Video → Shorts → altyazı → yayın hazırlığı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Video → Shorts → altyazı → yayın hazırlığı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-008 — Ürün kataloğundan reklam seti

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Ürün kataloğundan reklam seti** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün kataloğundan reklam seti** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-009 — Form doldurulunca CRM kaydı

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Form doldurulunca CRM kaydı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Form doldurulunca CRM kaydı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-010 — Randevu/etkinlik hatırlatması

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Randevu/etkinlik hatırlatması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Randevu/etkinlik hatırlatması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-011 — Fiyat değişince bilgilendir

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Fiyat değişince bilgilendir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Fiyat değişince bilgilendir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-012 — Site içeriği güncelleme takibi

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Site içeriği güncelleme takibi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Site içeriği güncelleme takibi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-013 — Dosya gelince PDF/Excel işle

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Dosya gelince PDF/Excel işle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dosya gelince PDF/Excel işle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-014 — Takvimden görev listesi çıkar

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Takvimden görev listesi çıkar** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Takvimden görev listesi çıkar** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-015 — Onayla ve yayınla akışı

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Onayla ve yayınla akışı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Onayla ve yayınla akışı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-016 — Webhook/API bağlama

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Webhook/API bağlama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Webhook/API bağlama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-017 — Çoklu platform otomatik paylaşım

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Çoklu platform otomatik paylaşım** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çoklu platform otomatik paylaşım** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-018 — Başarısız adımı yeniden dene/raporla

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Başarısız adımı yeniden dene/raporla** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Başarısız adımı yeniden dene/raporla** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-019 — Toplu dosya dönüşümü

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Toplu dosya dönüşümü** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Toplu dosya dönüşümü** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 14-020 — Otomasyon şablonunu paylaş/sat

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Otomasyon şablonunu paylaş/sat** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Otomasyon şablonunu paylaş/sat** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 15. Sosyal Medya Stüdyosu — 23 hazır işlem

##### 15-001 — Instagram içerik takvimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **Instagram içerik takvimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram içerik takvimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-002 — Instagram Reels paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **Instagram Reels paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram Reels paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-003 — Instagram Story paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **Instagram Story paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram Story paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-004 — Instagram kaydırmalı gönderi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **Instagram kaydırmalı gönderi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Instagram kaydırmalı gönderi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-005 — TikTok video paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **TikTok video paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **TikTok video paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-006 — YouTube Shorts paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **YouTube Shorts paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube Shorts paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-007 — YouTube video başlık/açıklama

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **YouTube video başlık/açıklama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Video Uretimi: kling, runway, google_gemini, minimax; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube video başlık/açıklama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-008 — YouTube thumbnail paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **YouTube thumbnail paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **YouTube thumbnail paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-009 — Facebook gönderisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **Facebook gönderisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Facebook gönderisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-010 — LinkedIn gönderisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **LinkedIn gönderisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **LinkedIn gönderisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-011 — X/Twitter konu dizisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **X/Twitter konu dizisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **X/Twitter konu dizisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-012 — Pinterest pin seti

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Pinterest pin seti** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Pinterest pin seti** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-013 — WhatsApp Status paketi

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **WhatsApp Status paketi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **WhatsApp Status paketi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-014 — Platformlara otomatik boyut uyarlama

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Platformlara otomatik boyut uyarlama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Platformlara otomatik boyut uyarlama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-015 — Gönderi açıklaması/hashtag

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Gönderi açıklaması/hashtag** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Gönderi açıklaması/hashtag** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-016 — A/B başlık/kapak oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **A/B başlık/kapak oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **A/B başlık/kapak oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-017 — Haftalık/aylık toplu paylaşım planı

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır.
- **Model/API seçimleri:** Üstteki **Haftalık/aylık toplu paylaşım planı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Haftalık/aylık toplu paylaşım planı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-018 — Yorumlara yanıt taslağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Yorumlara yanıt taslağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yorumlara yanıt taslağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-019 — Rakip içerik format analizi

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Rakip içerik format analizi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Rakip içerik format analizi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-020 — Marka içerik kiti

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Marka içerik kiti** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Marka içerik kiti** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-021 — Trendden özgün içerik fikri

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Trendden özgün içerik fikri** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Trendden özgün içerik fikri** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-022 — Gönderiyi farklı dillere uyarlama

- **Kullanıcı bu karta bastığında açılacak ekran:** Gönderi şablonları; takvim; platform önizlemesi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Sosyal hesap; platform; marka; medya; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Gönderiyi farklı dillere uyarlama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Gönderiyi farklı dillere uyarlama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 15-023 — Yayın öncesi onay takvimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir. Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Yayın öncesi onay takvimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yayın öncesi onay takvimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 16. Pazarlama ve E-Ticaret — 24 hazır işlem

##### 16-001 — Ürün açıklaması yaz

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Ürün açıklaması yaz** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün açıklaması yaz** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-002 — Ürün fotoğrafını reklama çevir

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Ürün fotoğrafını reklama çevir** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün fotoğrafını reklama çevir** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-003 — Ürün satış videosu oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sahne editörü; kaynak medya; birleşik üretim durum adımları; İşleme özel: one click full production; project logo; voiceover and music. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Video fikri/ürünü; fotoğraf ve logo; süre; ses; müzik; altyazı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Video süresi, kalite, oran ve seçili platform önizlemede düzenlenir. Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Kullanıcı tek komutta video + ses + müzik + altyazı isterse her işin durumu ayrı izlenir. Senaryo → sahneler → haricî medya API → seslendirme/müzik API → FFmpeg montaj → MP4 doğrulama.
- **Model/API seçimleri:** Üstteki **Ürün satış videosu oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Video Uretimi: kling, runway, google_gemini, minimax; Seslendirme: elevenlabs, openai, minimax, google_cloud_speech; Muzik: elevenlabs, minimax, google_lyria; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün satış videosu oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-004 — Meta reklam metni/yaratıcı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Meta reklam metni/yaratıcı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Meta reklam metni/yaratıcı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-005 — Google reklam metni

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Google reklam metni** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Google reklam metni** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-006 — TikTok reklam kreatifi

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Yayın için bağlı sosyal medya hesabı ve ayrıca kullanıcı onayı gerekir.
- **Model/API seçimleri:** Üstteki **TikTok reklam kreatifi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **TikTok reklam kreatifi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-007 — Reklam A/B varyasyonları

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Reklam A/B varyasyonları** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Reklam A/B varyasyonları** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-008 — E-posta kampanya serisi

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **E-posta kampanya serisi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **E-posta kampanya serisi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-009 — SMS/WhatsApp kampanya metni

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **SMS/WhatsApp kampanya metni** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **SMS/WhatsApp kampanya metni** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-010 — Kampanya landing page

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kampanya landing page** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kampanya landing page** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-011 — SEO ürün ve kategori metinleri

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **SEO ürün ve kategori metinleri** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **SEO ürün ve kategori metinleri** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-012 — Amazon/Trendyol pazaryeri listeleme metni

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Amazon/Trendyol pazaryeri listeleme metni** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Amazon/Trendyol pazaryeri listeleme metni** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-013 — Dropshipping ürün sayfası

- **Kullanıcı bu karta bastığında açılacak ekran:** Site haritası; masaüstü/mobil canlı önizleme. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Web sitesi amacı; marka; sayfalar; işlevler. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **Dropshipping ürün sayfası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Dropshipping ürün sayfası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-014 — Katalog PDF oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Katalog PDF oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Katalog PDF oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-015 — Broşür/menü/fiyat listesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Broşür/menü/fiyat listesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Broşür/menü/fiyat listesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-016 — Marka sloganı ve kimliği

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Marka sloganı ve kimliği** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Marka sloganı ve kimliği** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-017 — Müşteri persona çıkar

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Müşteri persona çıkar** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Müşteri persona çıkar** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-018 — Rakip fiyat karşılaştırması

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Rakip fiyat karşılaştırması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Rakip fiyat karşılaştırması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-019 — Ürün paketleme/mockup

- **Kullanıcı bu karta bastığında açılacak ekran:** Önce/sonra görsel; kırpma ve maske aracı. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Kaynak görsel; işaretlenecek alan; değişiklik açıklaması. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır. Kullanıcı değiştireceği görüntü bölgesini önizleme üzerinde fırçayla işaretler; maske ve orijinal fotoğraf korunur.
- **Model/API seçimleri:** Üstteki **Ürün paketleme/mockup** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün paketleme/mockup** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-020 — Kupon/indirim kampanyası

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kupon/indirim kampanyası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kupon/indirim kampanyası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-021 — Kampanya takvimi

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Kampanya takvimi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kampanya takvimi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-022 — Toplu ürün reklamı (CSV)

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme tablosu; toplu fotoğraf sonuçları. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün CSV listesi; fotoğraflar; şablon; adet. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır. Çıktı sayısı kadar sonuç kutusu ve toplu indir düğmesi açılır. CSV satırları şablonun görsel/metin alanlarıyla eşleştirilir; başarılı/başarısız her satır ayrı gösterilir.
- **Model/API seçimleri:** Üstteki **Toplu ürün reklamı (CSV)** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Duzenleme: openai, google_gemini, bfl, adobe_firefly; Gorsel Uretimi: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Toplu ürün reklamı (CSV)** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-023 — Satış hunisi taslağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Satış hunisi taslağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Satış hunisi taslağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 16-024 — Müşteri yorumlarını özetle

- **Kullanıcı bu karta bastığında açılacak ekran:** Ürün kartları; kampanya ayarı; reklam örnekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Ürün; hedef kitle; fotoğraf; bütçe; satış kanalı. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Müşteri yorumlarını özetle** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Yardimci Gorsel: openai, google_gemini, bfl, recraft; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Müşteri yorumlarını özetle** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 17. İş, Ofis ve Verimlilik — 20 hazır işlem

##### 17-001 — İş planı oluştur

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İş planı oluştur** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İş planı oluştur** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-002 — Proje yol haritası

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Proje yol haritası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Proje yol haritası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-003 — Gantt/görev planı

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Gantt/görev planı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Gantt/görev planı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-004 — Toplantı gündemi/tutanağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Toplantı gündemi/tutanağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Toplantı gündemi/tutanağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-005 — Teklif ve fiyat dosyası

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Teklif ve fiyat dosyası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Teklif ve fiyat dosyası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-006 — Bütçe planı

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Bütçe planı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Bütçe planı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-007 — Kâr/zarar senaryosu

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kâr/zarar senaryosu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kâr/zarar senaryosu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-008 — Raporlama paneli

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Raporlama paneli** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Raporlama paneli** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-009 — İnsan kaynakları ilan taslağı

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **İnsan kaynakları ilan taslağı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İnsan kaynakları ilan taslağı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-010 — Mülakat soru seti

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Mülakat soru seti** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mülakat soru seti** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-011 — Çalışan eğitim sunumu

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Çalışan eğitim sunumu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çalışan eğitim sunumu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-012 — Müşteri yanıt merkezi

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Müşteri yanıt merkezi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Müşteri yanıt merkezi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-013 — CRM veri düzenleme

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **CRM veri düzenleme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **CRM veri düzenleme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-014 — Ürün/hizmet karşılaştırması

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır. İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Ürün/hizmet karşılaştırması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ürün/hizmet karşılaştırması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-015 — Operasyon kontrol listesi

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Operasyon kontrol listesi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Operasyon kontrol listesi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-016 — Kurumsal bilgi bankası

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Kurumsal bilgi bankası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Kurumsal bilgi bankası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-017 — Çeviri ve çok dilli doküman

- **Kullanıcı bu karta bastığında açılacak ekran:** Dosya bırakma alanı; sayfa önizleme; talimat kutusu. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge veya fotoğraf; yapılacak işlem ve çıktı türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Çeviri ve çok dilli doküman** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Belge Ve Gorsel Anlama: openai, google_gemini, anthropic, mistral; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çeviri ve çok dilli doküman** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-018 — Aylık faaliyet raporu

- **Kullanıcı bu karta bastığında açılacak ekran:** Düzenlenebilir iş belgesi; rapor/tablo. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** İş hedefi; şirket verileri; dönem; şablon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Aylık faaliyet raporu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Aylık faaliyet raporu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-019 — Takvim/posta otomasyonu

- **Kullanıcı bu karta bastığında açılacak ekran:** Akış diyagramı; takvim; çalışma günlüğü. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Tetikleyici/zaman; bağlı hesaplar; adımlar; onay. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Çalışma koşulları, son çalıştırma, başarısız adım ve onay bekleyen işlemler görünür.
- **Model/API seçimleri:** Üstteki **Takvim/posta otomasyonu** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Takvim/posta otomasyonu** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 17-020 — Firma sunum dosyası

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Firma sunum dosyası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Firma sunum dosyası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

#### 18. Harita, Seyahat ve Konum — 16 hazır işlem

##### 18-001 — Rota ve durak planı

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Rota ve durak planı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Rota ve durak planı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-002 — Çok duraklı gezi güzergâhı

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Çok duraklı gezi güzergâhı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Çok duraklı gezi güzergâhı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-003 — Yakındaki işletme/yer arama

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Yakındaki işletme/yer arama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Yakındaki işletme/yer arama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-004 — Seyahat gün gün program

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Seyahat gün gün program** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Seyahat gün gün program** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-005 — Ulaşım alternatifleri

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Ulaşım alternatifleri** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Ulaşım alternatifleri** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-006 — Bütçeli tatil planı

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Bütçeli tatil planı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Bütçeli tatil planı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-007 — Otel/konaklama karşılaştırması

- **Kullanıcı bu karta bastığında açılacak ekran:** Kaynak/kanıt paneli; araştırma kapsamı filtreleri; rapor. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Araştırma sorusu; bölge, dil, tarih, kaynak tercihi. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** İki veya daha çok seçenek yan yana kıyaslanır ve ayrı kaydedilir.
- **Model/API seçimleri:** Üstteki **Otel/konaklama karşılaştırması** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Web Arama: tavily, exa, brave_search, serpapi; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Otel/konaklama karşılaştırması** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-008 — Restoran keşfi

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Restoran keşfi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Restoran keşfi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-009 — Tur/transfer planlama

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Tur/transfer planlama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Tur/transfer planlama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-010 — Haritaya CSV adres yükleme

- **Kullanıcı bu karta bastığında açılacak ekran:** Sütun eşleştirme; filtre ve gerçek veri grafiği. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** CSV/Excel; metrikler; filtre; grafik türü. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Veri dosyasının satır ve sütun alanları kullanıcı tarafından doğrulanır.
- **Model/API seçimleri:** Üstteki **Haritaya CSV adres yükleme** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Haritaya CSV adres yükleme** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-011 — Bölge/pazar yer analizi

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Bölge/pazar yer analizi** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Bölge/pazar yer analizi** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-012 — Mesafe/süre hesaplama

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Mesafe/süre hesaplama** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Mesafe/süre hesaplama** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-013 — Etkinlik/ziyaret ajandası

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Etkinlik/ziyaret ajandası** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Etkinlik/ziyaret ajandası** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-014 — İşletme konum tanıtım görseli

- **Kullanıcı bu karta bastığında açılacak ekran:** Görsel galeri; stil kartları; çıktı boyutu seçenekleri. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Görsel açıklaması; stil, ölçüler, renkler, varyasyon. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Görseller için önizlemeli dosya yükleme ve değiştirme kutusu yer alır.
- **Model/API seçimleri:** Üstteki **İşletme konum tanıtım görseli** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Gorsel Uretimi: openai, google_gemini, bfl, recraft; Harita Yer Ve Rota Servisi: google_maps, mapbox; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **İşletme konum tanıtım görseli** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-015 — Müşteriye rota PDF'i

- **Kullanıcı bu karta bastığında açılacak ekran:** Sayfa/slayt önizlemesi; dosya format seçimi. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Belge tipi; kaynak dosya; şablon; dil. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Düzenle, önizle, tekrar oluştur ve indirme işlemleri gerçek veri üzerinde çalışır.
- **Model/API seçimleri:** Üstteki **Müşteriye rota PDF'i** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Müşteriye rota PDF'i** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.

##### 18-016 — Konum bazlı saha planı

- **Kullanıcı bu karta bastığında açılacak ekran:** Harita; durak pinleri; yol seçenekleri; konum listesi; İşleme özel: map provider choice. Kart başlığı ve açıklama sabit kalır, sohbeti sıfırlamaz.
- **Gerekli yükleme ve bilgi alanları:** Başlangıç; varış; duraklar; ulaşım türü; tarih. Üzerinde işlem yapılan malzeme, önizlemeye ve kullanıcı projesine bağlanır. Zorunlu alan eksikse üretim başlamaz.
- **Özel etkileşimler:** Konum/rota süreleri ve mesafeler harita sağlayıcısından alınır; tahmin edilip gerçek gibi gösterilmez.
- **Model/API seçimleri:** Üstteki **Konum bazlı saha planı** satırındaki API'ler geçerlidir. Gerekli aşamalarda Otomatik ve Elle seçim açılır. Aşama seçenekleri: Metin Ve Planlama: openai, anthropic, google_gemini, xai; Harita Yer Ve Rota Servisi: google_maps, mapbox, openrouteservice; bağlantısız modeller pasiftir.
- **İşlem sonunda:** Önizleme, çıktı dosyası, projeye kaydetme, geri dönerek değiştirme, kullanılan kredi/işlem durumu ve ilgili alanlardaki hata açıkça görünür.
- **Pazaryeri şablonu:** Satıcı **Konum bazlı saha planı** için zorunlu dosya sayısını, değiştirilebilir alanları, örnek çıktıyı ve kullanım koşullarını tanımlar. Alıcı şablon kartına bastığında bu form otomatik açılır; kişisel dosyalar karışmaz ve ancak başarılı ücretli kullanımdan sonra satıcıya pay yazılır.
