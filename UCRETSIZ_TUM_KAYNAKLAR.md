# ÜCRETSİZ TÜM KAYNAKLAR

**Sürüm:** 2.2 (ayrıntılı, insan + yapay zekâ ortak başvuru el kitabı)  
**Tarih:** 17 Ekim 2026  
**Sahip:** Bu GitHub deposundaki proje. **Ana kaynak:** `UCRETSIZ_TUM_KAYNAKLAR.md`  
**Hedef:** Sadece isim listesi değil; her kaynağın amacı, yapılabilecek işler, kurulum yeri, yaklaşık donanım gereksinimi, ilişkilendirme biçimi ve otomasyon örneği.

> **ZORUNLU YAPAY ZEKÂ NOTU — BU DOSYADAN SONRA ARAŞTIRMAYI BIRAKMA.** Bu envanter başlangıç noktasıdır. İlgili resmî README/API/lisans ve güncel sürümü aç, ardından **GitHub, Hugging Face, üretici belgeleri ve yeni alternatifleri de araştır**. Buradaki bilgiyi güncel doğrulama olmadan kesin sayma. Kullanıcı yeni çözüm arıyorsa bu listeyle kendini sınırlandırma.

> **AI MANDATE:** This catalog is a launchpad, **not a research stop condition**. Read the official repo/documentation for each relevant entry, verify live license, release, cost/quota, hardware and integration, **then research beyond this list** for newer and better truly free/open-source alternatives. Record what is confirmed versus estimated, cite links, and recommend additions. Never assume a listed tool is already installed or operational.

**Hızlı arama:** Sık taramalar için [319 araçlık kısa içindekiler](./KAYNAKLAR_ICINDEKILER.md), programatik filtreleme için [JSON indeks](./KAYNAKLAR_HIZLI_INDEKS.json) vardır. Başka AI'lar önce onu tarayıp `K-ID` seçebilir; ardından ana dosyadaki ayrıntılı karta geçebilir. **Ancak bu Markdown dosyası tek başına da tüm açıklamaları ve iş akışını içerir.**

## HIZLI YOL HARİTASI / BU DOSYA NASIL OKUNUR?

1. **Kullanıcı:** "Akhisar ile ilgili 45 saniyelik videoyu görselleştir, seslendir, montajını yap, TikTok'ta yayımla." der.
2. **Yönetici ajan:** Bu dokümandan iş akışını ve ilgili `K001–K319` kayıtlarını bulur; model/API/kota/VRAM/izinlerini doğrular.
3. **Plan:** Araştırma → kaynaklı senaryo → sahne taslağı → görsel → (uygunsa) video hareketlendirme → Türkçe TTS → müzik → altyazı → FFmpeg → `ffprobe` kontrolü → yayın önizlemesi → hesap ve izin doğrulaması → resmî TikTok API → yayın durumu.
4. **Yerel:** Ajan, yalnızca kurulu/test edilmiş araçları PowerShell/WSL/CLI ile çağırır; eksikse kaynağa göre kurulum taslağı sunar. Tahmini komutları "çalıştı" diye göstermez.
5. **Sonuç:** Görev kayıtları, üretilen MP4, SRT, kullanılan kaynaklar, hata ve yayın kimliği (varsa) tek rapor olur.
6. **Yeni iş:** Aynı yaklaşım web sitesi, mobil oyun, muhasebe, görsel, ses, YouTube/Instagram veya başka iş için de uygulanır. **Uygulama henüz yapılmadıysa kodlanması gerekir; bu rehber tek başına servis kurmaz.**

### Terimler ve kesinlik
- **Açık kaynak:** Yazılımın kodu erişilebilir ve ilgili OSI lisansına tabi olabilir; **modellerin ağırlık lisansını ayrıca incele**.
- **Açık ağırlık:** Model dosyası paylaşılmış olabilir; ticari kullanım serbestliğine eşit değildir.
- **Kotalı ücretsiz API:** Kimlik/kayıt gerekebilir; **ücretsiz kota değişebilir veya kapanabilir**.
- **Ücretsiz masaüstü:** Kaynak kodu kapalı olabilir; bu ikisini karıştırma.
- **Bilinmiyor / doğrula:** Resmî repo veya API bulunmadıysa **asla link, sürüm, donanım veya lisans uydurma**.
- **Boyutlar:** Aşağıdaki disk/RAM/VRAM aralıkları **kurulum kararı için yaklaşık planlama tahminleridir; tek tek benchmark değildir**. Model varyantı, çözünürlük, quantization, platform ve eşzamanlılık belirleyicidir. Kesin değer resmî README veya ölçümden alınır.
- **Kurulu durumu:** Burada hiçbir programın şu anda kullanıcının laptopunda çalıştığı iddia edilmez. Kullanıcı izin verirse `Get-Command`, `Test-Path`, `docker ps`, `nvidia-smi` ile doğrulanır.
- **VPS sorusu:** Bir aracı **kendi laptopunda çalıştırmak için VPS şart değildir**. İnternetten 7/24 erişim istiyorsan yerel tünel veya VPS uygundur. **VPS kiralamak GPU sağlamaz**; ağır üretim için GPU'lu makine gerekir.

### Kullanıcı donanımı için iki ayrı plan
| Ortam | Yaklaşık özellik | Önerilen görevler | Kaçınılacak beklenti |
|---|---|---|---|
| Mevcut Windows 11 laptop | 16 GB RAM; 4 GB VRAM, D: sürücüsü | Yönetici ajan, bulut API'leri, küçük quantize LLM, basit görsel, Whisper küçük modeli, FFmpeg, otomasyon, web/oyun | Büyük AI video, 70B model ve çok sayıda eşzamanlı GPU işi |
| Gelecekteki güçlü kasa | 128 GB RAM; 96 GB VRAM; 10 TB+ SSD hedefi | Yerel büyük modeller, ComfyUI, uzun video kuyruğu, çoklu servis, 7/24 otomasyon | Tek GPU'da sınırsız paralel 4K video; iş kuyruğu gerekir |
| CPU'lu ucuz VPS | Değişken CPU/RAM | Dashboard, otomasyon, veritabanı, API, düşük yük | GPU video/LLM performansı |
| GPU VPS | GPU/VRAM/SLA değişir | Büyük model ve AI video işleri | Hizmetin ücretsiz olduğu varsayımı |

---

## STANDART KAYNAK KARTI (V2) — BUNDAN SONRA EKLENEN HER ŞEY AYNI FORMATTA

Her kartta **sabit benzersiz K-ID** olmalı. Bir kayıt silinirse ID tekrar kullanılamaz. İlgili kartı güncellerken kanıt eklenmeli; sürüm/ücret değiştiyse güncelleme günlüğüne yazılmalı.

```yaml
id: K276                       # Benzersiz; otomatik yeniden numaralama YOK
ad: "Aracın tam adı"
tur: "program | model | API | protokol | hizmet | varlık | plan/iç bileşen"
durum: "açık kaynak | açık ağırlık | ücretsiz kotalı | lisanslı | ücretli | doğrulanmadı"
aciklama: "Nedir ve hangi problemi çözer? 2-4 açıklayıcı cümle."
yapilabilecek_isler:
  - "Somut iş 1"
  - "Somut iş 2"
ornek_tek_komut: "Kullanıcının isteği ve ortaya çıkacak sonuç."
resmi_kaynak: "https://..."
belgeler_ve_lisans: "README/API/Licence adresleri ayrı doğrula"
kurulum_yeri: "Windows | WSL2 | Linux | Docker | web/API"
yerel_disk: "Tahmini GB veya model/varyantına bağlı"
yerel_ram: "Tahmini GB + çalışma payı"
yerel_vram: "Tahmini GB, CPU fallback varsa açıkla"
vps_sart_mi: "Hayır/Evet + neden; GPU VPS ayrı"
laptop_uygunlugu: "16 GB RAM + 4 GB GPU için"
hedef_sunucu_uygunlugu: "128 GB RAM + 96 GB GPU için"
baglanti: "CLI/REST/API/SDK/MCP + input/output"
dogrulanmis_komut: "Yalnızca gerçekten belgeliyse; aksi halde araştırılacak"
lisans_ve_ticari_kullanim: "Sürümden güncel resmî belgeyi kontrol et"
guvenlik: "API key ve erişim, gizlilik, telif, yıkıcı komutlar"
dogrulama_tarihi: "YYYY-MM-DD veya doğrulanmadı"
kanit_seviyesi: "resmî doküman | kontrollü test | tahmin"
alternatif_ara: true
```

**Önemli:** Aşağıdaki kayıtlarda eski kaynak adı, kısa tanım ve resmî sayfa bağlantısı korunur; kullanım ve donanım açıklamaları bağlamlı **tahmindir**. Henüz yapılmamış canlı testler belgeye test yapılmış gibi yazılmaz.

## BAŞTAN SONA ÖRNEK: TEK MESAJ → VİDEO → TIKTOK

### Kullanıcının yazacağı örnek
> "Akhisar'da tarihî bir yer hakkında 45 saniye 1080×1920 video hazırla; resim üret, hareketlendir, Türkçe erkek sesiyle seslendir, özgün müzik ve altyazı ekle, videoyu göster. Kalite ve platform şartları tamamlanırsa açıkça yetkilendirdiğim TikTok hesabımda yayımla. Mümkün olan her aşamada ücretsiz araç kullan."

### Ajanın bağlayacağı işçiler / araçlar
| Aşama | Girdi → çıktı | Birincil araç | Alternatif | Laptop / VPS |
|---|---|---|---|---|
| 1. Kaynak araştırma | Konu → kaynaklı not | İzinli web kaynağı + Crawl4AI, SearXNG | Elle girilen belgeler + Docling | Yerel; VPS gerekmez |
| 2. Metin/sahne planı | Not → `script.json` | Ollama küçük model / OpenCode Free API | Diğer izinli ücretsiz API | Yerel veya API; VPS gerekmez |
| 3. Görseller | `scenes.json` → PNG | ComfyUI ve uygun küçük model | Telifçe uygun kullanıcı görselleri / GIMP | Laptop sınırlı; büyük üretimde GPU makine |
| 4. Video klip | PNG → kısa MP4 | LTX/Wan uygun varyant | FFmpeg zoom/pan hareketi | AI için güçlü GPU; FFmpeg laptopta |
| 5. Türkçe anlatım | Metin → `voice.wav` | Chatterbox (uyumlu model) | Piper mevcut Türkçe ses varsa / izinli API | Hafif sürümlerde yerel |
| 6. Müzik | Talimat → `music.mp3` | ACE-Step uyumlu model | Lisansı uygun müzik dosyası | GPU modeli ağır olabilir |
| 7. Altyazı | `voice.wav` → `subs.srt` | faster-whisper/whisper.cpp | Subtitle Edit | Yerel |
| 8. Montaj | Dosyalar → `final.mp4` | FFmpeg + ffprobe | Kdenlive/Shotcut | Yerel |
| 9. Kalite | MP4 → kontrol raporu | ffprobe, kaynak/telif/onay denetimi | Operatör incelemesi | Yerel |
| 10. Paylaşım | onaylanmış MP4 → TikTok durum/id | TikTok resmî Content Posting API | Taslak yükle + hesap sahibinin uygulamada yayımlaması | **VPS şart değil**; ağ, OAuth, izin ve denetim gerekir |

### İş kuyruğu sözleşmesi
```json
{
  "job_id": "ornek-0001",
  "hedef": "tiktok_dikey_video",
  "sure_saniye": 45,
  "boyut": [1080, 1920],
  "durum": "planlandi",
  "adimlar": ["arastir", "senaryo", "gorsel", "hareket", "tts", "muzik", "srt", "montaj", "kalite", "yayina_onay"],
  "paylasim": {"platform": "tiktok", "hesap_yetkisi": "kontrol_gerekli", "onay": false}
}
```

**Ajanın çalışma kuralı:** Her adımın giriş/çıkış dosyasını denetle, küçük testle doğrula, başarısız adımı sınırlı sayıda tekrar et, daha önce başarılı adımları yeniden üretme. Modelin ticari lisansı/ücretsiz kotası biterse yeni alternatif araştır, körlemesine ücretli API çağırma. **Yayınlamadan önce hesap erişimi, platform kuralları, gerekli API onayı ve kullanıcının açık yetkisini kontrol et.**

### PowerShell çalışma örneği — video montajı için *gerçek* bir yerel temel komut

Aşağıdaki komut **AI görseli/sesi kendiliğinden oluşturmaz**; ajan bunları ilgili kaynaklardan oluşturup aynı klasöre `scene.png`, `voice.wav`, `music.mp3` koyduktan sonra **gerçekten çalıştırılabilir FFmpeg montaj aşamasıdır**. FFmpeg'in PATH'te bulunması gerekir.

```powershell
# Yalnızca kullanıcı onayı ve gerekli dosyalar varsa çalıştır.
$work = "D:\YEREL_BEYIN\isler\ornek-video"
New-Item -ItemType Directory -Force -Path $work | Out-Null
Set-Location $work
if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) { throw "FFmpeg kurulu değil. Resmî kaynaktan kurulum gerekiyor." }
foreach ($file in @("scene.png","voice.wav","music.mp3")) {
    if (-not (Test-Path $file)) { throw "Eksik girdi: $file" }
}
ffmpeg -y -loop 1 -framerate 30 -i scene.png -i voice.wav -stream_loop -1 -i music.mp3 `
  -filter_complex "[1:a]volume=1.0[voice];[2:a]volume=0.12[bg];[voice][bg]amix=inputs=2:duration=first[a]" `
  -map 0:v -map "[a]" `
  -vf "scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920,format=yuv420p" `
  -r 30 -t 45 -c:v libx264 -pix_fmt yuv420p -c:a aac -b:a 192k -shortest final.mp4
if ($LASTEXITCODE -ne 0) { throw "Video montajı başarısız." }
ffprobe -v error -show_entries format=duration -of default=nw=1 final.mp4
if ($LASTEXITCODE -ne 0) { throw "Video kontrolü başarısız." }
```

Altyazı eklenmesi, birden fazla klibin birleştirilmesi ve hareketlendirme için aynı iş hattına ek FFmpeg/ComfyUI adımları gerekir. Dosya yolları örnektir; gerçekten var olduğu iddia edilmez.

### TikTok paylaşımı — lisanslı/izinli API gerçeği

**Resmî kaynaklar (güncel koşulları her işlemde tekrar doğrula):**
- [Direct Post başlama](https://developers.tiktok.com/docs/en/content-posting-api-get-started)
- [Direct Post endpoint](https://developers.tiktok.com/docs/en/content-posting-api-reference-direct-post)
- [Upload taslak endpoint](https://developers.tiktok.com/docs/en/content-posting-api-reference-upload-video)
- [Paylaşım kuralları ve denetim](https://developers.tiktok.com/docs/en/content-sharing-guidelines)

**Yayınlama iki ayrı moddur:**
1. **`video.upload` (taslak / inbox):** Kullanıcı TikTok uygulamasında gözden geçirip kendisi yayımlar. Otomatik herkese açık paylaşım değildir.
2. **`video.publish` (Direct Post):** TikTok geliştirici uygulaması, OAuth erişimi, kullanıcı yetkisi, uygun izin ve **uygulama denetimi** gerekir. Denetlenmemiş istemcilerin yükledikleri içerikler özel görünürlükle sınırlıdır. TikTok API üzerinden erişimi olmayan hesaba otomatik paylaşıldı deme.

**Örnek API sırası:** Kendi uygulamanı kaydet → OAuth'la yetkili hesaba bağlan → gerekli scope'u al → `/v2/post/publish/creator_info/query/` ile kullanıcının izin verilen gizlilik ayarlarını kontrol et → `/v2/post/publish/video/init/` (Direct Post) veya `/v2/post/publish/inbox/video/init/` (taslak) → API'nin döndürdüğü upload URL'sine `FILE_UPLOAD` ile dosyayı gönder veya doğrulanmış `PULL_FROM_URL` kullan → işlem durumunu sorgula → başarılı post kimliğini/logunu kaydet. **Rastgele tarayıcı botuyla platform sınırlamalarını atlatma.**

VPS zorunlu değildir: video Windows'ta üretilir ve resmî HTTPS API'ye gönderilebilir. Dışarıdan sürekli erişilecek webhook/çok kullanıcılı kontrol paneli için VPS veya güvenli tünel tercih edilebilir. **Geçerli API token'ını asla Markdown/GitHub/sohbet metnine yazma.**

### Ajan için bir seferlik görev şablonu
```text
UCRETSIZ_TUM_KAYNAKLAR.md dosyasını en baştan sona oku.
İlgili kayıtların resmî bağlantılarını aç; lisansı, güncel kurulum,
kota, GPU/RAM/disk gereksinimi ve platform API yetkilerini doğrula.
Araştırmayı yalnızca bu belgedeki isimlerle ASLA sınırlandırma;
yeni ve daha uygun ücretsiz/açık kaynak alternatifleri ayrıca bul.
Önce kullanıcının cihazında gerçekten kurulu araçları TESPİT ET
(izin olmadan yükleme/silme/hesap bağlama yapma).
İşi aşamalara ayır, doğrulanmış komutları üret, her çıktıyı denetle,
yapılmış gibi davranma. Canlı yayımlama, ödeme, silme ve izin gerektiren
işlemleri sadece kullanıcı tarafından yetkilendirilmiş kapsamda yürüt.
Yeni faydalı araçları, URL/örnek/yerel RAM VRAM disk/VPS alanlarıyla
bu dosyanın V2 şablonuna eklemeyi teklif et.
```

---

## AÇIKLAMALI KAYNAK KARTLARI — 275 KAYIT (SABİT ID)

Her kartta **kullanım senaryosu, resmî bağlantı, kaynak ihtiyacı, yerel/VPS farkı ve bağlantı biçimi** vardır. Tahminler donanım için başlangıç notudur, ürün benchmark sonucu değildir.


## 01 · Merkezi yönlendirme, yerel LLM ve RAG (22 kayıt)

<a id="k001"></a>

### K001 — FreeLLMAPI

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Birden fazla sağlayıcıyı tek API’de toplar; ticari canlı trafik için tavsiye edilmez. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** 34 sağlayıcı anahtarını tek geçitte deneyip 45 saniyelik senaryoyu uygun kota üzerinden üret.
- **Girdi → Çıktı / bağlantı:** Yerel proxy ile sağlayıcıların API anahtarlarını saklayarak çoklu endpoint; '7,4 milyar token' kullanıcının kişisel kotası değildir, canlı ticari servis koşulları ayrıca araştırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/tashfeenahmed/freellmapi). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k002"></a>

### K002 — LiteLLM

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Model API geçidi, bütçe ve sağlayıcı yönlendirme. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Tek uç noktadan Qwen ile senaryo, başka modelle başlık üretip masraf sınırı koy.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/BerriAI/litellm). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k003"></a>

### K003 — OmniRoute

- **Tür / Ücretsiz durum:** Kullanıcı projesinde planlanan özel bileşen; bağımsız açık kaynak ürün olduğu doğrulanmadı. Önceki sınıflandırma: `P` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Önceki Ana Beyin konuşmalarındaki özel yönlendirme katmanı; bağımsız resmî ürün/lisans teyit edilmedi. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Projeye ait planlanan yönlendirici için önce gerçek kod deposunu belirleyip API failover tasarla; bağımsız ürün olduğu varsayılmasın.
- **Girdi → Çıktı / bağlantı:** Kullanıcının kendi kod projesindeki gerçek dosyalar bulunmadan kurulum/API komutu verilemez.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır; gerçekten kodlanırsa yerelde çalışır. Kamuya açık sürekli servis için VPS/tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k004"></a>

### K004 — OpenCode

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kodlama aracı; model kotası sağlayıcıya bağlı. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** D:\OYUN klasöründe basit Godot kodu üret, testleri çalıştır ve değişiklikleri incelemeye sun.
- **Girdi → Çıktı / bağlantı:** Yerel OpenCode CLI/TUI ve model provider konfigürasyonu; terminal araç izinleri denetlenir.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/anomalyco/opencode). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k005"></a>

### K005 — Ollama

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Model çalıştırıcı. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Küçük Türkçe LLM'i laptopta çalıştır, yerel /api/generate çağrısıyla açıklama üret.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://ollama.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k006"></a>

### K006 — llama.cpp

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** GGUF ve CPU/GPU üzerinden çalıştırma. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** GGUF quantize modeli CPU ile açıp yerel sohbet backend'ine bağla.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/ggml-org/llama.cpp). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k007"></a>

### K007 — vLLM

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yüksek kapasiteli model sunumu. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** 96 GB GPU'da model servisi başlatıp kuyruktaki metin işlerini REST'ten karşıla.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/vllm-project/vllm). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k008"></a>

### K008 — LocalAI

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenAI uyumlu yerel sunucu. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Tek OpenAI-uyumlu localhost API üzerinden yerel model yanıtı al.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/mudler/LocalAI). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k009"></a>

### K009 — Open WebUI

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sohbet ve model arayüzü. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Tarayıcıdaki tek sohbet kutusundan yerel Ollama modelini kullan.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/open-webui/open-webui). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k010"></a>

### K010 — Jan

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Masaüstü LLM uygulaması. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Windows'ta indirilen küçük GGUF modeliyle internetsiz soru-cevap yap.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/janhq/jan). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k011"></a>

### K011 — LM Studio

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz masaüstü uygulama; tam açık kaynak değil. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Yerel modelin çıktılarını masaüstünde test et, lisansın açık kaynak olmadığını ayırt et.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://lmstudio.ai/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k012"></a>

### K012 — GPT4All

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Masaüstü yerel modeller. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Dokümanlardan küçük LLM ile soru-cevap üret.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/nomic-ai/gpt4all). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k013"></a>

### K013 — text-generation-webui

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yerel model web arayüzü. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Tarayıcı arayüzünden quantization parametreleriyle küçük model denemesi yap.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/oobabooga/text-generation-webui). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k014"></a>

### K014 — AnythingLLM

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Belge ve RAG asistanı. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Şirket PDF'lerini içe aktar ve kaynak gösteren sohbet yanıtı ver.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Mintplex-Labs/anything-llm). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k015"></a>

### K015 — Flowise

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel LLM akışları. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Sürükle-bırak ile belge al→parçala→embedding→yanıt akışını kur.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/FlowiseAI/Flowise). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k016"></a>

### K016 — Langflow

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel agent/RAG akışı. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Görsel akış tasarımında LLM→araç→JSON sonuç hattı çiz.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/langflow-ai/langflow). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k017"></a>

### K017 — LangChain

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** LLM uygulama çatısı. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Farklı LLM istemcilerini tek Python zincirine bağla.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/langchain-ai/langchain). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k018"></a>

### K018 — LangGraph

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Çok adımlı agent orkestrasyonu. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Video işi için planla→görsel oluştur→seslendir→montaj→onay aşamalarını checkpoint ile sırala.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/langchain-ai/langgraph). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k019"></a>

### K019 — LlamaIndex

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Doküman erişimi ve RAG. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Belgelerden indeks kurarak sohbet sırasında ilgili bölümleri bul.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/run-llama/llama_index). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k020"></a>

### K020 — Haystack

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Arama ve RAG iş akışı. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Web kaynaklarını indeksleyip belgeli soru-cevap servisi üret.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/deepset-ai/haystack). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k021"></a>

### K021 — RAGFlow

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Belge üzerinden RAG. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Tarama belgelerini ayrıştırıp RAG sohbet sistemi oluştur.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/infiniflow/ragflow). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k022"></a>

### K022 — Dify

- **Tür / Ücretsiz durum:** Uygulama / aracı katman / kütüphane. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** LLM uygulama platformu; kendi topluluk lisansı, OSI değil. Model çalıştırma, ajan yürütme veya birden fazla sağlayıcının araçlarını bağlama.
- **Somut yapılabilecek iş:** Görsel bir iş akışıyla müşteri destek asistanı prototipi çıkar.
- **Girdi → Çıktı / bağlantı:** REST/OpenAI-uyumlu API, CLI, Python veya yerel servis; uygulamaya göre README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/langgenius/dify). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım genellikle 0,1–3 GB; indirilen modeller ayrıca 1–500+ GB.
- **RAM:** Arayüz/proxy 0,5–4 GB; yerel LLM seçilen modelin boyutuna göre 4–128+ GB. **VRAM/GPU:** Çoğu arayüz/proxy için gerekmez; model sunucusunda model boyutuna göre 0–96+ GB.
- **VPS şart mı?** Hayır: Windows/WSL/Docker ile yerel çalışır. İnternete sürekli açık hizmet istiyorsan VPS veya güvenli tünel seçenek; GPU modeli VPS'de çalıştıracaksan GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Yönetim/CPU küçük model: uygun; büyük LLM: uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Ağır modelleri ve eşzamanlı işleri sunabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 02 · Uzaktan ücretsiz API/kota sağlayıcıları (15 kayıt)

<a id="k023"></a>

### K023 — OpenCode Console Free modeller

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Bazı modeller 'Free' olarak listeleniyor; bazıları geçici. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** OpenCode içinden güncel ücretsiz model listesini seçip kod tamamlama isteği gönder.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k024"></a>

### K024 — OpenRouter :free modeller

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz model uç noktaları; kota değişir. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** OpenRouter 'free' etiketli erişilebilir modelleri keşfet ve kota dolunca yeniden dene.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://openrouter.ai/models). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k025"></a>

### K025 — NVIDIA Build/NIM

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Prototip amaçlı ücretsiz uç noktalar; dağıtıma uygunluk şartlı. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** NVIDIA Build üzerindeki uygun modelle senaryo taslağı üret ve limitini ölç.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://build.nvidia.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k026"></a>

### K026 — Google Gemini API

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yalnız uygun modellerde ücretsiz katman. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Gemini API'den yapılandırılmış JSON sahne planı iste.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://ai.google.dev/gemini-api/docs/pricing). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k027"></a>

### K027 — GroqCloud

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Hızlı LLM servisi; ücretsiz plan sınırlı. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** GroqCloud'da desteklenen açık modelle hızlı altyazı çevirisi yap.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://console.groq.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k028"></a>

### K028 — Cerebras Inference

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz katman / hız limitleri sağlayıcıya göre. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Cerebras API'den kısa kod inceleme çıktısı al.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://inference.cerebras.ai/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k029"></a>

### K029 — Cloudflare Workers AI

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Günlük 10.000 neuron ücretsiz; bazı güçlü modeller ücretli. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Workers AI ile küçük özetleme uç noktası geliştir, günlük neuron tüketimini izle.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://developers.cloudflare.com/workers-ai/platform/pricing/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k030"></a>

### K030 — Mistral API

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz/deneysel erişim değişken; modele göre şartlar. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Mistral API'yle uzun metni bölüm bölüm özetle.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://console.mistral.ai/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k031"></a>

### K031 — Hugging Face Inference

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz kullanım kredisi/limitleri düşük. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Hugging Face üzerinde ücretsiz erişime uygun inference örneğini çalıştır.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/docs/inference-providers/index). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k032"></a>

### K032 — ModelScope

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz demolar/kotalı inference; bölgesel koşulları doğrula. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** ModelScope model sayfasından model koşullarını ve örnek kodu karşılaştır.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://modelscope.cn/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k033"></a>

### K033 — Z.ai GLM API

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Belirli ücretsiz promosyon/model varsa kullan; sürekli garanti yok. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** GLM API'yi sağlayıcı adaptörüne bağlayıp tool calling test et.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://open.bigmodel.cn/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k034"></a>

### K034 — GitHub Models

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sınırlı ücretsiz deneysel modeller. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** GitHub Models'de uygun modelle kod üretimini prototiple.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/marketplace/models). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k035"></a>

### K035 — Cohere API

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Deneme/araştırma anahtarı; ticari üretim koşulları ayrı. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Cohere ile belge sınıflandırma veya embedding özelliğini test et.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://docs.cohere.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k036"></a>

### K036 — Kimi web sohbeti

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Web kullanımı sınırlı; Kimi API ile aynı hak değil. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Kimi web sohbetine ürün analizi sorusu sor; bunu otomatik API zannetme.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.kimi.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel model ağırlığı 0 GB; sadece istemci/kayıtlar (MB–GB).
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB.
- **VPS şart mı?** Hayır; laptop doğrudan HTTPS API'ye bağlanır. Kullanıcıya açık uygulama için VPS veya güvenli arka uç isteğe bağlıdır; API anahtarını istemciye gömme.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k037"></a>

### K037 — Claude ücretsiz sohbet

- **Tür / Ücretsiz durum:** Uzak LLM servis/API sağlayıcısı. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sohbet sınırlı ücretsiz; Claude Code kullanım hakkı değil. Metin, kod veya multimodal yanıtları uzak model altyapısından almak.
- **Somut yapılabilecek iş:** Claude web arayüzünde kısa metni düzelt; sohbeti programatik API sanma.
- **Girdi → Çıktı / bağlantı:** HTTPS REST/SDK ve gizli ortam değişkeni; güncel kota, limit ve ticari izin doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://claude.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Sohbet web üzerinden kullanılır, model yerelde depolanmaz.
- **RAM:** İstemci için çoğunlukla 0,1–1 GB; tarayıcı ek tüketebilir. **VRAM/GPU:** Yerelde 0 GB
- **VPS şart mı?** Hayır; web arayüzü. Programatik API erişimi aynı şey değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uygun, internet ve kota gerekir. Hedef kasa (128 GB RAM, 96 GB GPU): Kullanılabilir; GPU zorunlu değildir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 03 · OpenCode üzerinden önceki ÜCRETSİZ kod/LLM modelleri (14 kayıt)

<a id="k038"></a>

### K038 — Big Pickle

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free; deneme süreci geçici olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Big Pickle'ı OpenCode'da kod düzeltme isteğiyle test et.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k039"></a>

### K039 — DeepSeek V4.1 Flash Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free; süre/limit değişebilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** DeepSeek Flash Free modeliyle küçük Python fonksiyonu yazdır.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k040"></a>

### K040 — Space Bunny Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Space Bunny Free'nin model kimliğinin hâlâ var olup olmadığını kontrol et; örnek SQL sorgusu üret.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k041"></a>

### K041 — Cat Jam Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free; ülkeler bazında kısıt olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Cat Jam Free modelinin erişimini doğrula, kısa açıklama hazırlat.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k042"></a>

### K042 — LongCat 2.5 Preview Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free önizleme. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** LongCat Preview modelini uzun kod bloğu açıklamada dene.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k043"></a>

### K043 — Step 5 Preview Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free önizleme. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Step Preview modeline problem çözme planı ürettir.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k044"></a>

### K044 — Exo Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free, geçici olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Exo Free ile API endpoint örneği yazdır.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k045"></a>

### K045 — MiMo-V2.6-Flash Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free, geçici olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** MiMo Flash ile basit JavaScript test dosyası hazırlat.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k046"></a>

### K046 — MiMo-V2.5 Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free, geçici olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** MiMo Free ile hata ayıklama adımlarını JSON al.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k047"></a>

### K047 — Nemotron 3 Ultra Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode/NVIDIA ücretsiz test; gizli veri gönderme. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Nemotron Ultra Free'yi uzun talimatlı görev planında sınırlarıyla dene.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k048"></a>

### K048 — Nemotron 3.5 Lightning Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free, geçici olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Nemotron Lightning Free ile hızlı kod tamamlama yap.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k049"></a>

### K049 — Nemotron 3.5 Super VL Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OpenCode Free görsel anlama, geçici olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Nemotron Super VL Free üzerinde ekran görüntüsü açıklaması dene (görüntü kabulü varsa).
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k050"></a>

### K050 — Muse Spark 1.3 Contributor Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Katkı/erişim koşulları geçici olabilir. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Muse Spark Contributor Free'nin katkı şartını doğrula, bir TypeScript fonksiyonu test et.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k051"></a>

### K051 — Jev 1.13 Free

- **Tür / Ücretsiz durum:** Uzakta sunulan ücretsiz/kotalı model. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Karar/sınıflandırma tipi model; serbest metin LLM değil. Kod yazma, özetleme veya ajan isteklerine ücretsiz kota kapsamında yanıt üretmek.
- **Somut yapılabilecek iş:** Jev 1.13 Free erişimini doğrula, kısa özet iste.
- **Girdi → Çıktı / bağlantı:** OpenCode/model sağlayıcısı listesi; güncel model kimliği ve ücretsiz erişim ayrıca test edilmeli.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencode.ai/v2/docs/console/models/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Bulut erişiminde yerelde model dosyası 0 GB.
- **RAM:** İstemci yaklaşık 0,1–1 GB. **VRAM/GPU:** Yerelde 0 GB; model dosyası varsa yerel uyumluluğu ayrıca araştır.
- **VPS şart mı?** Hayır; API erişimi için internet yeterli. Web ürününün arka ucunu VPS'ye almak ayrı karardır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): API ile uygun. Hedef kasa (128 GB RAM, 96 GB GPU): API veya mevcutsa uyumlu yerel modelle.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 04 · Yerel/açık ağırlıklı LLM aileleri (14 kayıt)

<a id="k052"></a>

### K052 — Qwen3 küçük boyutlar

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** 0.6B/1.7B/4B sınıfı quantized; sürüm ve lisansı doğrula. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Küçük Qwen3 1–4B varyantını GGUF/Ollama ile Türkçe sohbet için dene.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/Qwen). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: 4GB/CPU test. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k053"></a>

### K053 — Qwen Coder serisi

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kodlama; büyük sürümler güçlü sistem ister. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Qwen Coder'ın uygun quantize sürümüyle otomatik test yaz.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/Qwen). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k054"></a>

### K054 — DeepSeek R1 Distill

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Damıtılmış sürümler; her boyutun lisansı farklı olabilir. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** DeepSeek R1 Distill küçük modelle adım adım mantık egzersizi çöz.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/deepseek-ai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k055"></a>

### K055 — DeepSeek V3/V4 aileleri

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Üst boyutlar ev laptopunda çalışmaz. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** DeepSeek V3/V4 modelinin uygun açık ağırlık/API seçeneğiyle kod gözden geçir.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/deepseek-ai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Uzak/Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k056"></a>

### K056 — GLM açık ağırlıklı aile

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sürüm bazında lisansı ve açılmış ağırlıkları incele. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** GLM'nin açık ağırlık varyantını yerel kurulum koşullarına göre test et.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/zai-org). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k057"></a>

### K057 — Kimi K2 açık ağırlıklı aile

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Model sürümü ve Moonshot lisansını ayrı doğrula. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Kimi K2 ağırlık lisansını doğrula ve uygun büyük GPU sunucusunda kodlama görevi dene.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/moonshotai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Uzak/Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k058"></a>

### K058 — Kimi K3 API

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kodlama hedefi; açık ağırlıklı olduğunu varsayma. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Kimi K3'ün mevcut resmî API erişimi üzerinden senaryo ürettir; yerel ağırlığı var sanma.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.kimi.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** API ile model ağırlığı 0 GB. Açık ağırlıklı resmî dağıtım olup olmadığını ayrıca kontrol et.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** API ile 0 GB.
- **VPS şart mı?** API kullanımı için VPS gerekmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k059"></a>

### K059 — GPT-OSS 20B/120B

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Açık ağırlık; 4GB laptopa büyük. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** GPT-OSS 20B'yi güçlü RAM/VRAM'de quantize ederek görev yöneticisini çalıştır.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/openai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: 20B güçlü GPU/120B sunucu. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k060"></a>

### K060 — Mistral / Mixtral açık modeller

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yalnız açık yayımlanmış varyantlar. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Mistral/Mixtral'in lisanslı ve boyuta uygun varyantıyla doküman özetle.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/mistralai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k061"></a>

### K061 — Gemma ailesi

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Google model kullanım koşulları geçerli. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Gemma'nın küçük sürümüyle dizüstünde içerik başlıkları üret.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/google). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k062"></a>

### K062 — Llama açık ağırlık ailesi

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Meta Community License, OSI açık kaynak değil. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Llama'nın erişimi izin verilen quantize varyantını özel bilgileri göndermeden kullan.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.llama.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k063"></a>

### K063 — IBM Granite aileleri

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kod, metin ve kurumsal modeller. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Granite'in küçük kurumsal modelini sınıflandırma için kur.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/ibm-granite). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k064"></a>

### K064 — Nemotron açık ağırlıklı aile

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Modellerin kullanım lisansı ayrı kontrol edilmeli. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** Nemotron'un açık sürümünü uzun belge işinde karşılaştır.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/nvidia). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k065"></a>

### K065 — OLMo ailesi

- **Tür / Ücretsiz durum:** LLM modeli/model ailesi. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Açık araştırma modelleri. Metin, kod, akıl yürütme veya çok modlu görevleri yerine getirmek.
- **Somut yapılabilecek iş:** OLMo açık ağırlık modelini reproducibility odaklı değerlendirme için kullan.
- **Girdi → Çıktı / bağlantı:** Ollama, llama.cpp, vLLM veya API; dosya biçimi ve lisans modele göre.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/allenai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Modellere göre Q4 ağırlıkları: ~1B=0,6–1 GB; 7–8B=4–6 GB; 20B=11–16 GB; 70B=40–55 GB; büyük MoE daha fazla. Kesin varyanta bak.
- **RAM:** Ağırlık + KV-cache + çalışma payı; 7–8B Q4 için çoğunlukla ≥8–12 GB, 20B için ~16–32 GB, büyük modellerde 64–128+ GB. **VRAM/GPU:** GPU hızlandırma için mümkünse model ağırlıklarının anlamlı kısmı VRAM'e sığmalı; 4 GB'da küçük Q4 veya CPU paylaşımı; 96 GB'da çok daha fazlası.
- **VPS şart mı?** Hayır; model yerelde sığarsa VPS gerekmez. Buluttaki hazır API için yerel yükleme gerekmez; uzaktan model barındırmak istersen yeterli RAM/GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük quantize varyantlar/CPU mümkün; büyük modeller uygun değil. Hedef kasa (128 GB RAM, 96 GB GPU): Orta/büyük quantize modeller, model başına uyumluluk ve lisansa göre.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 05 · Claude, Kimi ve kodlama ajanları (17 kayıt)

<a id="k066"></a>

### K066 — Claude Code

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ü` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kodlama aracı ücretsiz sınırsız Claude erişimi sağlamaz. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Claude Code'a depoyu analiz ettir, değişiklik yapmadan önce plan iste; Claude API/plan maliyeti ayrı.
- **Girdi → Çıktı / bağlantı:** Claude Code CLI/IDE; uyumlu API/gateway resmi yönergelere göre. Ücretsiz sohbet paketi Claude Code'un sınırsız ücretsiz olduğu anlamına gelmez.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://claude.com/product/claude-code). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut+CLI. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k067"></a>

### K067 — Claude Chat Free

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz sohbet; Claude Code değil. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Claude ücretsiz sohbet arayüzünde taslağı düzelt; CLI erişimi varsayma.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://claude.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Sohbet web üzerinden kullanılır, model yerelde depolanmaz.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Yerelde 0 GB
- **VPS şart mı?** Hayır; web arayüzü. Programatik API erişimi aynı şey değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k068"></a>

### K068 — Kimi Code CLI

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kimi sağlayıcı erişim ve abonelik şartına bağlı. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Kimi Code CLI ile yerel web projesinde dosya testleri üret.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.kimi.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel istemci+bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k069"></a>

### K069 — OpenCode

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz kodlama istemcisi. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** OpenCode ile dosya düzenle ve git diff'i göster.
- **Girdi → Çıktı / bağlantı:** Yerel OpenCode CLI/TUI ve model provider konfigürasyonu; terminal araç izinleri denetlenir.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/anomalyco/opencode). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k070"></a>

### K070 — Aider

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Terminalden dosya tabanlı kodlama. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Aider'a belirli dosyayı değiştirt, git geçmişiyle farkları gör.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Aider-AI/aider). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k071"></a>

### K071 — Cline

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** IDE kodlama ajanı; model erişimi ayrıca. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Cline IDE ajanına hata düzeltme görevi ver; terminal izinlerini kısıtla.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/cline/cline). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k072"></a>

### K072 — Kilo Code

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kodlama ajanı; API maliyeti ayrı. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Kilo Code'la alternatif model üzerinden TypeScript testi yaz.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Kilo-Org/kilocode). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k073"></a>

### K073 — OpenHands

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Agent ile yazılım görevleri. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** OpenHands ajanını güvenli proje çalışma alanında basit issue çözümüne yönlendir.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/OpenHands/OpenHands). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k074"></a>

### K074 — Goose

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Genel amaçlı açık agent. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Goose ile komut satırından görev yapan otomasyon ajanı kur.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/aaif-goose/goose). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k075"></a>

### K075 — Qwen Code

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Qwen tabanlı kodlama CLI, model ücretsiz kotasına bağlı. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Qwen Code ile proje README ve test üretimini dene.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/QwenLM/qwen-code). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k076"></a>

### K076 — Codex CLI

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** İstemci kaynak kodu açık; model çalıştırma ücretsiz değil. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Codex CLI'yi izin verilen plan/modelle kod incelemede kullan.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/openai/codex). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k077"></a>

### K077 — Gemini CLI

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz Google kotası bulunan CLI; kota değişebilir. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Gemini CLI ile ücretsiz kota varsa refaktör önerisi al.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/google-gemini/gemini-cli). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k078"></a>

### K078 — Open Interpreter

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Komut/masaüstü işlerini otomatikleştirme. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Open Interpreter'a yalnızca okuma/deneme yetkisiyle CSV analiz ettir.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/OpenInterpreter/open-interpreter). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k079"></a>

### K079 — Everything Claude Code

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `P` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Claude projelerini yapılandırmaya yönelik topluluk şablonları; lisansını kontrol et. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Everything Claude Code komut/skill şablonlarını proje standardına uyarlamadan önce incele.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k080"></a>

### K080 — OmniWrite

- **Tür / Ücretsiz durum:** Kullanıcı projesinde adı geçen özel bileşen; bağımsız doğrulanmış kurulum deposu yok. Önceki sınıflandırma: `P` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Önceki görüşmelerde adı geçti; Ana Beyin için daha sonra kullanılmaması kararlaştırılmıştı. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** OmniWrite adını bağımsız açık kaynak ürün sanmadan önce kodunu ve işlevini doğrula.
- **Girdi → Çıktı / bağlantı:** Gerçek repo, README, API ve lisans tespit edilene kadar otomatik kullanım yapılamaz.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Kod ve kurulum yeri netleşmeden karar verilmez; projeye özel.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k081"></a>

### K081 — Roo Code

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `P` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Önceki listede vardı, devamlılık/destek durumunu yeniden doğrula. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Roo Code ile çok adımlı VS Code hata düzeltmesini test et.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k082"></a>

### K082 — Continue

- **Tür / Ücretsiz durum:** Kodlama yapay zekâ ajanı / CLI. Önceki sınıflandırma: `P` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Önceki listede vardı; güncel geliştirme/destek durumu teyit edilmeden çekirdek seçme. Proje kodu oluşturma, düzenleme, test yazma ve terminal aracılığıyla görev yürütme.
- **Somut yapılabilecek iş:** Continue ile yerel modelden IDE içinde kod tamamlat.
- **Girdi → Çıktı / bağlantı:** CLI, VS Code/IDE uzantısı, API, terminal; proje üzerinde yazma/test yetkisi sınırlandırılır.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Araç genellikle 0,1–3 GB; proje, bağımlılıklar ve yerel model ayrıca.
- **RAM:** Ajan uygulaması yaklaşık 0,5–4 GB; IDE/tarayıcı/proje daha fazla; yerel LLM ayrı. **VRAM/GPU:** Uzak API ile 0 GB; yerel modele geçilirse modele bağlı.
- **VPS şart mı?** Hayır; Windows/WSL'de proje klasörü üzerinde çalışabilir. Uzak otomasyon için VPS veya CI runner seçenek; API modeli VPS'de kurulmak zorunda değil.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Uzak ücretsiz API kotasıyla uygun; ağır derlemeleri sırala. Hedef kasa (128 GB RAM, 96 GB GPU): Birden çok ajan/görev için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 06 · Görsel üretme, düzenleme, kalite yükseltme (23 kayıt)

<a id="k083"></a>

### K083 — ComfyUI

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Node tabanlı görsel-video üretim arayüzü; model ayrıca. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** ComfyUI'de görsel üret→upscale→çıktı kaydet düğüm zinciri kur.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/comfy-org/comfyui). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU/CPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k084"></a>

### K084 — Stable Diffusion 1.5

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Düşük çözünürlükte çalışabilir; model lisansı kontrol. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Stable Diffusion 1.5 ile 512px taslak görsel üret.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: 4GB test. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k085"></a>

### K085 — SDXL

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** 4GB'ta çok yavaş/sınırlı; model lisansları ayrı. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** SDXL ile Instagram için ayrıntılı kapak görseli üret.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k086"></a>

### K086 — FLUX.1 Schnell

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Apache-2.0 görsel modeli; ticari kullanım mümkün. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** FLUX Schnell'le lisansa uygun hızlı afiş prototipi oluştur.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/black-forest-labs/flux). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k087"></a>

### K087 — FLUX.1 Dev

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Non-commercial model lisansı; ticari üretim için ana seçenek değil. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** FLUX Dev lisansını doğrula; ticari işte izin yoksa kullanma.
- **Girdi → Çıktı / bağlantı:** ComfyUI/Diffusers ve resmi ağırlıklar; ticari iş için ayrı lisans gerekebilir.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/black-forest-labs/flux). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k088"></a>

### K088 — Qwen-Image

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Apache-2.0; resimde yazı üretimi. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Qwen-Image ile Türkçe metin içeren afiş üretimini dene.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/QwenLM/Qwen-Image). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k089"></a>

### K089 — Qwen-Image-Edit

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Resim düzenleme; varyantın lisansı kontrol. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Qwen-Image-Edit ile hazır ürün fotoğrafındaki nesneyi düzenle.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/QwenLM/Qwen-Image). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k090"></a>

### K090 — Z-Image-Turbo

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Açık model adayı; ağırlık ve sürüm lisansını kontrol. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Z-Image-Turbo ile hızlı fotoğraf taslağı çıkar.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k091"></a>

### K091 — InvokeAI

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel üretim/çalışma alanı. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** InvokeAI ile maskeyle sadece afiş arka planını yeniden boyat.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/invoke-ai/InvokeAI). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k092"></a>

### K092 — SD WebUI Forge

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** SD için optimize web arayüzü. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** SD WebUI Forge'da düşük VRAM uyumlu parametreleri test et.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/lllyasviel/stable-diffusion-webui-forge). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k093"></a>

### K093 — Diffusers

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel-video inference kütüphanesi. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Diffusers Python pipeline'ında toplu görsel üretimini programla.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/huggingface/diffusers). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k094"></a>

### K094 — ControlNet

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel kontrol modelleri, checkpoint koşulları ayrı. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** ControlNet ile çizimi poz ve perspektif rehberi olarak kullan.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/lllyasviel/ControlNet). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k095"></a>

### K095 — rembg

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Arka plan kaldırma. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** rembg ile ürün fotoğrafının arka planını sil ve PNG üret.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/danielgatis/rembg). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k096"></a>

### K096 — Real-ESRGAN

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel yükseltme. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Real-ESRGAN ile küçük görselin çözünürlüğünü artır.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/xinntao/Real-ESRGAN). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k097"></a>

### K097 — GFPGAN

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yüz restorasyonu. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** GFPGAN ile arşiv portresinde yüz restorasyonu dene.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/TencentARC/GFPGAN). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k098"></a>

### K098 — SAM 2

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel/video nesne segmentasyonu. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** SAM2 ile videodaki kişiyi maskeyle ayır; izinleri gözet.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/facebookresearch/sam2). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k099"></a>

### K099 — Krita

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Resim çizimi. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Krita'da afiş üzerindeki metni ve katmanları elle düzenle.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://krita.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k100"></a>

### K100 — GIMP

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Fotoğraf düzenleme. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** GIMP ile görselleri toplu renk düzeltip PNG dışa aktar.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.gimp.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k101"></a>

### K101 — Inkscape

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Vektörel logo/tasarım. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Inkscape ile vektör logo taslağı çıkar ve SVG sakla.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://inkscape.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k102"></a>

### K102 — darktable

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** RAW fotoğraf düzenleme. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** darktable ile ham fotoğrafların ışık ve tonunu işle.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.darktable.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k103"></a>

### K103 — ImageMagick

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Toplu görsel dönüştürme. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** ImageMagick ile 20 resmi 1080×1920 kırp.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://imagemagick.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k104"></a>

### K104 — Sharp

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Node.js görsel işleme. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** Sharp ile web yüklemelerinde AVIF/WebP dönüştür.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://sharp.pixelplumbing.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k105"></a>

### K105 — libvips

- **Tür / Ücretsiz durum:** Görsel üretim/düzenleme aracı veya modeli. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yüksek performanslı resim işlemleri. Görsel oluşturma, arka plan çıkarma, kalite artırma, katman düzenleme.
- **Somut yapılabilecek iş:** libvips ile yüzlerce görselin küçük önizlemelerini hızlı üret.
- **Girdi → Çıktı / bağlantı:** Python, ComfyUI API, CLI veya masaüstü; görüntüler dosya olarak aktarılır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.libvips.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,2–3 GB; model ağırlıkları ~1–50+ GB/varyant; çıktı başına MB–GB.
- **RAM:** Basit düzenleme 2–8 GB; büyük model iş akışı 16–64+ GB. **VRAM/GPU:** Klasik editör 0 GB; AI işlemi modele göre ~4–24+ GB, bazı büyük modeller daha fazla.
- **VPS şart mı?** Hayır; yerelde üretilebilir. GPU'suz VPS ancak klasik resim işlemleri için uygun; ağır difüzyon için GPU'lu VPS gerekir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Klasik editör/arka plan/küçük modeller uygundur; büyük difüzyon sınırlı. Hedef kasa (128 GB RAM, 96 GB GPU): Görsel üretimi, toplu işleme ve kalite yükseltme için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 07 · Video üretimi, animasyon, kurgu (20 kayıt)

<a id="k106"></a>

### K106 — Wan2.2

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Apache-2.0 video modeli; 4GB laptopta büyük iş yükü gerçekçi değil. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Wan2.2 ile uygun GPU'da statik sahneden 5 saniye video oluştur.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Wan-Video/Wan2.2). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k107"></a>

### K107 — Wan2.1

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Açık video modelleri. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Wan2.1 ile kısa ürün tanıtım sahnesi üret.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Wan-Video/Wan2.1). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k108"></a>

### K108 — HunyuanVideo 1.5

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Tencent community lisansı, coğrafi/ticari koşullar. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** HunyuanVideo 1.5 ile kısa hareketli sahne dene; lisans kontrolü yap.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Tencent-Hunyuan/HunyuanVideo-1.5). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k109"></a>

### K109 — LTX-Video

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sürüme göre lisans koşulları değişir. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** LTX-Video ile hareketli kısa klip oluştur ve hızını ölç.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Lightricks/LTX-Video). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k110"></a>

### K110 — LTX-2 / LTX-2.x

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Community license; büyük şirketler için ticari ücret eşiği. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** LTX-2.x ile video+ses üretimini uygun lisans ve GPU'da test et.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Lightricks/LTX-2). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k111"></a>

### K111 — CogVideoX

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Video modeli; checkpoint lisansı kontrol. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** CogVideoX ile prompttan kısa hareketli plan üret.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/zai-org/CogVideo). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k112"></a>

### K112 — Mochi 1

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Açık video modeli. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Mochi 1 modeliyle hareketli klip dene.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/genmoai/mochi). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k113"></a>

### K113 — FramePack

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Uzun video üretimi için frame bağlam stratejisi. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** FramePack ile belleği daha verimli kullanarak kare üretimi dene.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/lllyasviel/FramePack). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k114"></a>

### K114 — AnimateDiff

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Stable Diffusion ile animasyon. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** AnimateDiff ile görseli kısa animasyona dönüştür.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/guoyww/AnimateDiff). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k115"></a>

### K115 — LivePortrait

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Portre canlandırma; model/ağırlık lisansı kontrol. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** LivePortrait ile izinli portrenin baş hareketini canlandır.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/KwaiVGI/LivePortrait). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k116"></a>

### K116 — RIFE

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kare arası interpolasyon. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** RIFE ile 15 FPS sahneyi ara kare ekleyerek akıcı hâle getir.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/hzwer/ECCV2022-RIFE). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k117"></a>

### K117 — Video2X

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Video büyütme. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Video2X ile düşük çözünürlüklü animasyon videosunu yükselt.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/k4yt3x/video2x). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k118"></a>

### K118 — FFmpeg / ffprobe

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Montaj, kırpma, encode, ses ve altyazı. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** FFmpeg ile dokuz sahne+ses+altyazıyı H.264 MP4 olarak dışa aktar, ffprobe ile denetle.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://ffmpeg.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k119"></a>

### K119 — PySceneDetect

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Videoda sahne tespiti. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** PySceneDetect ile uzun videodaki sahne sınırlarını CSV'ye çıkar.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Breakthrough/PySceneDetect). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k120"></a>

### K120 — Kdenlive

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Video editörü. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Kdenlive'da otomatik üretilmiş MP4'ü insan denetiminde düzenle.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://kdenlive.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k121"></a>

### K121 — Shotcut

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Video editörü. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Shotcut ile video kes ve renk ayarla.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://shotcut.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k122"></a>

### K122 — Blender Video Sequencer

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Video edit ve 3D. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Blender Video Sequencer'da ses/video kliplerini zaman çizelgesinde birleştir.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.blender.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k123"></a>

### K123 — Natron

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kompozit / VFX. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** Natron ile yeşil ekranı çıkarıp efekt katmanı ekle.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://natrongithub.github.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k124"></a>

### K124 — OBS Studio

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ekran ve canlı yayın kaydı. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** OBS ile uygulama eğitim videosunun ekran kaydını al.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://obsproject.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k125"></a>

### K125 — OpenMontage

- **Tür / Ücretsiz durum:** Video üretim / montaj / animasyon aracı. Önceki sınıflandırma: `P` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Önceki envanterde adı geçti; gerçek repo/lisans netleşmeden ana araç yapma. Görüntüleri hareketlendirme, sahne üretimi, montaj, kurgu ve kodlama.
- **Somut yapılabilecek iş:** OpenMontage'nin gerçek projesini doğrula; önce otomatik montaj yeteneklerini test et.
- **Girdi → Çıktı / bağlantı:** CLI, Python, ComfyUI API; giriş görsel/video/ses ve çıktı MP4.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Montaj uygulaması 0,1–5 GB; üretken video model ağırlıkları genellikle 5–100+ GB; render çalışma alanı onlarca/yüzlerce GB olabilir.
- **RAM:** Montaj 4–16 GB; üretken video ve uzun iş akışı 32–128+ GB. **VRAM/GPU:** Klasik FFmpeg CPU ile çalışır; üretken video yaklaşık 8–96+ GB model/çözünürlüğe göre.
- **VPS şart mı?** Hayır; yerelde CPU/GPU ile çalışır. Video üretmek için GPU'lu VPS alternatif; yayınlamak için VPS zorunlu değildir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): FFmpeg/montaj/klasik animasyon uygun, büyük AI video pratik değil. Hedef kasa (128 GB RAM, 96 GB GPU): Hızlı ve ağır üretim modellerini tek GPU'da sıraya alarak çalıştırabilir.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 08 · Ses, konuşma, çeviri, altyazı, müzik (25 kayıt)

<a id="k126"></a>

### K126 — Whisper

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Konuşmadan metne dönüştürme. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Whisper ile Türkçe konuşmayı yazıya çevir.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/openai/whisper). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k127"></a>

### K127 — faster-whisper

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Hızlı Whisper STT. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** faster-whisper ile düşük kaynakla altyazı zamanlarını çıkarmayı dene.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/SYSTRAN/faster-whisper). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k128"></a>

### K128 — whisper.cpp

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** CPU odaklı transkripsiyon. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** whisper.cpp ile CPU'da küçük ses dosyası yazıya dök.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/ggml-org/whisper.cpp). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k129"></a>

### K129 — Silero VAD

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Konuşma/sessizlik algılama. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Silero VAD ile sessizlikleri kes ve konuşma aralıklarını belirle.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/snakers4/silero-vad). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k130"></a>

### K130 — WebRTC VAD

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Konuşma algılama. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** WebRTC VAD ile mikrofon sesini konuşma/sessizlik diye ayır.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/wiseman/py-webrtcvad). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k131"></a>

### K131 — Kokoro TTS

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Hafif TTS; Türkçe desteği/kalitesi sürüme bağlı. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Kokoro TTS ile desteklenen bir dilde kısa ses denemesi üret.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/hexgrad/kokoro). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k132"></a>

### K132 — Piper TTS

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Hafif offline seslendirme; Türkçe sesleri kontrol. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Piper TTS'de bulunabilen Türkçe ses paketini ve lisansını doğrulayıp yerel okuma yap.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/rhasspy/piper). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k133"></a>

### K133 — Chatterbox Multilingual TTS

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Türkçe destekli, ses taklidi; izinli referans ses kullan. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Chatterbox Multilingual ile Türkçe seslendirme oluştur.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/resemble-ai/chatterbox). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k134"></a>

### K134 — CosyVoice

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Çok dilli konuşma sentezi; Türkçe kalite testi gerekli. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** CosyVoice ile desteklenen çok dilli TTS'yi test et.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/QwenAudio/CosyVoice). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k135"></a>

### K135 — MeloTTS

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** TTS seçenekleri; Türkçe desteği kontrol. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** MeloTTS için Türkçe desteğini doğrulamadan Türkçe sözü verme.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/myshell-ai/MeloTTS). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k136"></a>

### K136 — OpenVoice

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ses klonlama/aktarımı; lisansı ayrı kontrol. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** OpenVoice ile izinli örnek sesten ses stili aktarımı dene.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/myshell-ai/OpenVoice). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k137"></a>

### K137 — F5-TTS

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kod/model ağırlığı lisansları farklı olabilir. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** F5-TTS ile konuşma üretim demosu yap; ticari/ses haklarını doğrula.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/SWivid/F5-TTS). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k138"></a>

### K138 — Fish Speech

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Özel araştırma/komünite lisansı olabilir; ticari kullanımı kontrol. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Fish Speech ile uzun anlatımı sesli çıktıya çevir.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/fishaudio/fish-speech). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k139"></a>

### K139 — GPT-SoVITS

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ses sentezi/klonlama; izin ve lisans kontrol. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** GPT-SoVITS ile sahibinin onayı bulunan sesleri dönüştür.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/RVC-Boss/GPT-SoVITS). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k140"></a>

### K140 — ACE-Step

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Apache-2.0 açık müzik üretimi. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** ACE-Step ile özgün 30 saniyelik arka plan müziği dene.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/ace-step/ACE-Step). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k141"></a>

### K141 — ACE-Step 1.5

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Düşük VRAM kademeleri belgelenmiş, hız/kaliteyi test et. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** ACE-Step 1.5 için düşük VRAM ayarlarında müzik üretimini kıyasla.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/ace-step/ACE-Step-1.5). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: 4GB deneysel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k142"></a>

### K142 — AudioCraft / MusicGen

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kod açık; MusicGen ağırlıkları non-commercial olabilir. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** MusicGen ile telif ve model lisansına uyarak fon müziği üret.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/facebookresearch/audiocraft). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k143"></a>

### K143 — Stable Audio Open

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Model lisansı ve ticari şartları ayrı kontrol. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Stable Audio Open ile kısa ambiyans efekti üret.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/stabilityai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k144"></a>

### K144 — Audacity

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ses kayıt/düzenleme. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Audacity'de ses gürültüsünü azaltıp seviyeyi dengele.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.audacityteam.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k145"></a>

### K145 — Tenacity

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Açık ses editörü. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Tenacity ile ses parçasını kes ve normalize et.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://tenacityaudio.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k146"></a>

### K146 — LMMS

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Müzik ve beat üretimi. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** LMMS'de telifsiz elektronik altyapı hazırla.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://lmms.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k147"></a>

### K147 — MuseScore Studio

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Nota yazımı. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** MuseScore'da beste notalarını düzenleyip MIDI çıkar.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://musescore.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k148"></a>

### K148 — Demucs

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ses kanalı/instrument ayrımı. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Demucs ile izinden kaynaklanan müziğin vokalini ayır.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/facebookresearch/demucs). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k149"></a>

### K149 — Ultimate Vocal Remover

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Vokal enstrüman ayırma. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Ultimate Vocal Remover ile ses bileşenlerini ayrıştır.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Anjok07/ultimatevocalremovergui). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k150"></a>

### K150 — Subtitle Edit

- **Tür / Ücretsiz durum:** Ses/TTS/STT/müzik veya ses editörü. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Altyazı oluşturma/düzenleme. Seslendirme, ses tanıma, altyazı, müzik/ses düzenleme.
- **Somut yapılabilecek iş:** Subtitle Edit ile SRT zamanlarını düzeltip videoya hazırla.
- **Girdi → Çıktı / bağlantı:** CLI, Python, API veya masaüstü; ses dosyası WAV/MP3/SRT.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/SubtitleEdit/subtitleedit). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Hafif araç 0,1–2 GB; konuşma/müzik model ağırlıkları 0,1–20+ GB.
- **RAM:** Hafif ses işleme 1–8 GB; müzik/çok dilli TTS modelleri 8–32+ GB. **VRAM/GPU:** CPU uyumlu STT/TTS için 0 GB; büyük müzik/ses üretiminde ~4–24+ GB.
- **VPS şart mı?** Hayır; yerelde mikrofon/ses dosyalarıyla çalışır. Dış API istiyorsan yerel kurulum gerekmez; uzak sunma için VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif STT, TTS ve klasik ses editörü uygun; ağır modeller yavaş olabilir. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek kaliteli ve toplu ses üretimi mümkün.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 09 · OCR, belge, arama, görüntü anlama (17 kayıt)

<a id="k151"></a>

### K151 — Tesseract

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OCR. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Tesseract ile taranmış faturadan metin çıkar.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/tesseract-ocr/tesseract). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k152"></a>

### K152 — PaddleOCR

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OCR ve belge tanıma. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** PaddleOCR ile tablodaki alanları OCR ile yakala.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/PaddlePaddle/PaddleOCR). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k153"></a>

### K153 — EasyOCR

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** OCR. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** EasyOCR ile görseldeki kelimeleri çıkar.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/JaidedAI/EasyOCR). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k154"></a>

### K154 — Docling

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** PDF/doküman içeriği yapılandırma. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Docling ile PDF'yi bölüm/tabloları koruyarak yapılandır.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/docling-project/docling). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k155"></a>

### K155 — Apache Tika

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Belge metadatası/metin çıkarma. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Apache Tika ile Word/PDF dosyalarından ana metni çıkar.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://tika.apache.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k156"></a>

### K156 — OpenCV

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görüntü işleme. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** OpenCV ile taranmış fotoğrafı düzeltip OCR'ye hazırla.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://opencv.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k157"></a>

### K157 — CLIP

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel-metin ortak gömme. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** CLIP ile görselleri metin benzerliğiyle eşleştir.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/openai/CLIP). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k158"></a>

### K158 — SigLIP

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel-metin embedding; model koşulları ayrı. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** SigLIP ile görsel arama indeksi oluştur.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/google). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k159"></a>

### K159 — Sentence Transformers

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Embedding ve anlamsal arama. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Sentence Transformers ile doküman embedding'i çıkar.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.sbert.net/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k160"></a>

### K160 — FAISS

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Vektör araması. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** FAISS ile binlerce embedding içinden yakın sonuçları ara.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/facebookresearch/faiss). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k161"></a>

### K161 — Qdrant

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Vektör veritabanı. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Qdrant'ta vektör ve filtreli arama endpoint'i kur.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/qdrant/qdrant). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k162"></a>

### K162 — Chroma

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Vektör depolama. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Chroma'da küçük kişisel bilgi tabanı geliştir.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/chroma-core/chroma). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k163"></a>

### K163 — pgvector

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** PostgreSQL vektör uzantısı. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** pgvector ile PostgreSQL içinde benzerlik sorgusu çalıştır.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/pgvector/pgvector). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k164"></a>

### K164 — Milvus

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Vektör veritabanı. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Milvus ile büyük belge koleksiyonu vektörlerini indeksle.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/milvus-io/milvus). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k165"></a>

### K165 — Meilisearch

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Arama sunucusu. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Meilisearch ile hızlı yazım toleranslı site içi arama ekle.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/meilisearch/meilisearch). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k166"></a>

### K166 — SearXNG

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Meta arama servisi. Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** SearXNG ile kendi meta-arama arayüzünü oluştur; kaynak kullanım şartlarını gözet.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/searxng/searxng). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k167"></a>

### K167 — Crawl4AI

- **Tür / Ücretsiz durum:** OCR / RAG / arama / görüntü anlama. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Web içerik toplama (izin ve robots.txt koşullarına uygun). Belgeleri okuma, parçalama, vektör arama ve resim/video içeriğini anlama.
- **Somut yapılabilecek iş:** Crawl4AI ile izinli sitelerden AI'a uygun sayfa metni çıkar.
- **Girdi → Çıktı / bağlantı:** Python, REST, SQL, CLI; kaynak gösterme ve erişim yetkisi uygulama katmanında.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/unclecode/crawl4ai). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Kütüphane 0,1–2 GB; vektör veritabanı/belgeler + indeks ayrı (GB–TB).
- **RAM:** Küçük belge için 2–8 GB; büyük koleksiyon/embedding için 8–64+ GB. **VRAM/GPU:** CPU çoğuna yeter; embedding/görüntü modeli kullanılırsa 0–16+ GB.
- **VPS şart mı?** Hayır; yerelde çalışır. İnternet üzerinden çok kullanıcılı belge araması için sunucu/VPS seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta dosyalarda uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük indeks ve çok eşzamanlı sorgu için daha rahat.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 10 · Otomasyon, sosyal medya, iletişim (20 kayıt)

<a id="k168"></a>

### K168 — Activepieces

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Açık kaynak iş akışı otomasyonu; sürüme göre enterprise parçaları ayrı. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Activepieces'te yeni video dosyası gelince onay akışını ve yayın kuyruğunu tetikle.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/activepieces/activepieces). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k169"></a>

### K169 — n8n Community

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz self-host, fair-code/sustainable use license; tam OSI açık kaynak değil. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** n8n ile webhook→video kalite kontrol→API paylaşım taslağı akışı oluştur; lisans sınırına dikkat et.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://n8n.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k170"></a>

### K170 — Node-RED

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görsel akış/otomasyon. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Node-RED ile klasöre dosya geldiğinde ses dönüştürme komutunu çalıştır.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://nodered.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k171"></a>

### K171 — Huginn

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Web/RSS olay otomasyonu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Huginn ile takip edilen sitedeki izinli yeni RSS girdilerini izle.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/huginn/huginn). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k172"></a>

### K172 — Windmill

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Script ve iş akışları; kurumsal katman ayrı. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Windmill ile Python görevini API'den çağrılabilir workflow'a dönüştür.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/windmill-labs/windmill). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k173"></a>

### K173 — Kestra

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** İş akışı orkestrasyonu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Kestra ile çok aşamalı video üretim job'larını sırala.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/kestra-io/kestra). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k174"></a>

### K174 — Apache Airflow

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Zamanlanmış veri iş akışları. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Airflow ile her gece çalışan veritabanı/rapor pipeline'ı oluştur.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://airflow.apache.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k175"></a>

### K175 — Temporal

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Dayanıklı iş akışı yürütme. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Temporal ile yarım kalan görevi kayıp yaşamadan yeniden dene.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://temporal.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k176"></a>

### K176 — Postiz

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sosyal medya planlama; platform API şartları ayrı. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Postiz ile desteklenen sosyal hesapların yayın takvimini yönet; API/lisansı doğrula.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/gitroomhq/postiz-app). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k177"></a>

### K177 — Playwright

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Tarayıcı otomasyonu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Playwright ile kendi sitendeki butonları ve yükleme ekranını test et.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://playwright.dev/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k178"></a>

### K178 — Selenium

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Tarayıcı otomasyonu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Selenium ile web uygulaması regresyon testi çalıştır.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.selenium.dev/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k179"></a>

### K179 — Puppeteer

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Chromium otomasyonu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Puppeteer ile web sayfasının ekran görüntüsünü üret.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://pptr.dev/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k180"></a>

### K180 — AutoHotkey

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Masaüstü otomasyonu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** AutoHotkey ile yalnızca yerel masaüstünde izinli tuş/makro görevi çalıştır.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.autohotkey.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Windows. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k181"></a>

### K181 — Power Automate Desktop

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yerel katılımlı masaüstü akışları ücretsiz; bulut özellikleri ücretli. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Power Automate Desktop ile klasörden dosya alıp Excel'e kaydet.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.microsoft.com/en-us/power-platform/products/power-automate). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Windows. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k182"></a>

### K182 — RSSHub

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** RSS oluşturma. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** RSSHub ile haber kaynakları için uygun RSS akışı oluştur.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/DIYgod/RSSHub). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k183"></a>

### K183 — ntfy

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Push bildirim sunucusu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** ntfy ile video işi bittiğinde telefona push gönder.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/binwiederhier/ntfy). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k184"></a>

### K184 — Gotify

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Bildirim sunucusu. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Gotify ile GPU sıcaklığı kritikse uyarı ilet.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/gotify/server). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k185"></a>

### K185 — Asterisk

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Telefon santrali; operatör/SIP/numara ücretli olabilir. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Asterisk ile izinli çağrıları şirket içi santralden yönlendir.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.asterisk.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k186"></a>

### K186 — Chatwoot

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Müşteri iletişim paneli. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Chatwoot ile müşteri mesajlarını tek destek kutusunda topla.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/chatwoot/chatwoot). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k187"></a>

### K187 — Traccar

- **Tür / Ücretsiz durum:** Otomasyon / entegrasyon / iletişim aracı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** GPS takip sunucusu; harita/veri/cihaz ek maliyet olabilir. Görevleri tetikleme, sıralama, izlemenin ve izinli dış hizmetlere işlem göndermenin altyapısı.
- **Somut yapılabilecek iş:** Traccar ile izinli araç konumlarını haritada izle.
- **Girdi → Çıktı / bağlantı:** Webhooks, REST, SDK, görev kuyruğu, platform API'leri; sırlar sunucu tarafında saklanmalı.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.traccar.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yazılım veya container genellikle 0,1–4 GB; otomasyon kayıtları ve iş dosyaları ayrıca.
- **RAM:** Hafif 0,5–4 GB; çok görev/işçi için 4–16+ GB. **VRAM/GPU:** Genellikle 0 GB; bağlı AI servisleri farklı.
- **VPS şart mı?** Hayır; yerelde çalışır. 7/24 uzaktan webhook almak için VPS veya güvenli Cloudflare Tunnel kullanılabilir; TikTok API kendi sunucusuna yükleme gerektirmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Hafif iş akışları için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Paralel otomasyon ve kuyruklar için uygundur.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 11 · Uygulama, oyun, 3D, avatar (18 kayıt)

<a id="k188"></a>

### K188 — Godot

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** 2D/3D oyun motoru MIT. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Godot ile mobil 2D quiz oyunu geliştir.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://godotengine.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k189"></a>

### K189 — O3DE

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Gelişmiş 3D oyun motoru Apache-2.0. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** O3DE'de yüksek ayrıntılı 3D prototip oluştur.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://o3de.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k190"></a>

### K190 — Blender

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** 3D modelleme, animasyon ve montaj. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Blender'da bir ürünün 3D animasyonunu üret.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.blender.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k191"></a>

### K191 — MakeHuman

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** 3D karakter tasarımı. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** MakeHuman ile temel insan 3D modeli tasarla.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](http://www.makehumancommunity.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k192"></a>

### K192 — Meshroom

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Fotogrametri ve 3D yeniden kurma. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Meshroom ile izinli fotoğraflardan 3D tarama oluştur.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/alicevision/Meshroom). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel/GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k193"></a>

### K193 — Three.js

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Tarayıcıda 3D. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Three.js ile web sayfasında dönen 3D ürün göster.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://threejs.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k194"></a>

### K194 — React Three Fiber

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** React tabanlı Three.js. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** React Three Fiber ile React içinde WebGL ürün vitrini kur.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/pmndrs/react-three-fiber). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k195"></a>

### K195 — Phaser

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** HTML5 2D oyun. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Phaser ile tarayıcıda kelime tahmin oyunu hazırla.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://phaser.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k196"></a>

### K196 — GDevelop

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Düşük kodlu oyun geliştirme; bulut servisleri ayrı. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** GDevelop ile kod yazmadan basit platform oyunu prototipi kur.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://gdevelop.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k197"></a>

### K197 — Defold

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz oyun motoru; özel lisansı kontrol. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Defold ile hafif 2D mobil oyun oluştur.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://defold.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k198"></a>

### K198 — Hunyuan3D

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Tencent özel lisansı; sürüm bazlı. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Hunyuan3D ile uygun modelden basit 3D nesne üret.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/Tencent-Hunyuan/Hunyuan3D-2). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k199"></a>

### K199 — TRELLIS / TRELLIS.2

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `M` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Görselden 3D; model ağırlığı lisansını doğrula. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** TRELLIS ile görüntüden 3D öğe oluştur; büyük GPU gerekebilir.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/microsoft/TRELLIS). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k200"></a>

### K200 — HunyuanWorld

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** 3D dünya üretimi; lisans/sürüm şartlarını doğrula. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** HunyuanWorld için gerçek sürüm/lisans doğrulayıp ortam oluşturmayı dene.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k201"></a>

### K201 — HY-World 2.0

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Büyük 3D dünya modeli; kaynak ve lisans doğrula. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** HY-World 2.0 yayın durumu ve indirme ağırlığını doğrulayarak 3D dünya örneği dene.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** **DOĞRULANACAK — resmî depo uydurma**. Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Güçlü GPU. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k202"></a>

### K202 — Kenney Game Assets

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Çoğu CC0 oyun asset paketi. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Kenney Game Assets'ten uygun lisanslı oyun ikonları seç.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://kenney.nl/assets). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k203"></a>

### K203 — Poly Haven

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** CC0 HDRI, dokular ve modeller. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Poly Haven'dan HDRI ortamını 3D sahnede kullan.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://polyhaven.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k204"></a>

### K204 — ambientCG

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** CC0 dokular. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** ambientCG'den yüzey kaplamasını oyuna uygula.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://ambientcg.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k205"></a>

### K205 — Mixamo

- **Tür / Ücretsiz durum:** Oyun / 3D / web etkileşimi / varlık kaynağı. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz hesap ile animasyon; açık kaynak değil; Adobe şartları. Oyun geliştirme, modelleme, render, 3D ortam ve tekrar kullanılabilir varlıklar.
- **Somut yapılabilecek iş:** Mixamo ile 3D karaktere yürüme animasyonu ekle; çevrimiçi hizmet olduğunu unutma.
- **Girdi → Çıktı / bağlantı:** Editör komutları, script/API, dosyalar; oyun depoları ve build sistemleriyle.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.mixamo.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Editör 0,1–5 GB; varlık paketleri/3D modeller 0,1–50+ GB, AI 3D modelleri daha fazla.
- **RAM:** Basit 2D 2–8 GB; 3D/render 16–64+ GB. **VRAM/GPU:** 2D için 0–4 GB; ağır 3D/AI üretiminde 8–48+ GB.
- **VPS şart mı?** Hayır; oyunu geliştirmek/derlemek için yerel bilgisayar yeterli. Çok oyunculu oyun sunucusu gerekiyorsa ayrıca VPS/oyun sunucusu düşünülebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Basit 2D ve hafif 3D uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Yüksek çözünürlüklü 3D/AI üretiminde avantajlı.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 12 · Web, mobil, veritabanı, bulut ve güvenlik (41 kayıt)

<a id="k206"></a>

### K206 — Python

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Genel programlama. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Python ile API'den metin al, FFmpeg görevini başlat ve rapor JSON'u üret.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.python.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k207"></a>

### K207 — Node.js

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** JavaScript sunucu. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Node.js ile web formundan yerel video kuyruğuna iş gönder.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://nodejs.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k208"></a>

### K208 — VSCodium

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Telemetrisiz VS Code kaynak derlemesi. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** VSCodium ile Python otomasyon projesini düzenle.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://vscodium.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k209"></a>

### K209 — Git

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sürüm kontrol. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Git ile yaptığın değişikliği geri alınabilir commit'e kaydet.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://git-scm.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k210"></a>

### K210 — GitHub Free

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz depo, Actions/Packages kotaları ayrı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** GitHub Free ile özel/kamu kod deposunda sürüm tut; sırları yükleme.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Git istemcisi birkaç yüz MB; depo dosyaları boyutuna bağlı.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** GitHub depolarını kullanmak için VPS şart değil; Actions ve Pages ayrı hizmetlerdir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k211"></a>

### K211 — WSL2

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Windows üstünde Linux ortamı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** WSL2 ile Windows'ta Ubuntu tabanlı AI komutlarını çalıştır.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://learn.microsoft.com/windows/wsl/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Windows. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k212"></a>

### K212 — Docker Engine / Moby

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Konteyner teknolojisi; Docker Desktop farklı lisanslı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Docker Engine ile veritabanı ve otomasyon servislerini izole et.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://mobyproject.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k213"></a>

### K213 — Podman

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Konteyner alternatifi. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Podman ile rootless container çalıştır.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://podman.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k214"></a>

### K214 — Flutter

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** iOS/Android/web uygulama çatısı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Flutter ile Android ve iOS tek kod tabanlı uygulama taslağı oluştur; iOS build için uygun Apple ortamı gerekebilir.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://flutter.dev/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k215"></a>

### K215 — React Native

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Mobil uygulama çatısı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** React Native ile mobil bilgi yarışması uygulaması geliştir.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://reactnative.dev/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k216"></a>

### K216 — Tauri

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Hafif masaüstü uygulamalar. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Tauri ile web tabanlı sohbet arayüzünü Windows masaüstüne paketle.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://tauri.app/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k217"></a>

### K217 — Capacitor

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Web tabanlı mobil uygulama. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Capacitor ile React web uygulamasını mobil kabukta çalıştır.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://capacitorjs.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k218"></a>

### K218 — FastAPI

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Python API sunucusu. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** FastAPI ile video oluşturma işini /jobs uç noktası üzerinden başlat.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://fastapi.tiangolo.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k219"></a>

### K219 — Django

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Python web çatısı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Django ile hesap ve yetkilendirme paneli geliştir.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.djangoproject.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k220"></a>

### K220 — Next.js

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** React web çatısı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Next.js ile yönetim panelinin web arayüzünü oluştur.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://nextjs.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k221"></a>

### K221 — PostgreSQL

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Veritabanı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** PostgreSQL'de görevler, kanallar ve çıktı dosyalarının kayıtlarını tut.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.postgresql.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k222"></a>

### K222 — SQLite

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Gömülü veritabanı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** SQLite ile tek kullanıcılı hafif görev geçmişi sakla.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.sqlite.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k223"></a>

### K223 — Valkey

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Redis uyumlu kuyruk/cache alternatifi. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Valkey ile anlık kuyruk/önbellek altyapısı kur.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://valkey.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k224"></a>

### K224 — Redis

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sürüme bağlı lisans; Valkey alternatifini değerlendir. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Redis'in lisansını sürüme göre kontrol edip görev durumunu tut.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://redis.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k225"></a>

### K225 — BullMQ

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Redis/Valkey temelli kuyruk. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** BullMQ ile Node.js video işlerini kuyrukla.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://bullmq.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k226"></a>

### K226 — MinIO

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** S3 uyumlu depolama; dağıtım/sürüm lisans durumunu kontrol. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** MinIO ile üretilmiş medya dosyalarını S3 uyumlu depoda sakla.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/minio/minio). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k227"></a>

### K227 — Nginx

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Web sunucu/ters proxy. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Nginx ile yerel dashboard'a ters proxy oluştur.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://nginx.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k228"></a>

### K228 — Caddy

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** HTTPS ters proxy. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Caddy ile HTTPS ters proxy kur.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://caddyserver.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k229"></a>

### K229 — Cloudflare Tunnel

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz kullanım imkanları; ağ ve ticari koşullar kontrol. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Cloudflare Tunnel ile port açmadan yerel dashboard'a güvenli dış erişim ver.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k230"></a>

### K230 — Cloudflare Workers AI

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz günlük kotası ve ücretli güçlü model ayrımı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Cloudflare Workers AI ile küçük API modelini kota içinde test et.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://developers.cloudflare.com/workers-ai/platform/pricing/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k231"></a>

### K231 — Google Colab Free

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz GPU garantisiz, sınırlı; sürekli sunucu değildir. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Google Colab Free'de kısa GPU denemesi yap; sürekli sunucu sanma.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://research.google.com/colaboratory/faq.html). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Colab bulut defter hizmetidir; yerel/VPS kurulum gerekmez. GPU süresi garanti edilmez.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k232"></a>

### K232 — Kaggle Notebooks

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** GPU tahsisi ve kullanım politikaları değişken. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Kaggle Notebook GPU kotasıyla küçük model benchmark'ı yap.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.kaggle.com/code). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k233"></a>

### K233 — Hugging Face Spaces CPU Free

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Paylaşılan, sınırlı CPU; GPU genellikle ücretli. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Hugging Face Spaces CPU Free ile basit demo web uygulaması göster.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://huggingface.co/spaces). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k234"></a>

### K234 — Streamlit Community Cloud

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `K` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kotalı ücretsiz demo barındırma. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Streamlit Community Cloud ile ücretsiz deneysel dashboard dağıt.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://streamlit.io/cloud). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k235"></a>

### K235 — Vercel Hobby

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ücretsiz ama ticari kullanım yasak; ticari projeler için seçme. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Vercel Hobby'de kişisel/non-commercial önizleme barındır; ticari üretimde koşulları kontrol et.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://vercel.com/docs/plans/hobby). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Vercel kendi barındırmasını sağlar; VPS şart değil. Kişisel/non-commercial Hobby koşulları altında ticari uygulama barındırma kısıtlıdır.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k236"></a>

### K236 — GitHub Pages

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Statik demo, ticari SaaS/online işletme barındırmaya uygun değil. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** GitHub Pages ile statik proje dokümantasyonunu ücretsiz yayımla.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://docs.github.com/en/pages/getting-started-with-github-pages/github-pages-limits). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Bulut. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k237"></a>

### K237 — CrowdSec

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Güvenlik, sürüme göre hizmet katmanı ayrı. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** CrowdSec ile sunucu isteklerindeki kötüye kullanım sinyallerini analiz et.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/crowdsecurity/crowdsec). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k238"></a>

### K238 — Gitleaks

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Git gizli anahtar tarama. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Gitleaks ile commit geçmişinde yanlışlıkla API anahtarı var mı tara.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/gitleaks/gitleaks). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k239"></a>

### K239 — Trivy

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Güvenlik/açık tarama. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Trivy ile Docker imajı ve bağımlılık güvenlik açıklarını tara.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/aquasecurity/trivy). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k240"></a>

### K240 — OWASP ZAP

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Web güvenlik testi. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** OWASP ZAP ile kendi test sitende web güvenlik taraması yap.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.zaproxy.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k241"></a>

### K241 — k6

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yük testi. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** k6 ile web API'nin yük altında cevap süresini ölç.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/grafana/k6). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k242"></a>

### K242 — Locust

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Yük testi. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Locust ile birkaç yüz sanal kullanıcının test senaryosunu simüle et.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://locust.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k243"></a>

### K243 — Glances

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sistem kaynak izlemesi. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Glances ile RAM/CPU/disk durumlarını izle.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/nicolargo/glances). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k244"></a>

### K244 — Prometheus

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Metrik toplama. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Prometheus ile işlemci ve kuyruk metriklerini topla.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://prometheus.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k245"></a>

### K245 — Grafana

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Metrik dashboard. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Grafana'da video iş kuyruklarını ve GPU metriklerini göster.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://grafana.com/oss/grafana/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k246"></a>

### K246 — Uptime Kuma

- **Tür / Ücretsiz durum:** Web / mobil / veritabanı / altyapı / güvenlik. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Uptime izleme. Uygulama geliştirme, veri saklama, servis barındırma, izleme ve test.
- **Somut yapılabilecek iş:** Uptime Kuma ile site kapandıysa bildirim gönder.
- **Girdi → Çıktı / bağlantı:** CLI, API, SQL, CI/CD, Docker, HTTPS/SSH; kimlik bilgilerini GitHub'da saklama.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/louislam/uptime-kuma). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Çekirdek 0,05–5 GB; node_modules, imajlar, veri tabanları ve loglar 1 GB–TB ölçeği.
- **RAM:** Temel servis 0,2–4 GB; browser, derleme ve çoklu container 4–32+ GB. **VRAM/GPU:** Genellikle 0 GB (GPU'lu yapay zekâ servisi hariç).
- **VPS şart mı?** Hayır; laptopta çalışır. 7/24 herkese açık yüksek erişilebilirlik için VPS önerilebilir; statik hostingde VPS gerekmeyebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Çoğu uygun; paralel servis sayısını sınırla. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok projeyi birlikte geliştirmek ve dağıtmak için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 13 · Borsa/veri analitiği ve belge işleri (15 kayıt)

<a id="k247"></a>

### K247 — TA-Lib

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Teknik analiz göstergeleri. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** TA-Lib ile OHLC verisinden RSI/MACD hesapla.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://ta-lib.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k248"></a>

### K248 — SciPy

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** İstatistik / sinyal işlemleri. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** SciPy ile zaman serisi üzerinde istatistiksel analiz yap.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://scipy.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k249"></a>

### K249 — scikit-learn

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Makine öğrenmesi. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** scikit-learn ile veri sınıflandırma modeli eğit.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://scikit-learn.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k250"></a>

### K250 — CVXPY

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Optimizasyon. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** CVXPY ile portföy kısıtları içeren matematiksel optimizasyon kur.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.cvxpy.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k251"></a>

### K251 — pandas

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Tablolar ve veri analitiği. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** pandas ile CSV emir dosyalarını temizleyip rapor hazırla.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://pandas.pydata.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k252"></a>

### K252 — NumPy

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sayısal hesaplama. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** NumPy ile fiyat dizisi üzerinde vektörel hesap yap.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://numpy.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k253"></a>

### K253 — yfinance

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Python paket ücretsiz; Yahoo veri kullanım haklarını kontrol. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** yfinance ile kullanım şartlarına uygun araştırma amaçlı tarihsel veri çek; gerçek zamanlı borsa beslemesi sanma.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/ranaroussi/yfinance). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+veri. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k254"></a>

### K254 — CCXT

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kripto borsa API istemcisi; servis şartları ayrı. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** CCXT ile borsa API'sinin kamuya açık piyasa verilerini okuyup karşılaştır.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/ccxt/ccxt). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel+API. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k255"></a>

### K255 — Metabase

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Raporlama/BI; kurumsal özellikler ayrı. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** Metabase ile veritabanına bağlı satış panosu hazırla.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.metabase.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k256"></a>

### K256 — Apache Superset

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** BI raporlama. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** Apache Superset ile farklı kaynaktan grafik ve dashboard oluştur.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://superset.apache.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k257"></a>

### K257 — ERPNext

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** ERP/muhasebe çekirdeği; Türkiye mevzuat adaptasyonu gerekir. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** ERPNext ile küçük işletmede stok ve cari takibi yap.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://erpnext.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k258"></a>

### K258 — Frappe HR

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** İK araçları. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** Frappe HR ile personel izin kayıtlarını yönet.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/frappe/hrms). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k259"></a>

### K259 — Documenso

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Belge imzalama; hukuki e-imza koşulları ayrı. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** Documenso ile dijital belge imza akışını test et.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/documenso/documenso). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k260"></a>

### K260 — LibreOffice

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Ofis dokümanları. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** LibreOffice ile XLSX dosyasını yerel dönüştür.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://www.libreoffice.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k261"></a>

### K261 — Pandoc

- **Tür / Ücretsiz durum:** Veri / finans analitiği / ofis. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Doküman dönüştürme. Veri dönüştürme, istatistik, tablo, rapor veya iş yönetimi.
- **Somut yapılabilecek iş:** Pandoc ile Markdown dokümanını HTML/DOCX'e çevir.
- **Girdi → Çıktı / bağlantı:** Python, SQL, CSV, REST, CLI veya masaüstü.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://pandoc.org/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Program 0,05–4 GB; işlenen veri ve yedekler ayrıca.
- **RAM:** Küçük veri 0,5–8 GB; büyük veri kümeleri 16–64+ GB. **VRAM/GPU:** Genellikle 0 GB.
- **VPS şart mı?** Hayır; yerel bilgisayarda çalışabilir. İnternette erişilebilir pano/ERP için VPS veya güvenli yerel tünel seçilebilir.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Küçük/orta veri için uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Büyük veri ve paralel görevler için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


## 14 · Önceki projelerden ek kaynaklar

<a id="k262"></a>

### K262 — Claude Code Router

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `Ö/koşullu` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Claude Code'un API isteklerini farklı sağlayıcılara yönlendirmeye yarayan açık kaynak geçit; Claude modeline ücretsiz erişim garantisi değildir.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** Claude Code Router ile Claude Code istemcisinin destekli API çağrılarını alternatif gateway'e yönlendir.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/musistudio/claude-code-router). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k263"></a>

### K263 — Microsoft Agent Framework

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Çok ajanlı otomasyon ve ajan iş akışı geliştirme; altyapı kütüphanesi ücretsiz, bağlanan model/API ayrı.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** Microsoft Agent Framework ile araştır→üret→onay ajanlarını orkestre et.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/microsoft/agent-framework). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k264"></a>

### K264 — MetaGPT

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Rol tabanlı çoklu AI ajanlarıyla yazılım görevlerini organize eder; LLM maliyeti ayrıdır.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** MetaGPT ile yazılım gereksinimlerini rol tabanlı iş paketlerine ayır.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/FoundationAgents/MetaGPT). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k265"></a>

### K265 — ChatDev

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Birden fazla rol tabanlı ajanla yazılım üretimi denemeleri; sonuçları test etmek gerekir.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** ChatDev ile takım ajanlarının kod/inceleme işlerini simüle et.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/OpenBMB/ChatDev). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k266"></a>

### K266 — SWE-agent

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** GitHub issue'ları üzerinde kod onarma/geliştirme ajanı; çalıştırılan modelin maliyeti ayrı.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** SWE-agent ile bir GitHub issue'sunu izole dalda test ederek çöz.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/SWE-agent/SWE-agent). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k267"></a>

### K267 — Google AI Studio

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `K/F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Gemini modellerini tarayıcıda test etme ve API anahtarı sağlama arayüzü; ücretsiz kotalar modele/bölgeye bağlı.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** Google AI Studio üzerinden Gemini API JSON cevabını dene.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://aistudio.google.com/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k268"></a>

### K268 — Google Antigravity

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `K/F doğrula` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** AI ile kodlama çalışma ortamı; ücretsiz erişim ve ürün koşulları tarihe/hesaba göre değişebilir.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** Google Antigravity kodlama ortamının kota/hesap koşullarını doğrulayıp prototip oluştur.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://antigravity.google/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k269"></a>

### K269 — GitHub Copilot Free

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `K/F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** IDE kod tamamlama ve sohbet için sınırlı ücretsiz plan; kota ve uyumluluk kontrol edilir.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** GitHub Copilot Free üzerinden IDE içinde kısa refaktör önerisi al.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/features/copilot). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k270"></a>

### K270 — Cursor Hobby

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `K/F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kod editörünün sınırlı ücretsiz planı; ücretli temel modele bağımlılık yaratmamalı.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** Cursor Hobby ile sınırlı ücretsiz AI düzenleme hakkını test et.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://cursor.com/pricing). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k271"></a>

### K271 — Vercel AI Gateway

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `K/Ü` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Çeşitli model sağlayıcılarına tek geçitten erişim; kredi ve ücretlendirme kontrol edilmeli.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** Vercel AI Gateway'de farklı sağlayıcı maliyetini/kotasını incele.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://vercel.com/docs/ai-gateway). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k272"></a>

### K272 — n8n

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `L` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Otomasyon iş akışları; kendi sunucunda kaynak erişimli, lisansı ticari yeniden sunumda kısıtlı.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** n8n yerel kurulumda webhook→görev kuyruğu→bildirim akışı hazırla.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/n8n-io/n8n). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k273"></a>

### K273 — MCP (Model Context Protocol)

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Sohbet ajanlarının araç/veri kaynaklarıyla konuşması için açık bağlantı protokolü; güvenlik/izin denetimi gerekir.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** MCP ile sohbet ajanına sadece okunabilir proje dosyası erişim aracı bağla.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://modelcontextprotocol.io/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k274"></a>

### K274 — AGENTS.md

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `F` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** Kodlama ajanlarına proje kapsamı, kurallar ve test komutlarını anlatan açıklama dosyası standardı.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** AGENTS.md'ye klasör, güvenlik, izin ve test komutlarını yaz.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://agents.md/). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.

<a id="k275"></a>

### K275 — yt-dlp

- **Tür / Ücretsiz durum:** Ek kodlama/entegrasyon aracı veya hizmeti. Önceki sınıflandırma: `Ö` (**güncelliği/lisansı ayrıca doğrula**).
- **Ne işe yarar?** İzinli/kendi medya kaynaklarını indirme ve işleme otomasyonu; telif ve platform şartlarına uyulmalı.. Yazılım üretim, otomasyon, model yönlendirme veya geliştirici deneyimini genişletme.
- **Somut yapılabilecek iş:** yt-dlp ile yalnızca hakkın olan videoyu indirip FFmpeg işlemesine aktar.
- **Girdi → Çıktı / bağlantı:** API, CLI, GitHub, MCP/REST veya geliştirici ortamı; resmî README doğrulanır.
- **Resmî kaynak ve ilk araştırma:** [Resmî proje veya ürün sayfası](https://github.com/yt-dlp/yt-dlp). Açınca `README`, `LICENSE`, örnek kod, sürümler ve API başlıklarını incele.
- **Nerede çalışır?** Önceki kayıt: Yerel veya API; doğrula. Kurulum sürümüne göre Windows, WSL2/Linux, Docker veya bulut API uyumu resmî kaynaktan kontrol edilir.
- **Yerel disk/SSD:** Yerel araçsa yaklaşık 0,1–3 GB; bulut hizmetiyse yerel model 0 GB; veri/model ayrıca.
- **RAM:** Yerel araç çoğunlukla 0,5–4 GB; bağlanan model/IDE ayrı. **VRAM/GPU:** Bulut erişiminde 0 GB; yerel model kullanımında modelin gereksinimi.
- **VPS şart mı?** Hayır; yerel veya API ile kullanılabilir. Paylaşılan kesintisiz servis için VPS/yerel güvenli tünel seçenek.
- **Donanım kararı:** Laptop (16 GB RAM, 4 GB GPU): Kotalı API veya hafif ajanla uygun. Hedef kasa (128 GB RAM, 96 GB GPU): Daha çok paralel görev ve yerel model için uygun.
- **Kurulum ve işlem güvenliği:** Önce resmî kurulum yöntemi ve küçük smoke test; gizli anahtarları kaydetme/yayınlama; lisans, telif, ticari hak, ücretsiz kota ve güncel sürümü kontrol et. **Kullanıcı izin vermeden kurma, silme, ödeme veya herkese açık paylaşım yapma.**
- **Kanıt durumu:** Açıklama eski envanterden; disk/RAM/VRAM **genel tahmin**. Güncel kaynak testi **bu kayıt için tekil olarak yapılmış değildir**. Araştırmayı burada bitirme.


---

## NASIL YENİ KAYNAK EKLENİR? (K276 VE SONRASI)

1. Önce aynı isimle kayıt var mı ara; farklı sürümleri yeni kayıt yapmadan önce aynı kart altında karşılaştır.
2. Güncel resmî URL, README, lisans, API ve indirme boyutu bilgisini mümkünse ilk el kaynaktan bul.
3. Ücretsiz türünü ve ticari lisansı netleştir; belirsizse "doğrulanmadı" yaz.
4. **Gerçek kullanım cümlesi kur:** Kullanıcı ne diyecek, ajan hangi girdiyi alıp hangi çıktıyı oluşturacak?
5. Disk+RAM+VRAM değerlerini ayrı yaz; CPU fallback/quantize ve VPS gerekliliğini belirt. Değer yoksa uydurma sayı yazma.
6. API anahtarı istemciye veya GitHub'a konmaz; örnek komutta ortam değişkeni kullan.
7. Ajanın yeni kaynağı keşfetmeye devam etme zorunluluğunu kaldırma. Bu dosyayı tek talimat sanıp araştırmayı kapatma.
8. Değişiklik için `git diff`/PR incelemesi ve dokümantasyon tarihi yaz. Tarihsel 521 kalemlik arşivi silme.

## RESMÎ BAŞLANGIÇ REFERANSLARI / HASSAS KURALLAR

- TikTok Content Posting (Direct Post): https://developers.tiktok.com/docs/en/content-posting-api-get-started
- TikTok denetim ve görünürlük: https://developers.tiktok.com/docs/en/content-sharing-guidelines
- TikTok video upload ve taslak: https://developers.tiktok.com/docs/en/content-posting-api-reference-upload-video
- Ollama yerel model bellek ölçütleri modele göre: https://ollama.com/library
- FFmpeg: https://ffmpeg.org/documentation.html
- ComfyUI: https://github.com/comfyanonymous/ComfyUI
- GitHub'daki tarihsel ana envanter: [ANABEYIN_ANA_KURULUM_ENVANTERI_521.md](./ANABEYIN_ANA_KURULUM_ENVANTERI_521.md)

## TARİHSEL 521 KALEMLİK TAM İNDEKS (ARŞİV)

Bu liste aynı depoda ayrıca [orijinal dosya](./ANABEYIN_ANA_KURULUM_ENVANTERI_521.md) olarak korunmaktadır. Buradaki kalemler **program, kod kütüphanesi, görev, beceri, sistem gereksinimi, kurulum kararı ve henüz geliştirilecek özellikler** gibi farklı türdedir; hepsi ücretsiz araç veya kurulu program değildir. Kaynağı olmayan kalemlerin resmî linki uydurulmaz, yeni araştırmayla tespit edilir.

<details>
<summary>521 kalemin orijinal tarihsel listesi — genişlet</summary>

### AnaBeyin — Birleşik Ana Kurulum Envanteri

Durum: KESİN LİSTE
Amaç: AnaBeyin geliştirme ortamı, güvenlik, test, medya denetimi, yapay zekâ işçileri ve daha sonra kurulacak gerçek site sistemleri için unutulmaması gereken birleşik envanter.

> Not: Bu dosyada sayı hedefi uydurulmamıştır. Önceki AnaBeyin konuşmalarında geçen başlıklar birleştirilmiş, tekrarlar ayıklanmış ve son kesin kararlar eklenmiştir.
> İkinci sunucu yoktur. Aynı mevcut AnaBeyin sunucusu kullanılacaktır.
> Siteyi tamamen geliştirme işi en son yapılacaktır. Önce araçlar ve servisler hazırlanacaktır.

## 1–37 — Kimi ve ücretsiz yapay zekâ işçi sistemi

1. Kimi Code
2. Kimi K3
3. Kimi K2.x ailesi
4. AGENTS.md
5. Kimi Skills
6. Kimi Plugins
7. Kimi Sub-agents
8. Kimi MCP
9. Kimi Hooks
10. Kimi /init
11. Kimi /import-from-cc-codex
12. Kimi Websites
13. OmniRoute
14. OpenCode
15. OpenCode Free
16. OpenRouter Free
17. NVIDIA NIM / NVIDIA Build
18. Ollama
19. GLM-5.x ailesi
20. Qwen 3.x / Qwen Coder ailesi
21. DeepSeek V4 ailesi
22. MiniMax M3/M2.x ailesi
23. Nemotron ailesi
24. Mistral açık modelleri
25. Meta açık modelleri
26. GPT-OSS ailesi
27. OpenCode big-pickle
28. OpenCode hy3-free
29. OpenCode mimo-v2.5-free
30. OpenCode muse-spark-1.2-contributor-free
31. OpenCode nemotron-3-ultra-free
32. OpenCode nemotron-3.5-lightning-free
33. OmniRoute otomatik model seçimi
34. OmniRoute yedek modele geçiş
35. Yerel model havuzu
36. NVIDIA ücretsiz model havuzu
37. OpenRouter ücretsiz model havuzu

## 38–64 — Kimi becerileri

38. architecture becerisi
39. frontend-design becerisi
40. motion-design becerisi
41. backend becerisi
42. database becerisi
43. security becerisi
44. testing becerisi
45. code-review becerisi
46. performance becerisi
47. accessibility becerisi
48. SEO becerisi
49. deployment becerisi
50. git-workflow becerisi
51. incident-debugging becerisi
52. documentation becerisi
53. Dosya yükleme güvenliği becerisi
54. Fotoğraf denetleme becerisi
55. Video denetleme becerisi
56. Ses denetleme becerisi
57. Metin denetleme becerisi
58. Spam/dolandırıcılık becerisi
59. Ödeme entegrasyonu becerisi
60. E-posta entegrasyonu becerisi
61. SMS entegrasyonu becerisi
62. Yedek/geri yükleme becerisi
63. Mobil/tablet görsel denetim becerisi
64. AnaBeyin MASTER FRONTEND DESIGN becerisi

## 65–91 — Uzman geliştirme ajanları

65. Architect Agent
66. Frontend Agent
67. UI/UX Agent
68. Motion Agent
69. 3D/WebGL Agent
70. Backend Agent
71. API Agent
72. Database Agent
73. Migration Agent
74. Security Agent
75. QA Agent
76. Testing Agent
77. Performance Agent
78. Accessibility Agent
79. Code Reviewer Agent
80. DevOps Agent
81. Fixer Agent
82. Foreman Agent
83. Developer Agent
84. Moderation Agent
85. Video Worker
86. Media Moderation Worker
87. Text Moderation Worker
88. Backup Agent
89. Incident/Debug Agent
90. Git/GitHub Agent
91. Bağımsız son denetçi ajan

## 92–152 — Terminal ve temel araçlar

92. Git
93. Git LFS
94. GitHub CLI gh
95. Node.js
96. npm
97. pnpm
98. Corepack
99. Python 3
100. pip
101. pipx
102. uv
103. venv
104. Bash
105. curl
106. wget
107. jq
108. yq
109. ripgrep
110. fd
111. fzf
112. grep
113. sed
114. awk
115. findutils
116. tree
117. rsync
118. tmux
119. htop
120. ncdu
121. lsof
122. procps
123. ss
124. systemctl
125. journalctl
126. OpenSSL
127. ca-certificates
128. make
129. build-essential
130. gcc
131. g++
132. pkg-config
133. ShellCheck
134. tar
135. gzip
136. xz-utils
137. zip
138. unzip
139. 7-Zip
140. HTTPie
141. netcat
142. socat
143. tcpdump
144. dnsutils / dig
145. nslookup
146. traceroute
147. mtr
148. whois
149. nmap
150. watch
151. cron
152. logrotate

## 153–193 — Ön yüz ve tasarım

153. React
154. React DOM
155. Vite
156. TypeScript
157. TypeScript strict
158. Tailwind CSS
159. shadcn/ui
160. Radix UI
161. Lucide
162. Motion
163. GSAP
164. GSAP ScrollTrigger
165. Three.js
166. WebGL
167. Lottie
168. Rive
169. Swiper
170. Embla Carousel
171. Floating UI
172. React Hook Form
173. Zod
174. TanStack Query
175. Zustand
176. i18next
177. react-i18next
178. date-fns
179. Uppy
180. react-dropzone
181. Cropper.js
182. Plyr
183. Video.js
184. hls.js
185. Storybook
186. MSW
187. Faker.js
188. web-vitals
189. React Router
190. TanStack Virtual
191. react-window
192. DOMPurify
193. clsx

## 194–219 — Kod kalite sistemi

194. ESLint
195. Prettier
196. oxlint
197. Stylelint
198. markdownlint-cli2
199. commitlint
200. Husky
201. lint-staged
202. Knip
203. depcheck
204. Madge
205. npm-check-updates
206. npm audit
207. rollup-plugin-visualizer
208. source-map-explorer
209. Paket boyutu kontrolü
210. EditorConfig
211. cspell
212. publint
213. arethetypeswrong
214. tsc typecheck
215. Üretim derleme kontrolü
216. Kullanılmayan paket kontrolü
217. Dairesel bağımlılık kontrolü
218. Kimi kalite kapıları
219. Değişiklik sonrası otomatik Hook kontrolleri

## 220–252 — Tarayıcı ve sınama

220. Playwright
221. Playwright Test
222. Playwright CLI
223. Playwright MCP
224. Chromium
225. Firefox
226. WebKit
227. Chrome DevTools
228. React Developer Tools
229. Vitest
230. Jest
231. Testing Library
232. user-event
233. pixelmatch
234. BackstopJS
235. axe-core
236. axe Playwright
237. Pa11y
238. Lighthouse
239. Lighthouse CI
240. k6
241. Autocannon
242. Artillery
243. Masaüstü gerçek tarayıcı sınaması
244. Tablet gerçek tarayıcı sınaması
245. Mobil gerçek tarayıcı sınaması
246. Tarayıcı hata günlüğü kontrolü
247. Ekran görüntüsü karşılaştırması
248. Uçtan uca kullanıcı akışı sınaması
249. Birim sınaması
250. Bütünleşme sınaması
251. Yeniden başlatma sonrası sınama
252. Yetkisiz erişim 401/403 sınaması

## 253–285 — Kod ve web güvenliği

253. Semgrep
254. Gitleaks
255. Trivy
256. OWASP ZAP
257. OSV-Scanner
258. Syft
259. Grype
260. Checkov
261. Hadolint
262. Bandit
263. pip-audit
264. detect-secrets
265. YARA
266. Dependabot
267. Renovate
268. ModSecurity
269. OWASP Core Rule Set
270. Lynis
271. AIDE
272. Gizli anahtar taraması
273. Git geçmişi gizli bilgi taraması
274. Paket açığı taraması
275. Docker imaj taraması
276. Dosya sistemi güvenlik taraması
277. Yanlış yapılandırma taraması
278. Kaynak kod güvenlik taraması
279. Yetki aşımı kontrolü
280. Girdi doğrulama kontrolü
281. Girdi temizleme kontrolü
282. Oturum güvenliği kontrolü
283. CSRF kontrolü
284. XSS kontrolü
285. SQL injection kontrolü

## 286–316 — Sunucu ve ağ güvenliği

286. Cloudflare
287. Nginx
288. CrowdSec
289. fail2ban — yedek
290. UFW
291. nftables
292. auditd
293. AppArmor
294. unattended-upgrades
295. OpenSSH
296. SSH anahtarıyla giriş
297. root SSH kapatma
298. Minimum açık port politikası
299. Ayrı Linux kullanıcıları
300. Docker izolasyonu
301. Certbot
302. Let's Encrypt
303. HTTPS zorunluluğu
304. HTTP → HTTPS yönlendirme
305. Hız sınırlama
306. Bot tespiti
307. Kaba kuvvet saldırısı koruması
308. Çalınmış parola deneme saldırısı kontrolü
309. Cihaz/oturum riski
310. Şüpheli giriş tespiti
311. Uygulama portlarını dışarı kapatma
312. PostgreSQL portunu dışarı kapatma
313. Redis portunu dışarı kapatma
314. Dosya izinleri denetimi
315. Güvenlik kayıtları
316. Sunucu sağlık kontrolü

## 317–358 — Fotoğraf, video, ses ve dosyalar

317. ClamAV
318. libmagic
319. file
320. ImageMagick
321. Sharp
322. libvips
323. ExifTool
324. mat2
325. NudeNet
326. OpenNSFW2
327. ONNX Runtime
328. OpenCV
329. ImageHash / pHash
330. CLIP
331. SigLIP
332. Tesseract OCR
333. PaddleOCR
334. EasyOCR
335. FFmpeg
336. ffprobe
337. PySceneDetect
338. faster-whisper
339. Whisper
340. Silero VAD
341. WebRTC VAD
342. qpdf
343. Ghostscript
344. Poppler
345. LibreOffice
346. Pandoc
347. oletools
348. PDFiD
349. pdf-parser
350. PDF temizleme sistemi
351. Üst veri temizleme sistemi
352. Görsel yeniden kodlama
353. Video kare örnekleme
354. Küçük önizleme görseli üretimi
355. Sahne tespiti
356. Ses → metin çıkarımı
357. Görseldeki yazıyı çıkarma
358. Videodaki yazıyı çıkarma

## 359–388 — Metin, gizlilik ve içerik denetimi

359. Llama Guard
360. fastText
361. sentence-transformers
362. RapidFuzz
363. langdetect
364. pyahocorasick
365. RE2
366. Presidio Analyzer
367. Presidio Anonymizer
368. spaCy
369. Transformers
370. Düzenli ifade/kural motoru
371. Anlamsal benzerlik
372. Tekrar içerik özeti
373. Bağlantı itibarı kontrolü
374. Hesap yaşı risk girdisi
375. Paylaşım hızı risk girdisi
376. İhbar geçmişi risk girdisi
377. Spam sınıflandırma
378. Dolandırıcılık sınıflandırma
379. Küfür/hakaret kontrolü
380. Yasak ürün kontrolü
381. Kişisel bilgi tespiti
382. Telefon numarası tespiti
383. E-posta tespiti
384. Şüpheli bağlantı tespiti
385. Tekrar ilan/gönderi tespiti
386. Başlık-içerik uyumu kontrolü
387. Risk puanı 0–100
388. İnsan inceleme kuyruğu

## 389–405 — Dosya yükleme güvenliği

389. Karantina alanı
390. Temiz medya alanı
391. Web kök dizini dışı yükleme alanı
392. İzin verilen uzantı kontrolü
393. Gerçek dosya biçimi kontrolü
394. Dosya boyutu sınırı
395. Rastgele/güvenli dosya adı
396. Yüklenen dosyanın çalıştırılmasını engelleme
397. Antivirüs taraması
398. Yeniden kodlama ve temizleme
399. Üst veri temizleme
400. Medya denetim kuyruğu
401. Temiz / şüpheli / yasak sınıflandırması
402. Onaylı fotoğraf depolama
403. Onaylı video depolama
404. Küçük önizleme görseli depolama
405. Tekrar medya özeti kontrolü

## 406–425 — Veri tabanı, önbellek ve kuyruk

406. PostgreSQL
407. pgvector
408. PostgreSQL veri değişikliği sistemi
409. PostgreSQL şema yönetimi
410. PostgreSQL yedekleme
411. PostgreSQL geri yükleme
412. Redis
413. BullMQ
414. İş kuyruğu
415. Yeniden deneme kuyruğu
416. Başarısız iş kuyruğu
417. Zamanlanmış işler
418. S3 uyumlu depolama hazırlığı
419. MinIO
420. Veri taşıma motoru
421. Tekrar çalıştırıldığında veri çoğaltmayan taşıma
422. Veri bütünlüğü kontrolü
423. İşlem güvenliği
424. Uygulama önbelleği
425. Oturum depolama

## 426–444 — Yedek, takip ve işletim

426. restic
427. rclone
428. BorgBackup
429. rsync yedeği
430. GitHub kod yedeği
431. Sentry
432. Sentry CLI
433. Uptime Kuma
434. Netdata
435. Glances
436. journald
437. Uygulama kayıtları
438. Nginx kayıtları
439. Denetim kayıtları
440. Sağlık kontrol noktası
441. Otomatik geri yükleme sınaması
442. Prometheus
443. Grafana
444. Loki

## 445–463 — GitHub ve otomatik denetim zinciri

445. GitHub
446. GitHub Actions
447. Özel GitHub deposu
448. Korunan ana dal
449. Birleştirme isteği kontrolü
450. Kod inceleme kontrolü
451. Dependabot GitHub bağlantısı
452. Gizli bilgi taraması
453. Dal koruması
454. Otomatik kod kalite kapısı
455. Otomatik tür denetimi kapısı
456. Otomatik birim sınaması kapısı
457. Otomatik Playwright kapısı
458. Otomatik güvenlik tarama kapısı
459. Otomatik gizli bilgi tarama kapısı
460. Otomatik erişilebilirlik kapısı
461. Otomatik hız kapısı
462. Güvenli kontrol noktası kayıtları
463. Son sınanmış sürüm etiketi

## 464–521 — AnaBeyin tamamen yapılırken kurulacak gerçek sistemler

464. Gerçek arka uç
465. Gerçek uygulama bağlantıları
466. Gerçek PostgreSQL veri tabanı
467. Kullanıcı kayıt sistemi
468. Kullanıcı giriş sistemi
469. Parola güvenliği
470. Şifre yenileme
471. E-posta doğrulama
472. Telefon doğrulama
473. SMS doğrulama
474. Oturum yönetimi
475. Rol/yetki sistemi
476. Yönetici/personel yetki sistemi
477. Kullanıcı verisi taşıma sistemi
478. Dosya ve belge depolama
479. Fotoğraf yükleme sistemi
480. Video yükleme sistemi
481. Ses yükleme sistemi
482. Medya işleme işçileri
483. Fotoğraf denetleme sistemi
484. Video denetleme sistemi
485. Ses denetleme sistemi
486. Metin denetleme sistemi
487. Spam/bot/kötüye kullanım sistemi
488. İhbar sistemi
489. Moderasyon kuyruğu
490. İnsan müdahale sistemi
491. Bildirim sistemi
492. Ödeme sistemi
493. Ödeme sağlayıcı bağlantı katmanı
494. Ödeme başlatma
495. Başarılı/başarısız ödeme akışı
496. Ödeme bildirim sistemi
497. Ödeme iade sistemi
498. Ödeme işlem geçmişi
499. Ödeme yönetim ekranı
500. Aynı ödemenin iki kez işlenmesini engelleme
501. E-posta gönderim sistemi
502. E-posta sağlayıcı bağlantı katmanı
503. E-posta şablonları
504. E-posta kuyruğu
505. SMS gönderim sistemi
506. SMS sağlayıcı bağlantı katmanı
507. SMS şablonları
508. SMS kuyruğu
509. AnaBeyin ajan veri tabanı
510. AnaBeyin görev motoru
511. AnaBeyin ajan yetki sistemi
512. AnaBeyin olay sistemi
513. AnaBeyin çalışma kuyruğu
514. AnaBeyin yapay zekâ yönetici sistemi
515. AnaBeyin insan müdahale sistemi
516. AnaBeyin internet yönetim sistemi
517. Müşteri hizmetleri operasyon ajanları
518. Güvenlik olay ajanları
519. Analitik operasyon ajanları
520. İçerik operasyon ajanları
521. Canlı sistem denetim ajanları

## Kesin kararlar

- İkinci veya ayrı sunucu kullanılmayacak.
- Mevcut AnaBeyin sunucusu kullanılacak.
- Önce geliştirme araçları, güvenlik araçları, test araçları, yapay zekâ işçileri ve servisler hazırlanacak.
- Siteyi tamamen geliştirme işi en son yapılacak.
- PostgreSQL, Redis, BullMQ, Ollama, NVIDIA NIM bağlantısı, ödeme/e-posta/SMS bağlantı katmanları büyük geliştirme kapsamındadır.
- Ödeme, SMS, e-posta ve benzeri dış hizmetlerin kullanıcıya özel anahtarları/hesap bilgileri daha sonra güvenli biçimde girilecektir.
- Pollinations kullanılmayacak.
- Gizli anahtarlar, parolalar ve .env değerleri GitHub'a gönderilmeyecek.


</details>

---





---

## EK 2026-10-17 / V2.2 — YENİ BULUNAN VE ÖNCEDEN KONUŞULAN ÜCRETSİZ KAYNAKLAR (44 YENİ KART)

Bu bölüm 275 kaydın üzerindeki **eksik araçlar, model sürümleri, Türkçe ses kaynakları ve web/test yardımcılarını** tamamlar. Resmî kaynaklar ayrı ayrı verilir. Araç/modelin indirilebilmesi, model ticari lisansı veya GPU kiralamasının ücretsiz olduğu anlamına gelmez. Daha önce listelenen **Ollama, OpenCode, ComfyUI, Wan 2.2, Piper ana programı, ACE-Step 1.5, Godot, FFmpeg, Playwright, Hugging Face Inference ve GPT-OSS 120B** gibi kayıtlar tekrar oluşturulmadı.

**Güncel donanım mimarisi:** Mevcut Monster Windows 11 laptop (16 GB RAM/4 GB VRAM) + gelecekte kullanılabilecek hedef **10 TB toplam SSD arşivi** + gerektiğinde kiralık **NVIDIA RTX PRO 6000 96 GB VRAM** + hafif KVM1 görev/yönlendirme katmanı. 10 TB'ın laptopun tek bir dahili SSD yuvasında desteklendiği doğrulanmadı; gelecekteki kasaya aktarılabilir standart SSD/harici kutu seçilecek. GPU, uzakta ayrı sunucudadır; yerel SSD'deki modellerin GPU sunucusuna aktarılması/indirilmesi, orada uygun sürücü ve servisle çalıştırılması gerekir. Ücretli Claude Pro veya kiralık Hostinger GPU, **ücretsiz kaynak sayısına eklenmez**. Hostinger GPU örneği boştayken de ücretlendirilir; kapatmak için silinirse örnek dosyaları kaybolabilir. Kalıcı yedek şart.

**İş hedefi:** Ana Beyin, Türkiye VIP Transfer (yazılımı Kimi ile geliştirme kararı), TATTARIM, Parantez Türkiye, AIBorsam/EKO HOCA ve Godot mobil oyunları için açık kaynak araçları modül modül seç; satış ve maliyet testi olmadan ücretli API/kira açma. 4K video, LTX uygun iş akışı ve GPU deneyiyle doğrulanır; tek komutla otomatik kusursuz üretim garantisi verilmez.

### Video, görsel, medya

<a id="k276"></a>

### K276 — Fooocus

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** SDXL tabanlı görsel üretimini kolaylaştırır; eski 4 GB NVIDIA laptopta düşük VRAM ayarlarıyla denenebilir.
- **Resmî kaynak:** [Fooocus](https://github.com/lllyasviel/Fooocus).
- **Nerede çalışır?** Yerel GPU / uzaktaki GPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Açık kaynak; resmî proje kısıtlı bakımda. SDXL model dosyası ayrıca indirilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k277"></a>

### K277 — WanGP (Wan2GP)

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Wan, LTX, Qwen-Image vb. destekleyen düşük VRAM odaklı arayüz ve toplu üretim yöneticisi.
- **Resmî kaynak:** [WanGP (Wan2GP)](https://github.com/deepbeepmeep/WanGP).
- **Nerede çalışır?** Windows/WSL veya uzaktan GPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Ücretsiz yerel yazılım; desteklenen her modelin lisansı, CUDA ve VRAM ihtiyacı ayrıdır.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k278"></a>

### K278 — MoviePy

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Python ile videoları birleştirme, başlık, geçiş ve reklam montajını kodla üretme.
- **Resmî kaynak:** [MoviePy](https://github.com/Zulko/moviepy).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; v2 API değişikliklerini dikkate al. Uzun videolarda FFmpeg daha verimli olabilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k279"></a>

### K279 — Manim Community

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Ekonomi grafiklerini, eğitsel formülleri ve animasyonlu anlatımları üretme.
- **Resmî kaynak:** [Manim Community](https://github.com/ManimCommunity/manim).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; kendi grafik ve font varlıklarının haklarını ayrıca kontrol et.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k280"></a>

### K280 — Presenton

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Ollama/LLM bağlantısıyla değiştirilebilir sunum ve satış teklifi PPTX oluşturma.
- **Resmî kaynak:** [Presenton](https://github.com/presenton/presenton).
- **Nerede çalışır?** Laptop veya KVM1 uygun yapılandırma. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Apache-2.0 kod; seçilen harici LLM API ücretli olabilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k281"></a>

### K281 — Pexels API

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** İzinli stok fotoğraf ve videoları anahtar kullanarak arama; müşterinin reklamına montajlama.
- **Resmî kaynak:** [Pexels API](https://www.pexels.com/api/documentation/).
- **Nerede çalışır?** Bulut API + yerel arşiv. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Ücretsiz kotalı API; kredi ve medya lisans/kişilik/marka hakları, olduğu gibi yeniden satmama kuralı.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k282"></a>

### K282 — Mixkit Stock Video

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Ücretsiz lisanslı stok video arşivinden ticari reklamlarda kullanılabilen uygun klipler seçme.
- **Resmî kaynak:** [Mixkit Stock Video](https://mixkit.co/license/).
- **Nerede çalışır?** Web indirme + laptop. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Free ve Restricted video lisanslarını karıştırma; her klibin lisansını ayrı denetle.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k283"></a>

### K283 — Mixkit Stock Music

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Lisans izin verdiğinde sosyal medya ve çevrim içi reklamlara müzik ekleme.
- **Resmî kaynak:** [Mixkit Stock Music](https://mixkit.co/license/).
- **Nerede çalışır?** Web indirme + laptop. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Ücretsiz müzik lisansı video oyunlarında, TV/radyoda kullanım izni vermez; hak yönetimine kaydetme.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k284"></a>

### K284 — Hugging Face ZeroGPU Spaces

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Küçük GPU denemelerini aboneliksiz paylaşımlı Spaces üzerinde yapma.
- **Resmî kaynak:** [Hugging Face ZeroGPU Spaces](https://huggingface.co/docs/hub/main/en/spaces-zerogpu).
- **Nerede çalışır?** Bulut, yerel GPU gerektirmez. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Hesaba göre kotalı; Free hesap için belgede günlük 5 dakika. Kalıcı sınırsız üretim değildir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k285"></a>

### K285 — LTX-2.5

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** 96 GB GPU'da gerçek AI video/ses sahneleri ve uygun 4K iş akışı denemesi.
- **Resmî kaynak:** [LTX-2.5](https://huggingface.co/Lightricks/LTX-2.5).
- **Nerede çalışır?** Uzaktaki 96 GB GPU. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Açık ağırlıklı fakat koşullu Community License; yüksek sistem RAM/SSD ister. 4K kalite ve hız test edilmeli.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k286"></a>

### K286 — Piper Türkçe sesleri

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Video, görsel, medya.
- **Ne işe yarar / örnek:** Piper TTS'yi Türkçe ses paketleriyle internet olmadan seslendirme işlerinde kullanma.
- **Resmî kaynak:** [Piper Türkçe sesleri](https://huggingface.co/rhasspy/piper-voices/tree/main/tr).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Piper ana araç olarak K kaydında var; burada Türkçe model dosyası seçimi ek kaynak. Ses/model lisansını ayrı kontrol et.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.


### Açık ağırlıklı dil ve kod modelleri

<a id="k287"></a>

### K287 — Qwen3.5 9B

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Açık ağırlıklı dil ve kod modelleri.
- **Ne işe yarar / örnek:** Küçük komutlar, görsel anlama ve senaryo/kod yardımı; uygun quantization ile yerelde çalıştırma.
- **Resmî kaynak:** [Qwen3.5 9B](https://huggingface.co/Qwen/Qwen3.5-9B).
- **Nerede çalışır?** Laptopta RAM/CPU ile yavaş veya 96 GB GPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Apache-2.0; GGUF Q4 boyutu sürüme göre yaklaşık 6–8 GB, bağlam ve çalışma RAM'i ayrıca.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k288"></a>

### K288 — Qwen3.5 35B-A3B

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Açık ağırlıklı dil ve kod modelleri.
- **Ne işe yarar / örnek:** Ana Beyin için güçlü yerel LLM, çok adımlı araç kullanımını deneme.
- **Resmî kaynak:** [Qwen3.5 35B-A3B](https://huggingface.co/Qwen/Qwen3.5-35B-A3B).
- **Nerede çalışır?** 96 GB GPU. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MoE 35B toplam/3B etkin; nicemlenmiş dosya yaklaşık 20–30 GB olabilir, kesin dosya boyutunu seçilen depoda kontrol et.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k289"></a>

### K289 — Qwen3-Coder-Next 80B

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Açık ağırlıklı dil ve kod modelleri.
- **Ne işe yarar / örnek:** Büyük yazılım projelerinde çok dosyalı kod geliştirme, test düzeltme ve araç çağrısı.
- **Resmî kaynak:** [Qwen3-Coder-Next 80B](https://huggingface.co/Qwen/Qwen3-Coder-Next).
- **Nerede çalışır?** 96 GB GPU. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** 80B ağırlıkları sıkıştırma ile sığabilir; context/KV cache ve runtime ayrıca VRAM ister. Kimi K3 eşdeğeri olduğu varsayılmaz.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k290"></a>

### K290 — Devstral Small 2 24B

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Açık ağırlıklı dil ve kod modelleri.
- **Ne işe yarar / örnek:** Mistral'ın kodlama ve ajan görevleri için açık ağırlıklı modelini yerel GPU'da deneme.
- **Resmî kaynak:** [Devstral Small 2 24B](https://huggingface.co/mistralai/Devstral-Small-2-24B-Instruct-2512).
- **Nerede çalışır?** 96 GB GPU. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Resmî FP8 model yaklaşık 51,6 GB; Apache-2.0. Nicemlenmiş kopyalar üçüncü taraf olabilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k291"></a>

### K291 — Qwen2.5-Coder 7B Instruct

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Açık ağırlıklı dil ve kod modelleri.
- **Ne işe yarar / örnek:** Laptopta kod tamamlama, küçük Godot/Python görevleri ve yerel yardımcı ajan.
- **Resmî kaynak:** [Qwen2.5-Coder 7B Instruct](https://huggingface.co/Qwen/Qwen2.5-Coder-7B-Instruct).
- **Nerede çalışır?** Laptop CPU/4 GB VRAM kısmen veya uzaktaki GPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** GGUF Q4 genellikle ~4–5 GB dosya; RAM ve çalışma bağlamı ayrıca gerekir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k292"></a>

### K292 — Qwen2.5-Coder 3B Instruct

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Açık ağırlıklı dil ve kod modelleri.
- **Ne işe yarar / örnek:** 4 GB GPU ve 16 GB RAM'li mevcut laptopta küçük kod üretim görevlerini deneme.
- **Resmî kaynak:** [Qwen2.5-Coder 3B Instruct](https://huggingface.co/Qwen/Qwen2.5-Coder-3B-Instruct).
- **Nerede çalışır?** Laptop CPU / GPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Nicemlenmiş sürüm seçilmeli; diğer büyük modellerin yerine eş performans bekleme.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k293"></a>

### K293 — Mistral Vibe

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Açık ağırlıklı dil ve kod modelleri.
- **Ne işe yarar / örnek:** Terminal tabanlı kod ajanı; yerel veya API destekli Mistral modelini proje klasöründe çalıştırma.
- **Resmî kaynak:** [Mistral Vibe](https://github.com/mistralai/mistral-vibe).
- **Nerede çalışır?** Laptop + seçilen model sunucusu. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Kod ajanının ücretsiz olması bulut modelinin ücretsiz olduğu anlamına gelmez.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.


### Web, arayüz ve oyun

<a id="k294"></a>

### K294 — Vite

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Ana Beyin ve transfer panellerinde hızlı yerel ön yüz geliştirme.
- **Resmî kaynak:** [Vite](https://github.com/vitejs/vite).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; üretim sitesi için ayrı barındırma gerekir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k295"></a>

### K295 — TypeScript

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Büyük projede tür hatalarını derleme anında yakalayıp daha güvenilir modüller yazma.
- **Resmî kaynak:** [TypeScript](https://www.typescriptlang.org/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Apache-2.0; tarayıcı çalışma ortamı değildir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k296"></a>

### K296 — Tailwind CSS

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Yeniden kullanılabilir responsive arayüzler, panel ve mağaza sayfaları tasarlama.
- **Resmî kaynak:** [Tailwind CSS](https://tailwindcss.com/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Ücretsiz çekirdek; bazı hazır şablonlar ticari olabilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k297"></a>

### K297 — shadcn/ui

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Ana Beyin yönetim panelinde kaynak kodlu bileşenleri projeye yerel ekleme.
- **Resmî kaynak:** [shadcn/ui](https://ui.shadcn.com/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT bileşenler; bağımlılıklar ve temalar ayrıca kontrol edilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k298"></a>

### K298 — Radix UI

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Erişilebilir menü, açılır pencere, sekme ve form bileşenleri kurma.
- **Resmî kaynak:** [Radix UI](https://www.radix-ui.com/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Açık kaynak bileşenler; uygulama tasarımı ve test kullanıcıya ait.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k299"></a>

### K299 — Lucide Icons

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Lisansı uygun ücretsiz SVG ikonlarla web ve uygulama tasarımlarını birleştirme.
- **Resmî kaynak:** [Lucide Icons](https://lucide.dev/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** ISC lisansı; ad/logo kullanım haklarına dikkat.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k300"></a>

### K300 — Motion (Framer Motion)

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Web arayüz geçişleri, ürün kartı animasyonları, sayfa hareketleri yapma.
- **Resmî kaynak:** [Motion (Framer Motion)](https://motion.dev/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Kütüphane ücretsiz; ücretli kurumsal servisleri ayrı.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k301"></a>

### K301 — GSAP

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Gelişmiş kaydırmalı animasyonlar ve özel geçişler oluşturma.
- **Resmî kaynak:** [GSAP](https://gsap.com/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Ücretsiz çekirdeğin ve ticari dağıtımın güncel lisans koşulları kontrol edilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k302"></a>

### K302 — lottie-web

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Logo ve arayüz mikro-animasyonlarını JSON oynatıcıyla webde gösterme.
- **Resmî kaynak:** [lottie-web](https://github.com/airbnb/lottie-web).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT oynatıcı; animasyon varlıklarının lisansı ayrıca.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k303"></a>

### K303 — Swiper

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Mobil uyumlu ürün ve ilan kaydırma galerileri tasarlama.
- **Resmî kaynak:** [Swiper](https://swiperjs.com/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Açık kaynak; lisans/sürüm resmî depoda kontrol edilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k304"></a>

### K304 — Embla Carousel

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Hafif dokunmatik ürün galerileri ve ilan slaytları yapma.
- **Resmî kaynak:** [Embla Carousel](https://www.embla-carousel.com/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; render performansı test edilmeli.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k305"></a>

### K305 — Cropper.js

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Müşterinin yüklediği logo ve ürün fotoğrafını tarayıcıda kırpmasına izin verme.
- **Resmî kaynak:** [Cropper.js](https://github.com/fengyuanchen/cropperjs).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; sürüm 2 API'si önceki sürümden farklıdır.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k306"></a>

### K306 — Plyr

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Web sitemize erişilebilir video oynatıcı ekleme.
- **Resmî kaynak:** [Plyr](https://github.com/sampotts/plyr).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; video barındırma maliyeti ayrı.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k307"></a>

### K307 — Video.js

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** Eğitim, reklam ve müşteri paneli videolarını webde oynatma.
- **Resmî kaynak:** [Video.js](https://videojs.com/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Apache-2.0; trafik/CDN ayrıca masraflı olabilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k308"></a>

### K308 — hls.js

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Web, arayüz ve oyun.
- **Ne işe yarar / örnek:** HLS adaptif video yayınını desteklenen tarayıcılarda oynatma.
- **Resmî kaynak:** [hls.js](https://github.com/video-dev/hls.js).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Apache-2.0; video kodlama, CDN ve barındırma ayrıca gerekir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.


### Kalite, test ve güvenlik

<a id="k309"></a>

### K309 — Pixelmatch

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Eski ve yeni web ekran görüntülerini piksel bazında karşılaştırma.
- **Resmî kaynak:** [Pixelmatch](https://github.com/mapbox/pixelmatch).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** ISC; tolerans yanlış pozitif üretebilir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k310"></a>

### K310 — BackstopJS

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Ana Beyin ve VIP site görsel regresyon ekranlarını otomatik test etme.
- **Resmî kaynak:** [BackstopJS](https://github.com/garris/BackstopJS).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; tarayıcı altyapısı ve temel referans ekran gerekir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k311"></a>

### K311 — Lighthouse

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Site performansı, erişilebilirlik, SEO ve iyi uygulama puanlarını test etme.
- **Resmî kaynak:** [Lighthouse](https://github.com/GoogleChrome/lighthouse).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Apache-2.0; gerçek kullanıcı performansının yerine geçmez.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k312"></a>

### K312 — axe-core

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Web sayfasındaki erişilebilirlik sorunlarını otomatik kontrol etme.
- **Resmî kaynak:** [axe-core](https://github.com/dequelabs/axe-core).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MPL-2.0; manuel erişilebilirlik incelemesi de gerekir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k313"></a>

### K313 — Pa11y

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Her sürümde erişilebilirlik sorunları raporunu CI üzerinden üretme.
- **Resmî kaynak:** [Pa11y](https://github.com/pa11y/pa11y).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** LGPL; tarayıcı/Node bağımlılıklarını kontrol et.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k314"></a>

### K314 — Vitest

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** TypeScript/Vite modülleri için hızlı otomatik birim testleri yazma.
- **Resmî kaynak:** [Vitest](https://vitest.dev/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; test kapsamı ve kabul kriterleri manuel tasarlanır.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k315"></a>

### K315 — Semgrep Community

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Kodda bilinen güvenlik örüntülerini yerel analizle tarama.
- **Resmî kaynak:** [Semgrep Community](https://github.com/semgrep/semgrep).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Açık kaynak motorun koşullarını ve Semgrep Cloud ücretli özelliklerini ayır.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k316"></a>

### K316 — ESLint

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** JavaScript/TypeScript kod kalite denetimlerini otomatik uygulama.
- **Resmî kaynak:** [ESLint](https://eslint.org/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; proje kural yapılandırması gerekir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k317"></a>

### K317 — Prettier

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Kod biçimini ekip genelinde aynı düzende tutma.
- **Resmî kaynak:** [Prettier](https://prettier.io/).
- **Nerede çalışır?** Laptop CPU. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** MIT; anlamsal doğruluk testi değildir.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k318"></a>

### K318 — Renovate

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** NPM/Python bağımlılıkları için otomatik sürüm güncelleme PR'ları hazırlama.
- **Resmî kaynak:** [Renovate](https://github.com/renovatebot/renovate).
- **Nerede çalışır?** Laptop / GitHub. Laptopta kurulup denenebilir; gerekli model, işlemci ve bellek ayrıca kontrol edilir.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Açık kaynak; önerilen güncellemeler test ve insan onayı görmeli.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.

<a id="k319"></a>

### K319 — GitHub Actions

- **Durum:** Ücretsiz/açık kaynak/açık ağırlık/kotalı ücretsiz; ayrıntı ve ticari izin aşağıdaki uyarıdadır.
- **Kategori:** Kalite, test ve güvenlik.
- **Ne işe yarar / örnek:** Kod her değiştiğinde testleri otomatik çalıştırma ve Android derleme hattı kurma.
- **Resmî kaynak:** [GitHub Actions](https://docs.github.com/en/actions).
- **Nerede çalışır?** GitHub barındırmalı / yerel self-hosted runner. KVM1 kontrol katmanından veya uzaktan kullanılabilir; servis erişimi doğrulanır.
- **SSD/RAM/VRAM:** Uygulama ile indirilen model/veri farklıdır; indirme sayfasındaki kesin boyutu kontrol et. GPU modeli veya ağır video işlemi varsa yalnızca uzaktaki GPU belleği kullanılır; laptop SSD'si GPU VRAM'i değildir.
- **Ücret/lisans/uyarı:** Ücretsiz kotalar repo türüne ve plana göre değişir; iOS üretim imzası için macOS ve Apple hesabı ayrıca.
- **Projeye bağlanma:** Görev türüne göre Ana Beyin arayüzü/OpenCode/Kimi + Python API/CLI ile entegre et; entegrasyon yazılmadan tek komutla otomatik çalıştığını varsayma.
- **Test:** Küçük örnekte giriş → çıktı, maliyet, izin ve kaliteyi ölç; geçtiyse iş kuyruğuna dahil et.


## DEĞİŞİKLİK GEÇMİŞİ
- **2026-10-17 / V2.2:** 44 yeni araç/model/kaynak kartı eklendi (276–319). 10 TB SSD + uzaktan 96 GB GPU mimarisi, ücretsiz/ücretli ayrımı ve proje kullanım kuralları kayda alındı. Ayrı hızlı indeksler güncellendi.
- **2026-10-16 / V2.1:** 275 kart için sabit GitHub bağlantı noktaları ve makinece aranabilir hızlı JSON indeksi eklendi.
- **2026-10-16 / V2:** 275 kaydı uzun kart formatına dönüştürme, her araca bir örnek, kurulum/laptop/VPS/disk/RAM/VRAM açıklaması, TikTok yetki denetimli uçtan uca örnek, PowerShell FFmpeg komutu, yapay zekâ araştırmayı durdurma yasağı ve kalıcı ekleme şablonu. 521 eski envanter aynen tarihsel ek olarak saklandı.
- **2026-10-16 / V1:** İlk açıklamalı katalog, 261 ana + 14 tamamlayıcı kayıt.

**Uyarı:** Tablolardaki bellek rakamları resmî model bazlı ölçüm değil; yerel planlamaya uygun yaklaşık aralıklardır. Güncel kurulum ve API davranışını resmî belgede doğrula.
