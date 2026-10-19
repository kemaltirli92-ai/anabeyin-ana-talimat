# ANA BEYİN — YAPAY ZEKÂ SOHBETİ ARAÇLARI
**Sürüm:** 1.1 — kategori bazlı çift araştırma standardı  
**Tarih:** 20.10.2026  
**Proje:** anabeyin.com  
**Durum:** ADAY ENVANTERİ — kurulum ve ticari lisans onayı henüz yapılmadı.

> **Hedef:** ChatGPT benzeri tek sohbet arayüzünden mümkün olan tüm dijital üretim, araştırma, dosya işleme ve otomasyon işlerini sunan çok kiracılı (multi-tenant) SaaS. Kullanıcı metin, ses, belge veya medya yükler; Ana Beyin araçları seçer; çıktı sohbet içinde gösterilir, indirilir, projeye kaydedilir veya yetkiyle yayımlanır. Ücretsiz yazılım, ücretsiz ağırlık ve ücretsiz GPU **aynı şey değildir**.

## 0 — Sabit mimari kararları
- **Kendi fiziksel Linux sunucusu:** web uygulaması, üyelik, yönetici paneli, PostgreSQL, sohbet ve hafıza, dosya metadata'sı, iş kuyrukları, maliyet kayıtları, CPU belge araçları, yedekleme. İki farklı konumda veri kopyası ve ayrı, değiştirilemez yedek hedefi.
- **GPU hesaplama:** kendi GPU'su varsa öncelikle o; ağır veya yoğun işler için talebe göre kiralık GPU. GPU işçisi geçicidir; kalıcı kullanıcı dosyaları GPU diskinde saklanmaz.
- **Ücretli API:** daha sonra opsiyonel ve kota/ücret sınırıyla eklenir; bireysel sohbet abonelikleri ticari API yerine kullanılamaz.
- **Önce tema ve kullanım akışları onayı, sonra modüler ve testli kurulum.** Mevcut kaynak kodu silinmez, ana dalda kontrolsüz ajan değişikliği yapılmaz.
- **Tek motor zorunluluğu yok:** her yetenekte primary / fallback / premium adaptörü; yönetici panelinden aç-kapat, sürüm sabitleme ve geri alma.
- **Ücretsiz/açık kaynak** önceliği. AGPL, GPL, SSPL, BSL, RAIL, community ve özel model lisansları birbirinden ayrılacak. Model ağırlıkları ayrıca değerlendirilir.
- Kullanıcılar birbirlerinin sohbetini, projesini, dosyasını, GPU işini veya API anahtarını göremez.

## 1 — Müşteriye görünen sohbet deneyimi
1. Türkçe öncelikli, çok dilli sohbet; akış halinde cevap, markdown, kod, matematik, tablo, görsel, ses, video, harita.
2. Yeni sohbet, isim verme, sabitleme, arama, klasör/projeler, arşiv, silme, dışa aktarma, paylaşım bağlantısı (ayrı izin).
3. Bağlam hafızası: kullanıcı tercihleri, projeler, notlar, isteğe bağlı kişisel hafıza; düzelt, sil, kapat.
4. Dosya sürükle-bırak; PDF/DOCX/XLSX/PPTX/CSV/TXT/JSON/ZIP, görsel/ses/video okuma, önizleme.
5. Sesli konuşma: mikrofon, kesintiye uğratma, canlı transkripsiyon, TTS, altyazı.
6. Model seçici (Otomatik / Hızlı / Güçlü / Kod / Araştırma / Görsel / Video); gerçek maliyet/kredi bilgisi.
7. Uzun görevlerde kuyruk, aşama, iptal, tekrar dene, bildirim; asenkron görevler kaldığı yerden sürsün.
8. Çoklu çıktı ve sürüm karşılaştırması, promptu düzenle, üretimi yenile, dosyayı indir.
9. Kaynaklı internet araştırması, kaynak linkleri ve doğrulama notu; yayınlanma tarihi ile olay tarihi ayrımı.
10. Proje çalışma alanı: referans dosyaları, marka kılavuzu, renk/logo, proje hafızası, geçmiş üretimler.
11. Görsel tuvali, video zaman çizelgesi, kod önizlemesi, belge önizlemesi (sohbet yanında).
12. Şablonlar, toplu üretim, çok adımlı görevler, izinli zamanlama ve webhooks.
13. Kota, abonelik, kredi cüzdanı, harcama geçmişi, fatura, kullanıcıya veri taşınabilirliği.
14. Erişilebilirlik: klavye, ekran okuyucu, mobil, düşük bant genişliği ve düşük hareket tercihi.
15. Güvenlik açıklaması: dosya gizliliği, işleme bölgesi, silme politikası, modeli eğitmek için veri kullanımı tercihi.

## 2 — ÜCRETSİZ / AÇIK KAYNAK ÇEKİRDEK ve MODEL KATALOĞU
**Durum kodları:** OS = açık kaynak yazılım; OW = açık ağırlık, *tam model lisansı ayrıca kontrol*; OC = açık çekirdek / özel koşul; CHECK = şartları veya bakım durumu incelenecek. Hiçbiri ticari SaaS için otomatik onay değildir.

### 2.1 Genel LLM, muhakeme, hızlı yanıt, uzun bağlam
- **Qwen3 ailesi** (OW): genel sohbet, düşünme, araç çağrısı, Türkçe; çeşitli parametre/quant seçenekleri.
- **DeepSeek ailesi ve distilleri** (OW/CHECK): muhakeme, matematik, kod; her ağırlığın lisansını kontrol et.
- **Mistral / Ministral açık ağırlıklı sürümler** (OW/CHECK): çok dilli hızlı yanıt.
- **Gemma ailesi** (OW, özel lisans): hafif/orta multimodal ve metin.
- **gpt-oss açık ağırlıklı sürümler** (OW): muhakeme ve tool-calling; dağıtım lisansını doğrula.
- **Phi, SmolLM, OLMo, Granite** (OW/CHECK): ucuz/hafif çıkarım, yardımcı görevler.
- **llama.cpp, Ollama, vLLM, SGLang, TensorRT-LLM, LocalAI** (OS/CHECK): yükleme, quantization, KV-cache, batching, OpenAI-uyumlu API.
- Farklı model için Türkçe benchmark, doğruluk, tok/sn, TTFT, KV cache ve paralel kullanıcı testleri yapılacak.

### 2.2 Kod, web, mobil, oyun ve bilgisayar kullanımı
- **Qwen-Coder, DeepSeek-Coder, StarCoder2, CodeGemma** (OW): kod LLM adayları.
- **OpenCode, Aider, Continue, Cline, OpenHands** (OS/CHECK): kod ajanları, düzenleme, hata ayıklama ve test; kullanıcının gerçek sunucusuna doğrudan kök erişim verilmez.
- **Playwright, Selenium, Appium, pytest, Vitest, Jest, Cypress** (OS): web/mobil test.
- **Git, GitHub Actions (kota şartları), Forgejo/Gitea, GitLab CE** (OS/OC): sürüm, görev ve CI.
- **Node.js, Python, FastAPI, Django, NestJS, Laravel, React, Next.js, Astro, SvelteKit** (OS): proje çıktısı.
- **Flutter, React Native, Android Studio, Godot, GDevelop, Phaser, Three.js, Blender** (OS): mobil/oyun/3D.
- İzole ephemeral konteyner, repo başına izin, ağ çıkış kontrolü, secret scanner, önizleme URL'si, kullanıcı onaylı deploy.

### 2.3 Derin araştırma, tarama, bilgi kaynakları
- **SearXNG** (OS): çoklu web araması; sağlayıcı hız limitleri göz önüne alınır.
- **Crawl4AI, Scrapy, Playwright, trafilatura, Beautiful Soup, feedparser, RSSHub** (OS): sayfa okuma / RSS / yapılandırılmış çıkarım.
- **Haystack, LlamaIndex, LangChain, LangGraph** (OS/OC): araştırma akışı, araç bağlantısı, kaynak doğrulama.
- **OpenAlex, Crossref, arXiv, PubMed, Wikipedia/Wikidata** (ücretsiz/veri API koşulları): akademik ve ansiklopedik kaynaklar.
- Çok kaynaklı teyit, kaynak geçerliliği, alıntı ve telif sınırı, bot kuralları, özet/alıntı ayrımı.
- Haber ile araştırma ayrı: tarih, ilk yayın, güncelleme, düzeltme ve kaynak güven skoru.

### 2.4 Bellek, RAG, anlamsal arama
- **PostgreSQL + pgvector, Qdrant, FAISS, Chroma, Milvus, Meilisearch, OpenSearch** (OS): depolama/arama alternatifleri.
- **BGE, E5, Jina embeddings, multilingual-e5, BGE-reranker** (OW/CHECK): vektör + reranking.
- **Apache Tika, Unstructured, Docling, Marker** (OS/CHECK): içerik parçalayıcılar.
- Kullanıcı/hafıza izin sınırı, PII maskeleme, alıntının kaynak dosyaya bağlantısı, silme ve unutma işlemi.

### 2.5 Görsel anlama, ekran/fotoğraf/OCR
- **Qwen3-VL / diğer açık VLM'ler, Florence-2, PaliGemma** (OW/CHECK): görseli okuma, grafik/tablo/ekran yorumlama.
- **PaddleOCR, Tesseract, OCRmyPDF, Docling** (OS): çok dilli OCR ve belge çıkarımı.
- **SAM2, Grounding DINO, Florence-2** (OW/CHECK): nesne bulma/segmentasyon.

### 2.6 Görsel üretimi ve profesyonel düzenleme
- **ComfyUI, Diffusers, InvokeAI** (OS): iş akışı, backend.
- **Z-Image, Qwen-Image, FLUX varyantları, SDXL, Stable Diffusion 3.5, HiDream** (OW/CHECK): metinden görsel; sürüm bazlı ticari lisans zorunlu.
- **Qwen-Image-Edit, ControlNet, IP-Adapter, inpainting modelleri** (OW/CHECK): edit, arkaplan değiştirme, kıyafet/ürün tasarımı.
- **Real-ESRGAN, SwinIR, Upscayl** (OS/OW): kalite büyütme.
- **rembg, BiRefNet, SAM2** (OS/OW): arkaplan kaldırma ve maske.
- **GIMP, Krita, Inkscape, ImageMagick, libvips, OpenCV** (OS): katman, vektör, format, toplu dönüşüm.
- Kullanıcı özellikleri: logo/ikon, post, banner, afiş, katalog, mockup, fotoğraftan fotoğrafa, düzenlenebilir sonuç, şeffaf PNG, WebP/AVIF, watermark kontrolü.
- Gerçek fotoğraf ve sentetik görselin yanlış temsil edilmesini önle.

### 2.7 Video üretimi, animasyon, avatar
- **Wan2.2 ve lisansı uygun Wan varyantları** (OW), **LTX ailesi** (OW / özel ticari kısıt: CHECK), **HunyuanVideo, CogVideoX, Mochi** (OW/CHECK): text-to-video, image-to-video.
- **ComfyUI, Diffusers** (OS): model orkestrasyonu.
- **AnimateDiff, LivePortrait, MuseTalk, LatentSync, Wav2Lip türevleri** (OW/CHECK): karakter/konuşma; portre izni ve model lisansı kontrolü.
- **FFmpeg, Kdenlive, Blender, Shotcut, OpenToonz, Synfig, Manim** (OS): kurgu, çok sahneli video, animasyon ve altyazı.
- Çıktı: 9:16 Reels/Shorts, 16:9, 1:1; 720p/1080p, yüksek kalite gerektiğinde upscale; önizleme, sahne planı, müzik, dublaj, SRT.
- 60 saniye / uzun video çoğu zaman 5–10 saniyelik sahnelerin montajıdır. GPU maliyeti, kuyruk ve tekrar üretim sayıları ölçülür.

### 2.8 Ses algılama, konuşma, dublaj, sesli asistan
- **faster-whisper, whisper.cpp, Vosk, Qwen-ASR** (OS/OW): STT.
- **Piper, Kokoro, F5-TTS, Chatterbox, Qwen TTS** (OS/OW/CHECK): Türkçe TTS kalite testi.
- **Silero VAD, WebRTC, RNNoise, DeepFilterNet, Demucs, Audacity, Ardour** (OS/OW): VAD, canlı ses, temizleme, ayrıştırma.
- Gerçek zamanlı sesli sohbet: streaming STT → düşük gecikmeli LLM → streaming TTS; interruption/barge-in, echo cancellation.
- Ses klonlama yalnızca yetki/izinli örneklerle; taklit/sahtecilik için içerik kuralları.

### 2.9 Müzik, şarkı, efekt
- **ACE-Step 1.5** (OS/OW; MIT repo — checkpoint ayrıca kontrol), **AudioCraft/MusicGen, Stable Audio Open, Riffusion** (OW/CHECK): melodi, vokal, enstrümantal.
- **LMMS, Ardour, Audacity, Demucs, FFmpeg, Rubber Band** (OS): mastering ve montaj.
- Şarkı sözleri, tür, tempo, intro/outro, stems, loop, reklam jingle'ı; müzik modelinin ticari lisansı ve telif denetimi.

### 2.10 3D, CAD, tasarım, modelleme
- **Hunyuan3D, TRELLIS, Stable Fast 3D, TripoSR** (OW/CHECK): görüntüden 3D.
- **Blender, FreeCAD, OpenSCAD, MeshLab, Godot** (OS): mesh, CAD, render, rig, animasyon.
- GLB/GLTF/OBJ/STL/FBX uygun çıktılar, önizleme, polygon ve texture optimizasyonu.

### 2.11 PDF, Office, görsel sunum, çizelge
- **LibreOffice headless, Pandoc, WeasyPrint, ReportLab, PyMuPDF, pypdf, pdfplumber, OCRmyPDF** (OS/CHECK): PDF ve belge.
- **python-docx, openpyxl, pandas, DuckDB, Polars** (OS): Word/Excel/analiz.
- **PptxGenJS, python-pptx, Marp, reveal.js, Mermaid, Graphviz** (OS): slayt, diyagram.
- **Matplotlib, Plotly, Apache ECharts, Vega-Lite** (OS): grafik.
- Çıktıda indirilebilir gerçek DOCX/XLSX/PPTX/PDF; düzenlenebilirlik, şablon, font ve sayfa testi.

### 2.12 Matematik, bilim, istatistik, finans, coğrafi işlemler
- **SymPy, SciPy, NumPy, pandas, statsmodels, scikit-learn, Jupyter, R** (OS): hesaplama ve analiz.
- **GeoPandas, GDAL, QGIS, Leaflet, MapLibre, OpenStreetMap** (OS / veri lisansları): harita, coğrafya.
- **QuantLib, Backtrader, vectorbt açık kaynak sürümleri** (OS/CHECK): finansal analiz; gerçek zamanlı piyasa verisi ayrı lisans.
- Hesaplama çıktısı modelin tahmini değil izole kod yürütmesiyle doğrulanmalı.

### 2.13 Eğitim, dil, çeviri, transkripsiyon
- **MarianMT/OPUS-MT, NLLB, SeamlessM4T, Argos Translate** (OW/CHECK): metin/ses çeviri.
- Öğretmen modu, sorular, flashcard, sınav, notlandırma rubriği, PDF ders özeti, çalışma planı.
- Türkçe karakterler, aksanlar, lehçe ve doğruluk testleri.

### 2.14 Pazarlama, e-ticaret, sosyal yayın, iş yazılımları
- **Postiz, RSSHub, Matomo, Umami, Metabase, Apache Superset** (OS/OC): içerik takvimi ve ölçüm.
- **ERPNext, Dolibarr, Odoo Community, Akaunting, EspoCRM, SuiteCRM, Chatwoot** (OS/OC): müşteriye özel belge/CRM entegrasyonları.
- **Medusa, Saleor, WooCommerce, PrestaShop** (OS/OC): e-ticaret proje çıktısı.
- Sosyal API izinleri, müşteri yetkilendirmesi, platform kuralları, spam ve otomatik yayın limitleri.
- Türkiye e-Fatura, banka, ödeme, mali müşavir sistemleri özel entegrasyon ve mevzuat kontrolü gerektirir.

### 2.15 Ajanlar, otomasyon ve dış servisler
- **LangGraph, Haystack, CrewAI, AutoGen**, **Activepieces, Node-RED, n8n (fair-code, OS değil)**, **Temporal, Celery, Dramatiq, Prefect** (OS/OC).
- **MCP sunucuları**: araç izinleri, şema doğrulama, allowlist ve audit log.
- Tetikleyiciler: kullanıcı komutu, zaman, webhook, dosya yükleme, RSS değişikliği, eşik/aşım.
- İzin seviyeleri: OKU → ÜRET → TEST → YAYINLA → PARA HARCAMA / SİLME; son iki sınıfta zorunlu açık yetki.
- Ayrı sandbox: kod, tarayıcı ve bilinmeyen belgeler üretim sunucusuna kaçamaz.

### 2.16 Kullanıcı hesabı, sistem, güvenlik, devops
- **Ubuntu Server LTS / Debian** (OS), **Docker Engine / Podman, Compose, Caddy, Nginx, Traefik** (OS).
- **PostgreSQL, Valkey, MinIO / Ceph, Qdrant, pgvector** (OS/CHECK): durum, hız ve kullanıcı dosyaları.
- **Keycloak, Authentik**, OAuth/OIDC, MFA, cihaz/oturum kontrolü (OS/OC).
- **Prometheus, Grafana, Loki, Uptime Kuma, OpenTelemetry, GlitchTip** (OS/OC): gözlemleme.
- **Wazuh, Trivy, Gitleaks, OWASP ZAP, ClamAV, CrowdSec** (OS/OC): tehdit tarama.
- **Restic, Borg, Kopia** (OS): yedek/geri yükleme.
- Tenant isolation, RBAC, audit log, şifreleme, gizli anahtar yönetimi, anomali ve kötüye kullanım.
- İki lokasyon, anlık kopya + sürümlü değiştirilemez üçüncü yedek; gerçek restore tatbikatı.

### 2.17 İçerik güvenliği, kalite ve şeffaflık
- Metin/görsel/video moderasyonu; çocuk güvenliği, yasa dışı içerik, telif ve kişisel veri riskleri.
- Kişisel kimlik/ses/yüz kullanımında izin; sentetik medya işaretleme.
- Yanıt kalite değerlendirme: RAG kaynak doğruluğu, araç çıktısı, red-team, benchmark, hata oranı.
- Prompt injection, RAG belge zehirleme, SSRF, API key sızıntısı, modelde hassas veri sızması kontrolleri.
- Kullanıcı şikâyeti, itiraz, manuel inceleme; KVKK erişim/silme, veri işleme politikası.

## 3 — ÜCRETLİ API KATALOĞU (sonradan, ayrı fiyatlandırma)
| İşlev | Aday ticari sağlayıcılar | Kurulum kararı |
|---|---|---|
| Güçlü genel sohbet, muhakeme, multimodal | OpenAI API, Anthropic Claude API, Google Gemini API, Mistral API, Cohere, xAI, DeepSeek API | Adaptör; token maliyeti ve bölge şartları |
| Kod/ajan | OpenAI API, Anthropic Claude API, Google Gemini API | Ayrı görev sınırı; kullanıcı adına dış sistem değişiklikleri onaylı |
| Web araştırma/arama | Tavily, Exa, Brave Search API, SerpAPI, Perplexity API | İstek kotası ve lisans |
| Görsel | OpenAI Images API, Google Imagen, Adobe Firefly API, fal.ai, Replicate | Görsel başına maliyet ve haklar |
| Video | Runway API, Luma API, Google Veo erişimi, fal.ai, Replicate | Süre/çözünürlük başına fiyat; ticari hak |
| Ses/STT/TTS | ElevenLabs API, Deepgram, AssemblyAI, OpenAI Audio, Google Cloud TTS, Azure Speech | Dakika/karakter başına maliyet |
| 3D/diğer | Üretim API pazar yerleri, lisanslı 3D hizmetleri | Ayrı ticari koşul |
| GPU barındırma | Runpod, Vast.ai, Lambda, Modal, Scaleway, Hetzner GPU seçenekleri | Kiralık işlem gücü, model SaaS API'siyle karıştırma |
| Dosya/CDN | Cloudflare R2, Backblaze B2, S3 uyumlu sağlayıcılar | Saklama/işlem ve veri çıkış bedeli |
| Ödeme | iyzico, PayTR vb. | PCI kapsamı, komisyon, mutabakat |
**Ödeme kuralı:** önce ücretsiz/özel model; uygun değilse premium isteğini kullanıcı kredisinden ön ödeme rezervasyonuyla çalıştır. Günlük/aylık harcama tavanı ve sağlayıcı bazlı kill-switch. Bireysel Claude/ChatGPT aboneliği müşteriye yeniden satılacak API değildir.

## 4 — Model kayıt standardı (her model için ayrı satır, tahmin yok)
Alanlar:
`id | kategori | üretici | tam checkpoint/sürüm | kaynak URL | lisans metni URL | kod lisansı | ağırlık lisansı | SaaS ticari hak | TR performansı | OS | çalışma modu CPU/GPU/API | quant/dtype | indirilen GB | kurulu GB | min VRAM (ölçülü) | önerilen VRAM (ölçülü) | RAM | GPU modeli | çözünürlük/bağlam | throughput | eşzamanlı iş | ortalama işlem maliyeti | benchmark tarihi | güvenlik notu | durum (ADAY/TEST/ONAY/RED) | fallback`.
- Ölçülmemiş VRAM/SSD alanlarına rakam uydurma, `ÖLÇÜLMEDİ` yaz.
- Üretimde model ağırlığı, tokenizer, VAE, LoRA, encoder ve cache ayrı boyutlanır.
- Sunucudaki SSD, GPU işçisinin kalıcı modeli, kullanıcı deposu ve yedek diskleri **ayrı kapasite** bütçesidir.

## 5 — Teknik servis sınırları
```
Client Web/Mobile
  -> Cloudflare TLS/WAF/CDN
  -> Ana Beyin API + OIDC + tenant/RBAC + rate limit
  -> Chat Session/Projects/Memory/PostgreSQL/pgvector
  -> Model Router + Tool Registry + Credit Ledger
      -> local CPU worker: office/OCR/light STT
      -> LLM GPU workers: vLLM/SGLang/llama.cpp
      -> Media GPU workers: ComfyUI/Wan/LTX/image/music/3D
      -> Agent sandbox: Playwright/coding/research
      -> Premium APIs: opt-in connector adapters
  -> Jobs Queue -> status/webhooks -> artifact validator -> user object storage
  -> Monitoring, billing, abuse detection, encrypted backups, admin console
```

## 6 — Yönetici paneli (tam kapsam)
- Kullanıcı/kurum/rol, abonelik, kredi, kullanım limiti, deneme paketi, promosyon, iade.
- Model registry: kalite, sürüm, lisans, risk, aktif/pasif, routing, sıcak model, fallback.
- GPU yönetimi: yerel/kiralık, VRAM, kuyruk, soğuk başlatma, dakika/saat maliyeti, otomatik ölçekleme.
- Tenant depolama kotası, medya yaşam döngüsü, versiyon, silme, arşiv.
- Sohbet/işlem metrikleri (özel içerik görünürlüğü sınırlandırılmış), performans, hata, SLA.
- İçerik moderasyonu, şikâyet, risk olayları, human review, itiraz.
- API key ve secret vault, webhook, bağlı servis izinleri, denetim kayıtları.
- Sistem sürümleri, yedek, restore testleri, felaket senaryosu, dağıtım ve rollback.
- Ticari rapor: gelir, GPU / token / depolama maliyeti, brüt marj, ürün bazlı birim ekonomi.

## 7 — Test ve kabul şartları
1. Aynı sohbetten metin → görsel → video → ses → PDF çıktısı birbirine aktarılabilsin.
2. 10K hesap için depolama ve işlem maliyeti ayrı modellenmiş; 100/1.000 eşzamanlı kullanıcı için yük testleri yapılmış olsun.
3. Bir kullanıcının dosyası, sohbeti veya API anahtarı başka hesaptan okunamasın.
4. GPU kapanınca dosyalar/siparişler kaybolmasın; işler idempotent, iptal edilebilir, tekrar denenebilir olsun.
5. Bir sağlayıcı kapanınca fallback çalışsın, ücret sınırını aşmasın.
6. Gerçek PDF/DOCX/XLSX/PPTX dosyaları oluşturulsun ve otomatik açma/render testlerinden geçsin.
7. Ticari kullanıma izin veren checkpoint listesi onaylanmadan model müşterilere açılmasın.
8. KVKK, telif, abonelik/mesafeli hizmet, içerik şikâyeti ve veri ihlali süreçleri yayın öncesi incelensin.
9. Geri yükleme testi ve ikinci lokasyon senaryosu başarıyla tamamlanmış olsun.
10. Kullanıcıların kendi verisini görüntüleme, indirme ve silme mekanizması çalışsın.

## 8 — Araştırmanın devamı ve Perplexity iş paketi
Her kategori için en az 5 uygun aday, güncel repo ve checkpoint lisansları, Türkçe yetenek, **ölçülen** GPU/SSD boyutları, SaaS ticari kullanım hakkı, Linux/Docker/API desteği, benchmarking ve kalıcılık özelliği doğrulanmalı. Birincil üretim motoru + alternatif + premium API ayrı seçilmeli. Araştırma bir **kurulum talimatı değildir**; envanter onaylanıncaya kadar satın alma ve kurulum yapılmaz.

### Kaynak başlangıçları (20.10.2026 kontrol)
- Qwen3: https://github.com/QwenLM/Qwen3
- Qwen3 VL: https://github.com/QwenLM/Qwen3-VL
- Wan2.2: https://github.com/Wan-Video/Wan2.2
- ComfyUI: https://github.com/Comfy-Org/ComfyUI
- ACE-Step 1.5: https://github.com/ace-step/ACE-Step-1.5
- LibreChat: https://github.com/danny-avila/LibreChat
- LTX: https://github.com/Lightricks/LTX-Video
- vLLM: https://github.com/vllm-project/vllm
- SGLang: https://github.com/sgl-project/sglang
- Docling: https://github.com/docling-project/docling

**Not:** Link verilmiş olması tekil model checkpointlerinin güncel lisans ve benchmark'larının doğrulandığı anlamına gelmez. Platformu SaaS olarak açmadan önce kategori bazlı hukuki/teknik onay zorunludur.


---

# 9 — ZORUNLU DERİN ARAŞTIRMA PROTOKOLÜ (20.10.2026)

> **Yeni kalıcı kural:** Katalog artık yalnız ad listesi değildir. Yukarıdaki eski kısa kayıtlar **özet/araştırılacak aday** statüsündedir; her biri aşağıdaki formatta doğrulanıp genişletilecektir. Doğrulanmamış değerler uydurulmayacak. Mevcut bilgileri silme; yalnız doğrulanan yeni veriyi ilgili kayda işle. Bu standardı geçmiş tüm kategoriler ve bundan sonra eklenecek her model için uygula.

## 9.1 Araştırma döngüsü
1. **Tek kategori / iki derin tur:** Her seferinde yalnız 1 kategoriye odaklan. Tur 1 mevcut envanteri tarayıp **yalnız yeni adayları ve mevcut satırlardaki yeni bilgileri** bulur. Tur 2, Tur 1'de **araştırılmamış** adayları/eksik test ve kaynakları araştırır. Turlar kopya/parafraz tekrar içermez.
2. Tur başlamadan: mevcut dosya, önceki tur çıktısı, kategoriye ait kaynaklar ve aynı checkpoint'in alternatif isimleri karşılaştırılır; tekrar önleme listesi oluşturulur.
3. Sonuçlar `YENİ MODEL` / `MEVCUT KAYIT GÜNCELLEMESİ` / `EKSİK DOĞRULAMA` / `KULLANIMA UYGUN DEĞİL` olarak etiketlenir.
4. Ücretsiz açık kaynak → ücretsiz açık ağırlık → ücretsiz kotası olan API → ticari API sırası korunur. Lisanslar her model sürümü için **ayrı** incelenir.
5. Sonunda kaynaklar, açık sorunlar, araştırılmamış adaylar ve ikinci turun hariç tutma listesi verilir.
6. Perplexity bir GitHub dosyasını güncellediğini iddia edemez; araştırma çıktısını kullanıcı buraya getirir, mevcut GitHub belgesiyle karşılaştırılarak **gerçek GitHub yazma işlemi** yapılır.
7. Dış araştırma metnindeki `kesin öneri`, lisans, fiyat, donanım ve benchmark iddiaları **bağımsız doğrulanmadan ONAYLI işaretlenmez**.

## 9.2 Bütün mevcut/yeni araçlar için zorunlu kayıt kartı
**Her farklı checkpoint/sürüm için ayrı kart veya alt kayıt.**
| Alan | Zorunlu içerik |
|---|---|
| ID/kategori | Kalıcı benzersiz kimlik, etiket ve görev |
| İsim | Geliştirici, ülke, tam model/checkpoint/sürüm, tarih |
| Resmî kaynaklar | Ürün, repo, Hugging Face, model card, lisans URL; erişim tarihi |
| Maliyet statüsü | OS-PERMISSIVE / OS-COPYLEFT / OW-PERMISSIVE / OW-CONDITIONAL / NONCOMMERCIAL / API-FREE-TIER / API-PAID / BELİRSİZ |
| Ticari SaaS hakkı | EVET / KOŞULLU / HAYIR / DOĞRULANMADI; atıf, MAU, ülke ve kullanım politikaları |
| Tam olarak ne yapar? | Müşteriye somut özellikler, girişler, çıktılar, Türkçe, bilinen kısıtlar |
| Nasıl çalışır? | Model mimarisi, workflow, token/latent/audio/video işlem aşamaları ve kullanılan yardımcı bileşenler |
| Kurulum | Linux, Docker, Python, driver/CUDA, model indirme; **doğrulanmış** komutlar ve versiyon sabitleme |
| API bağlantısı | Endpoint, protokol, örnek request/response, router, auth, streaming, hata/fallback |
| Donanım | CPU çekirdek/RAM, GPU mimarisi, CUDA gereksinimi, BF16/FP8/GGUF/INT4, tek/çoklu GPU |
| Gerçek disk | Ağırlık GB + ek modeller/encoder + Docker ve çalışma cache GB + üretim scratch GB; toplam SSD |
| Gerçek VRAM | Minimum/önerilen GB; model ağırlığı + KV cache/aktivasyon + batch/context + eşzamanlı istek |
| Ölçülen performans | Kullanılan GPU, sürüm, quant, istek boyutu, batch, tok/s veya sn/görsel-video; kaynak ve test tarihi |
| 100K kullanıcı | DAU senaryoları ve 100/500/1000/5000 eşzamanlı **istek** için throughput, GPU adedi, kart başına VRAM, toplam VRAM, SLA/gecikme ve aylık maliyet |
| Maliyet ve ölçekleme | Yerel GPU elektrik/amortisman, kiralık GPU/saat, premium API/token, sıcak/soğuk işçi |
| Risk ve kontroller | Lisans, telif, gizlilik, içerik güvenliği, abuse, sürüm, güncelleme, GPU OOM, kuyruk, veri sızıntısı, fiyat patlaması |
| Karar | ADAY / TEST / TİCARİ LİSANS KONTROLÜ / ONAYLI / ELENDİ; primary/fallback/ekonomik/premium |
| Araştırma izi | Tur 1 bulgusu, Tur 2 yalnız yeni farklar, çelişen kaynaklar, araştırma açığı |

**Ölçülmemiş her alanın tam değeri: `ÖLÇÜLMEDİ`.** Kaynak yoksa `DOĞRULANMADI`. Sayısal tahmin yalnız matematiksel **varsayım** başlığıyla ve formülle verilebilir; benchmark diye sunulamaz.

## 9.3 100.000 kullanıcılık GPU kapasite standardı
- 100K **kayıtlı hesap** GPU bellek gereksinimini belirlemez. 5K/20K günlük aktif kullanıcı ve aynı anda 100/500/1000/5000 **aktif çıkarım isteği** ayrı analiz edilir.
- Bir sohbet oturumu başka sekmede açık olsa bile istek göndermiyorsa GPU'da KV-cache tutulması gerekmez; kalıcı sohbet hafızası PostgreSQL/disk üzerinde bulunur.
- **Throughput:** ihtiyaç output tok/sn ≈ eşzamanlı aktif akış × hedef output tok/sn/akış; prefill token/s ve model ayrımı ayrıca hesaplanır.
- **GPU sayısı:** yük testi throughput'unun kapasite/satın alma ile birlikte değerlendirilmesi; hedef p95 ilk token, yanıt süresi, overload koruması ve kuyruk şart.
- **VRAM:** kart başına ağırlıklar + KV-cache + aktivasyon + ara tamponlar ve güvenlik rezervi. Çoklu kart VRAM'i salt toplanıp birleşik bellek sayılmaz; data/tensor/pipeline parallel yöntemi ayrıdır.
- GPU dışında ayrıca CPU/RAM, sunucular arası ağ, depolama IOPS, veri çıkışı, reverse proxy, ödeme sistemi ve yedekleme darboğazları belirtilir.
- Giriş/çıkış token dağılımı, istek/dakika, pik katsayısı, batching, quantization, bağlam uzunluğu ve GPU mimarisi verilmeden `X GB GPU 100K kullanıcıya yeter` hükmü kurulmaz.

### Senaryo hesap şablonu
| Senaryo | Kayıt | Günlük aktif (vars.) | Aktif eşzamanlı istek | Giriş/çıkış token | GPU başına ölçülmüş tok/s | GPU adedi | GPU başına VRAM | Toplam fiziksel VRAM | p95 gecikme | TL/ay | Ölçüm durumu |
|---|---:|---:|---:|---|---|---|---|---|---|---|---|
| Normal | 100.000 | 5.000 | 100 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | BENCHMARK GEREK |
| Yoğun | 100.000 | 20.000 | 500 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | BENCHMARK GEREK |
| Pik | 100.000 | 20.000 | 1.000 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | BENCHMARK GEREK |
| Aşırı pik | 100.000 | 20.000 | 5.000 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | BENCHMARK GEREK |

## 9.4 Kategori araştırma kuyruğu — her biri Tur 1 + Tur 2
01. Genel LLM, muhakeme, Türkçe/multilingual
02. Kodlama, yazılım ajanı, IDE, web/mobil/oyun
03. Derin web/akademik araştırma ve kaynak doğrulama
04. Kişisel hafıza, embedding, RAG, bilgi grafı
05. VLM, görüntü anlama, OCR
06. Görsel üretimi, ürün fotoğrafı, vektör, inpainting
07. Video: T2V/I2V/V2V, karakter, avatar, kurgu
08. Sesli sohbet, STT, TTS, çeviri, dublaj
09. Müzik, şarkı, sound design
10. 3D, CAD, animasyon, spatial computing
11. PDF, Word, Excel, PowerPoint, dijital belge
12. Matematik, veri bilimi, bilim, finans, haritalar
13. Eğitim, öğretim, çeviri ve erişilebilirlik
14. Sosyal medya, reklam, e-ticaret, CRM, ERP
15. Otonom ajan, MCP, tarayıcı ve bilgisayar kullanımı
16. Moderasyon, güvenlik, telif, KVKK ve uyum
17. Model serving, inference, scheduler, GPU orchestration
18. Üyelik, kredi, ödeme, çok kiracılı altyapı
19. Depolama, yedekleme, iki lokasyon, felaket kurtarma
20. İzleme, kalite değerlendirme, maliyet ve yönetişim
21. Yeni keşfedilen eksik kategoriler — araştırmayla genişletilecek

## 9.5 Araştırma 0: Kullanıcının sunduğu Perplexity genişletilmiş envanterinden değişiklik notları
**Kaynak:** 'ANA BEYİN — YAPAY ZEKA SOHBETİ ARAÇLARI — GENİŞLETİLMİŞ ENVANTER 2026' (20.10.2026, kullanıcı tarafından paylaşılan metin).  
**Durum:** Dış araştırma iddiaları **bağımsız doğrulama bekliyor**; bu kayıtlar lisans onayı veya benchmark değildir.

- İlk katalogda yüzeysel kalan: gerçek zamanlı çok dilli sesli sohbet, toplantı asistanı, belge imza/onay akışı, müşteri destek ajanı, veri görselleştirme stüdyosu, web yayınlama, mobil prototip, oyun prototip, erişilebilirlik, değerlendirme stüdyosu.
- Dış raporun ileri sürdüğü kontrol gerektiren lisans bulguları: **FLUX.1 dev ticari olmama koşulu; HunyuanVideo bölgesel ve MAU koşulları; LTX 2.x community lisansı ve türev/fine-tune şartları; ACE-Step 1.5 MIT; gpt-oss Apache 2.0; Wan2.2 Apache 2.0.** Kararlar tam sürümün resmî ağırlık lisansından yeniden incelenecek.
- Dış raporun önerdiği bazı model eşleşmeleri: Qwen3 (genel sohbet), DeepSeek-R1 (muhakeme), gpt-oss (alternatif), Qwen-Image (görsel), Wan2.2 (video), ACE-Step (müzik), faster-whisper/Piper/Kokoro (ses), PostgreSQL/pgvector/BGE (RAG). Bunlar **ADAY**, otomatik seçilmiş üretim modelleri değildir.
- Dış rapor hiçbir model için güvenilir ve kurulum koşulları tam belirtilmiş 100K kullanıcı başına GPU/VRAM kapasite ölçümü vermedi. Bu alanlar araştırma kuyruğuna eklendi.
- Dış rapordaki kategori/teknoloji isimleri önceki kısa kayıtlarla örtüştüğünde kopya ekleme yapılmaz; yalnız doğrulanmış **delta** yazılır.
- Dış rapordaki 'A — kesin önerilen' sınıflaması teknik ve hukuki onay anlamında kabul edilmez; `ÖNERİLEN ADAY` olarak değerlendirilir.

## 9.6 Sonraki güncelleme kuralı
- Kullanıcı Perplexity'den **kategori bazlı Tur 1 veya Tur 2** sonucunu bu sohbete yapıştırdığında, mevcut GitHub Markdown dosyası önce okunur.
- Aynı model/checkpoint için kopya kayıt oluşturulmaz; yalnız yeni veriler ayrıntılı model kartına işlenir.
- Her iddia kaynağıyla, erişim tarihiyle ve iddia sahibinin araştırma turuyla etiketlenir. Doğrulanan ile doğrulanmayan ayrılır.
- Tek kategori bitmeden başka kategoriye geçilmez. İkinci tur, ilk turdaki boşluklara göre yeniden hazırlanır.
- Gerekiyorsa dosya sürümleme ve kısa değişiklik günlüğü tutulur; eski sürümler Git geçmişinde kalır.
