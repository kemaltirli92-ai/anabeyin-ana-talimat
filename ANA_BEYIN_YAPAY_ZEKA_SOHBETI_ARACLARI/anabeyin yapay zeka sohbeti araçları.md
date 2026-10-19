# ANA BEYİN — YAPAY ZEKÂ SOHBETİ ARAÇLARI
**Sürüm:** 1.5 — Kategori 02 Tur 2 ve bağımsız lisans kontrolleri eklendi  
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


---

# 10 — KATEGORİ 01: SOHBET / MUHAKEME / ÇOK DİLLİ LLM — TUR 1 BULGULARI
**Kaynak:** Kullanıcının paylaştığı `ANA BEYİN — KATEGORİ 01 / ARAŞTIRMA TURU 1` Perplexity metni (20.10.2026, 681 satır).  
**İnceleme statüsü:** ARAŞTIRMA AKTARIMI; kaynak metnindeki iddialar bağımsız doğrulanmadı. Bu bölüm mevcut kategori kayıtlarına **delta** ekler, daha önce listelenen Qwen3/DeepSeek/gpt-oss vb. adayları yeniden tanıtmaz. **Ticari kullanımı kesin onaylı model yoktur.**

## 10.1 Yeni aday kayıtları — benzersiz model/checkpoint
| Kimlik | Model/checkpoint | Geliştirici | Araştırmada bildirilen lisans | Önerilen rol | Resmî başlangıç | Lisans doğrulama durumu |
|---|---|---|---|---|---|---|
| LLM-GLM45-AIR | GLM-4.5-Air | Z.ai | MIT olarak bildirilmiş | MoE, araç çağırma ve 128K araştırma adayı | https://huggingface.co/zai-org/GLM-4.5-Air | DOĞRULANMADI |
| LLM-KIMI-K2 | Kimi K2 Instruct | Moonshot AI | Modified MIT, MAU/gelir koşulları iddiası | Büyük MoE/ajan modeli | https://huggingface.co/moonshotai/Kimi-K2-Instruct | DOĞRULANMADI |
| LLM-KIMI-K2-THINK | Kimi K2 Thinking | Moonshot AI | Modified MIT, koşullu | Uzun muhakeme, INT4 ve tool calling adayı | https://huggingface.co/moonshotai/Kimi-K2-Thinking | DOĞRULANMADI |
| LLM-MINIMAX-M1 | MiniMax-M1 | MiniMax | Apache 2.0 iddiası | Uzun bağlam muhakeme | Resmî checkpoint URL ÖLÇÜLMEDİ | DOĞRULANMADI |
| LLM-MINIMAX-M2 | MiniMax-M2 | MiniMax | Modified MIT ve atıf eşiği iddiası | MoE/ajan alternatifi | Resmî checkpoint URL ÖLÇÜLMEDİ | DOĞRULANMADI |
| LLM-LLAMA4-SCOUT | Llama 4 Scout | Meta | Meta Llama Community | Çok dilli deneysel alternatif | https://www.llama.com/ | KOŞULLAR DOĞRULANMADI |
| LLM-LLAMA4-MAV | Llama 4 Maverick | Meta | Meta Llama Community | Çok dilli deneysel alternatif | https://www.llama.com/ | KOŞULLAR DOĞRULANMADI |
| LLM-JAMBA | Jamba Large 1.7 | AI21 | Model bazlı | Hibrit SSM-Transformer uzun bağlam | RESMÎ CHECKPOINT BULUNACAK | DOĞRULANMADI |
| LLM-NEMOTRON | NVIDIA Nemotron ailesi | NVIDIA | Sürüm bazlı | Optimize GPU inference | https://huggingface.co/nvidia | CHECKPOINT BELİRSİZ |
| LLM-FALCON | Falcon ailesi | TII | Sürüm bazlı | Çok dilli yardımcı alternatif | https://huggingface.co/tiiuae | CHECKPOINT BELİRSİZ |
| LLM-INTERNLM | InternLM ailesi | Shanghai AI Lab | Sürüm bazlı | Alternatif | https://github.com/InternLM | CHECKPOINT BELİRSİZ |
| LLM-ERNIE | ERNIE açık ağırlıklı ailesi | Baidu | Sürüm bazlı | Alternatif | RESMÎ CHECKPOINT BULUNACAK | CHECKPOINT BELİRSİZ |
| LLM-COMMAND-A | Cohere Command A / Command R7B | Cohere | Non-commercial bildirimi | Ticari SaaS self-host için **bloklu aday** | Resmî LICENSE bulunacak | DOĞRULANMADI |
| LLM-AYA-EXPANSE | Aya Expanse 8B / 32B | Cohere For AI | CC BY-NC bildirimi | Ticari SaaS self-host için **bloklu aday** | Resmî LICENSE bulunacak | DOĞRULANMADI |

**Aile ile checkpoint ayrımı:** Nemotron, Falcon, InternLM ve ERNIE aileleri tek üretim modeli olarak tanımlanamaz; Tur 2'de tam checkpoint adı/sürümü bulunmadan donanım ve lisans kararı verilemez. **Kimi K2 Thinking**, Kimi K2'den ayrı sürümdür; tekrar değil, ayrı checkpoint olarak tutulur. **MiniMax M1/M2** ayrı nesillerdir.

## 10.2 Mevcut model kayıtlarına yeni *delta*
- **Qwen3-4B ve Qwen3-32B:** dış araştırma Apache 2.0, doğal 32.768 token / YaRN ile 131.072 token ve özel tool-calling parser notu bildirdi. Kontrol: https://huggingface.co/Qwen/Qwen3-4B ; https://huggingface.co/Qwen/Qwen3-32B . *Resmî kart yeniden doğrulanacak; YaRN uygulama kalitesi test edilecek.*
- **DeepSeek-R1 ve R1-Distill-Qwen-32B:** dış rapor model ağırlıklarının MIT ve distillation/ticari kullanım izni olduğunu bildirdi. https://huggingface.co/deepseek-ai/DeepSeek-R1 ; https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-32B . *Model bazlı doğrulanmalı.*
- **gpt-oss-20b / gpt-oss-120b:** dış araştırma Apache 2.0 ve ayrı kullanım politikası uygulandığını bildirdi. https://github.com/openai/gpt-oss . *Politika sürümü denetlenmeli.*
- **LiteLLM Proxy:** Araç mevcut genel envanterde zaten **adıyla kayıtlıdır**; ayrı ikinci kopya açılmadı. Dış araştırma router alias/fallback/retry/timeout/rate-limit kullanımlarını öne çıkarıyor. Proxy ölçeklenebilirliği, yüksek erişilebilirlik ve lisans doğrulaması gereklidir.

## 10.3 Yeni adayların teknik inceleme kartları — eksik ölçüm ve riskler
| Model | Nasıl çalışır / teknik rol | Ana Beyin dağıtımı adayı | GPU / SSD / RAM | Ana risk ve azaltma |
|---|---|---|---|---|
| GLM-4.5-Air | MoE, hibrit reasoning, araç çağrıları; uzun bağlam iddiası | vLLM/SGLang test konteyneri → model router | **ÖLÇÜLMEDİ**, tek 96GB çalışma **DOĞRULANMADI** | MoE dağıtım, KV-cache; benchmark ve quant gerekli |
| Kimi K2 Instruct | Büyük MoE, çok adımlı ajan ve araç çağrısı | SGLang/vLLM uyumu kontrol | **ÖLÇÜLMEDİ**, tek 96GB varsayılmayacak | Çoklu GPU, lisans eşiği ve yüksek GPU kira maliyeti |
| Kimi K2 Thinking | Thinking + dinamik araç çağrısı, araştırmada 256K ve native INT4 iddiası | Ayrı thinking endpoint, kredi/thinking bütçesi | **ÖLÇÜLMEDİ** | Çok uzun düşünme maliyeti, tool parser ve çoklu GPU |
| MiniMax M1 / M2 | MoE muhakeme ve agent adayı | Önce checkpoint/lisans/uyum doğrulama | **ÖLÇÜLMEDİ** | Lisans atıf koşulları, sürüm takibi |
| Llama 4 Scout / Maverick | MoE modelleri, farklı uzman sayısı | Ayrı lisans denetimli test | **ÖLÇÜLMEDİ** | Meta community lisansı ve GPU ihtiyacı |
| Jamba Large 1.7 | Transformer + SSM hibrit mimari iddiası | Model motoru desteği kontrol | **ÖLÇÜLMEDİ** | Resmî checkpoint lisansı ve altyapı uyumsuzluğu |
| Nemotron / Falcon / InternLM / ERNIE | Farklı mimarilere sahip **model aileleri** | Tam checkpoint seçildikten sonra | **ÖLÇÜLMEDİ** | Genelleştirilmiş aile iddiası, belirsiz lisans ve yetersiz Türkçe ölçümü |
| Cohere Command A/R7B, Aya Expanse | Çok dilli özel lisanslı açık ağırlık adayları | Self-host ticari SaaS için **karantinada** | **ÖLÇÜLMEDİ** | Non-commercial lisans olasılığı; hukuki belge olmadan asla müşteriye sunma |

**Ortak uygulanacak model kartı kuralları:** Model ağırlık GB, tokenizer/quant/cache GB, Linux kurulum komutları, BF16/FP8/INT4 VRAM, gerçek GPU ve tok/sn/TTFT, Türkçe test, tam ticari lisans **Tur 2'de ayrı resmî kaynak ve benchmarkla doldurulacak**. Bu bölümdeki adayların hiçbirinde bu şartların tamamı sağlanmış değil.

## 10.4 100.000 kullanıcı / GPU kapasite analizi — dış araştırma aktarımı
**100.000 kayıt = 100.000 aynı anda konuşma değildir.** Dış rapor şu **varsayımları** kullandı: ortalama **2.000 input + 800 output token**, tam cevap hedefi **20 saniye**, 5.000 veya 20.000 DAU; farklı anlık istek yoğunlukları. Bunlar gerçek trafik ölçümü değildir.

| Eşzamanlı aktif istek | 20 sn hedefi varsayımıyla RPS | 800 token/cevap varsayımıyla gereken aggregate output tok/s | Gerçek ölçülmüş GPU sayısı | GPU başına VRAM |
|---:|---:|---:|---|---|
| 100 | 5 | 4.000 | **ÖLÇÜLMEDİ** | **ÖLÇÜLMEDİ** |
| 500 | 25 | 20.000 | **ÖLÇÜLMEDİ** | **ÖLÇÜLMEDİ** |
| 1.000 | 50 | 40.000 | **ÖLÇÜLMEDİ** | **ÖLÇÜLMEDİ** |
| 5.000 | 250 | 200.000 | **ÖLÇÜLMEDİ** | **ÖLÇÜLMEDİ** |

**Uyarı:** İlk araştırmada geçen `1×96GB 100 isteğe yetebilir`, `2–4 GPU 500'e yeter` veya `4–8 GPU 1.000'e yeter` sayıları **benchmarka dayanmadığı için kabul edilmiş kapasite hedefi değildir**. Gereken tok/sn çıkışı, TTFT + toplam yanıt hedefi, KV-cache, batch, GPU bellek bant genişliği ve prefill ayrıca ölçülmelidir. **20 sn'de 800 token = akış başına 40 çıktı tok/sn** ortalamadır; ilk-token zamanını da içerdiği için salt sabit hız modeli iyimser olabilir.

**Dış raporun kıyas GPU'ları:** RTX PRO 6000 Blackwell Server 96GB, NVIDIA H200 141GB, B200 (tam varyant doğrulanmalı); GPU bellek miktarı, bant genişliği, interconnect ve işlem gücü ayrı değerlendirilmeli. Araştırmanın GPU teknik kıyas iddiaları resmî NVIDIA özellik sayfasından doğrulanacak.
- https://www.nvidia.com/en-us/data-center/rtx-pro-6000-blackwell-server-edition/
- https://www.nvidia.com/en-us/data-center/h200/

## 10.5 Yeni/önemli risk ve işletme ayrıntıları
| Risk | Hangi modeller | Koruma / kontrol |
|---|---|---|
| MoE GPU dağıtım başarısızlığı | GLM, Kimi, MiniMax, Llama4 | Tensor/expert/pipeline parallel benchmark, node bağlantısı, fallback |
| Ağırlıkların VRAM'e sığmaması / OOM | Büyük modellerin tamamı | Model + KV-cache + buffer rezervi; kuyruk, admission control |
| Uzun reasoning token maliyeti | Kimi Thinking, DeepSeek-R1 vb. | Maksimum reasoning token, kredi limitleri, görev durdurma |
| Non-commercial modeli yanlışlıkla müşteriye açma | Cohere açık checkpointleri ve diğerleri | LICENSE kanıtı ve manuel ONAY olmadan üretim router'ına kayıt yok |
| Yüzeysel Türkçe desteği | Tüm LLM | Türkçe doğal dil, argüman takibi, diyalekt, format, güvenlik benchmark'ı |
| Tenant veri sızıntısı | Tüm sistem | Tenant scope, izolasyon, audit, cross-user test |
| Hatalı/eskimiş lisans iddiası | Her güncellenen checkpoint | Checkpoint URL, lisans hash/kayıt, yayın öncesi tekrar doğrula |
| Kapasiteye göre yanlış GPU alımı | Tüm LLM | Gerçek RTX PRO 6000 / kiralık GPU throughput + maliyet bench |
| GPU fatura patlaması | Otomatik kiralama/API | GPU adedi ve saatlik harcama tavanı, alarm, stop-switch |

## 10.6 TUR 2 için kapatılması gereken açık işler (aynı konuyu yeniden anlatma)
1. **Gerçek 2026 checkpoint taraması:** StepFun Step, Liquid LFM, Avrupa/Japonya/Kore modelleri, yeni Qwen/DeepSeek/Kimi/GLM/MiniMax/Nemotron/OLMo/Granite **önceden kayıtlı ada kopya açmadan**.
2. **Lisans kontrolü:** MiniMax M1/M2, Jamba, Nemotron, Falcon, InternLM, ERNIE, Meta Llama ve Cohere checkpointlerinin **resmî LICENSE** metinleri.
3. **Boyut/VRAM:** model ağırlıkları, quantization, 8K/32K/128K/256K KV-cache; 96GB kart/çoklu GPU testi.
4. **Throughput:** RTX PRO 6000 96GB, H200 ve B200 ile aynı model/quant/bağlam testlerini kaynaklı kıyasla.
5. **Fiyat:** güncel GPU kira, kurulum depolaması ve ücretli token API maliyetleri; ücretsiz kota ve SaaS koşulları.
6. **Güvenlik:** akış bazlı token sınırı, model güncelleme güvenliği, giriş filtreleri, tenant izolasyonu, prompt injection, DDoS.
7. **Kaynak kalitesi:** ilk raporda bağlanan her iddia için **doğrudan resmî URL + sürüm + yayın tarihi**; üçüncü taraf model listeleri lisans kanıtı sayılmaz.

**Kategori 01 Tur 1 durumu: `AKTARILDI / DOĞRULAMA BEKLİYOR`. Tur 2 tamamlanmadan ve model bazında lisans+VRAM+SSD+benchmark alanları dolmadan hiçbir model ONAYLI sayılmayacaktır.**


---

# 11 — KATEGORİ 01: TUR 2 SONUÇLARI — YENİ ARAŞTIRMA FARKLARI
**Kaynak:** Kullanıcının paylaştığı Perplexity `Kategori 01 / Derin Araştırma Turu 2` metni, 20.10.2026.  
**Durum:** DIŞ ARAŞTIRMA AKTARILDI; model kartı, checkpoint, ticari lisans ve benchmark **bağımsız teyit bekliyor**. Eski Kategori 01 / Tur 1 kayıtları korunmuştur.

## 11.1 Tur 2'de bildirilen YENİ modeller / checkpointler
| Kimlik | Model | Araştırmada bildirilen açıklama | Ticari lisans bildirimi | Resmî aday kaynak | Doğrulama |
|---|---|---|---|---|---|
| LLM-APERTUS15-8B | Apertus 1.5 8B | İsviçre; 262K bağlam, çok dilli ve multimodal iddiası | Apache 2.0 + AUP | https://huggingface.co/swiss-ai/Apertus-v1.5-8B | DOĞRULANMADI |
| LLM-APERTUS15-70B | Apertus 1.5 70B | Büyük model; raporda 4-GPU vLLM örneği | Apache 2.0 + AUP | https://huggingface.co/swiss-ai/Apertus-v1.5-70B | DOĞRULANMADI |
| LLM-LFM25-26B | Liquid LFM2.5-2.6B | Küçük dense model adayı | Gelir eşikli LFM Open License iddiası | https://docs.liquid.ai/lfm/help/model-license | KOŞULLU / DOĞRULANMADI |
| LLM-LFM25-8B-A1B | Liquid LFM2.5-8B-A1B | MoE ekonomik inference adayı | LFM Open License iddiası | https://www.liquid.ai/lfm-license | KOŞULLU / DOĞRULANMADI |
| LLM-LFM25-24B-A2B | Liquid LFM2.5-24B-A2B | 24B toplam, 2B aktif MoE iddiası | LFM Open License iddiası | https://www.liquid.ai/lfm-license | KOŞULLU / DOĞRULANMADI |
| LLM-STEP3 | StepFun Step-3 | Metin/çok modlu aile | Apache 2.0 bildirimi | https://huggingface.co/stepfun-ai | CHECKPOINT LİSANSI BELİRSİZ |
| LLM-STEP35 | Step-3.5-Flash | Hızlı/ekonomik model adayı | Apache 2.0 bildirimi | https://huggingface.co/stepfun-ai | CHECKPOINT BELİRSİZ |
| LLM-STEP37 | Step-3.7-Flash-NVFP4 | NVFP4 optimize sürüm iddiası | Apache 2.0 bildirimi | https://huggingface.co/stepfun-ai | CHECKPOINT BELİRSİZ |
| LLM-STEP3VL | Step3-VL-10B | Çok modlu aile: Kategori 05 için de işaretlendi | Apache 2.0 bildirimi | https://huggingface.co/stepfun-ai | CHECKPOINT BELİRSİZ |
| LLM-GRANITE42 | IBM Granite 4.2 | Granite ailesinin yeni checkpoint iddiası | Apache 2.0 bildirimi | Resmî IBM checkpoint bulunacak | DOĞRULANMADI |
| LLM-NEMO35 | Nemotron 3.5 Lightning | NVIDIA optimize model iddiası | OpenMDW-1.1 bildirimi | https://huggingface.co/nvidia | DOĞRULANMADI |
| LLM-EUROLLM9 | EuroLLM-9B | Avrupa çok dilli model iddiası | Apache 2.0 bildirimi | Resmî checkpoint bulunacak | DOĞRULANMADI |
| LLM-EUROLLM22 | EuroLLM-22B | Avrupa çok dilli model iddiası | Apache 2.0 bildirimi | Resmî checkpoint bulunacak | DOĞRULANMADI |
| LLM-TEUKEN04 | Teuken-7B v0.4 | Almanya/AB dil modeli | Apache 2.0 bildirimi | Resmî model kartı bulunacak | DOĞRULANMADI |
| LLM-TEUKEN06 | Teuken-7B v0.6 | Ayrı sürüm | CC BY-NC bildirimi | Resmî model kartı bulunacak | SELF-HOST TİCARİ KULLANIM BLOKLU |
| LLM-PORO-VIKING | Poro/Viking modelleri | Nordik dil modelleri; olası Llama türevi | Üst ağırlık lisansı riski | Resmî checkpoint bulunacak | DOĞRULANMADI |
| LLM-CROISSANT | CroissantLLM 1.3B | Fransızca/İngilizce küçük yardımcı model | MIT bildirimi | Resmî checkpoint bulunacak | DOĞRULANMADI |

**Tekrar önleme:** İlk turdaki genel `Nemotron` ve `Granite` aile kayıtları silinmedi; Tur 2'deki spesifik sürümler bunların alt kayıtları olarak düşünülür. `Apertus`, `LFM2.5` ve `StepFun` Kategori 01 Tur 1'de kayıtlı değildi. Çok modlu Step3-VL-10B ayrıca Kategori 05'e **referans** olarak aktarılır, ikinci kopya teknik dosya açılmaz.

## 11.2 Nasıl çalışırlar ve Ana Beyin'e nasıl bağlanırlar?
- **Apertus 1.5 8B/70B:** Rapora göre transformer/dense, çok dilli ve uzun bağlam. LLM girişini tokenizer → model inference → streaming token yanıtı yoluyla işler. Araştırmada 70B için `vllm serve swiss-ai/Apertus-v1.5-70B --chat-template-content-format string --tensor-parallel-size 4 --gpu-memory-utilization 0.8 --max-model-len 262144 --enable-auto-tool-choice --tool-call-parser apertus` komutu önerilmiş; **kurulmadan önce model kartı/komut uyumu doğrulanmalı**, 262K bağlam üretimde varsayılan olmamalı.
- **Liquid LFM2.5:** Raporda hibrit ve MoE mimariler, düşük gecikme iddiaları var; checkpoint bazlı motor/quant doğrulaması gerektirir. Ayrı küçük-model inference endpoint'i → Ana Beyin router'ın `low-cost` seçeneği → yük testi.
- **StepFun Step:** Bazı checkpointler text, bazıları vision+text; özellikleri ayrılmalı. Model kartı ve OpenAI uyumlu API motoru doğrulanmadan endpoint oluşturulmaz.
- **Granite 4.2, Nemotron 3.5 Lightning:** Önce resmî model adı/README/LICENSE netleştirilir, sonra inference uyumluluğu ve Türkçe benchmark. Nvidia optimizasyonunu tek GPU'da garantili performans sayma.
- **EuroLLM, Teuken, Poro/Viking, CroissantLLM:** Dil özelleşmesi nedeniyle kullanıcı dili tespit edilerek çağrılabilir; **Türkçe üretim motoru** sayılmaları insan değerlendirmesi şartına bağlı.
- **Model standardı:** Model router → sürüm/checkpoint kilidi → izinli inference backend (vLLM / SGLang / llama.cpp) → tenant izole sohbet oturumu → cevap streaming. Tool calls, JSON şeması ve Türkçe biçim tutarlılığı ayrı test edilir.

## 11.3 Donanım: model bazında doğrulanması gerekenler
| Model grubu | İndirilen GB | Kurulu SSD | CPU RAM | BF16/FP8/INT4 VRAM | 96GB GPU | Token/s, TTFT |
|---|---|---|---|---|---|---|
| Apertus 8B/70B | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |
| LFM2.5 2.6B/8B/24B | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |
| StepFun checkpointleri | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |
| Granite/Nemotron | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |
| EuroLLM/Teuken/Poro/Croissant | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |

Yalnız parametre sayısından kaba teorik ağırlık alt sınırı çıkarılabilir; **model dosyası + working set + KV cache** ile aynı değildir. BF16 yaklaşık parametre başına 2 byte; INT4 yaklaşık 0,5 byte + ek ölçek/metadata yükü, fakat gerçek quant dosyası ve motor dağıtımı kontrol edilmeden donanım kesinleştirilemez. Özellikle 70B BF16 ağırlıklar çıplak olarak yaklaşık 140 GB olduğundan tek 96GB karta tam hassasiyetli ağırlık sığmaz; FP8/INT4 + KV cache durumu ayrıca ölçülecek.

## 11.4 100.000 kullanıcı kapasitesine TUR 2 katkısı
Tur 2 **yeni ölçülmüş kapasite benchmarkı sunmadı**; aşağıdaki tablolar dış araştırmadaki `2.000 input + 800 output token / 20 sn hedef` varsayımından türetilmiştir.

| Eşzamanlı inference isteği | Teorik istek/s | Gerekli toplam output token/s | Ölçülmüş GPU sayısı | Ölçülmüş VRAM |
|---:|---:|---:|---|---|
| 100 | 5 | 4.000 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |
| 500 | 25 | 20.000 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |
| 1.000 | 50 | 40.000 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |
| 5.000 | 250 | 200.000 | ÖLÇÜLMEDİ | ÖLÇÜLMEDİ |

**96GB VRAM**, eşzamanlı kişi sayısı anlamına gelmez. Ortak throughput, prefill, batching, uzun bağlam KV-cache, gecikme, CPU-RAM-SSD-ağ kısıtları test edilmelidir. Tur 2'nin “100 eşzamanlıya tek GPU başlangıç olabilir” ifadesi de **ölçülmüş garanti değildir**.

## 11.5 Tur 2'den yeni ticari lisans ve operasyon riskleri
| Konu | Dış raporun iddiası | Ana Beyin kontrolü |
|---|---|---|
| Liquid LFM lisansı | Yıllık 10 milyon USD eşiği | Resmî koşul ve lisans metni; gelir izleme; hukuki değerlendirme |
| Teuken-7B v0.6 | CC BY-NC 4.0 | Bu checkpoint self-host ticari SaaS yoluna alınmaz |
| Poro2/Llama türevi | Üst model Meta koşulları devam edebilir | Üst model lisansı ve türev lisansını birleştirerek doğrula |
| Apertus AUP | Apache olsa da ayrı AUP/erişim koşulu bildirimi | Model kartı / kullanım politikası sakla |
| Nemotron OpenMDW | Ticari hak henüz net değil | Üretim açılışından önce resmî LICENSE incelemesi |
| Uzun bağlam (262K) | KV cache yüksek | Varsayılan context limit, ayrı uzun bağlam GPU havuzu |
| Hibrit modeller | KV-cache/attention uygulanışı değişir | Motor sürüm matrisi, test ve fallback |
| Ücretsiz API | Ücretsiz kota değişken | Ücretsiz API'yi ticari SLA kabul etme; sağlama koşulu doğrula |

## 11.6 Kategori 01 kapanış ve açık işler
- **İki araştırma turu kayda geçirildi.** Mevcut isimler tekrar edilmeden yeni checkpointler ve lisans/altyapı ayrıntıları eklendi.
- **Henüz eksik:** gerçek sürüm bazlı VRAM, RAM ve SSD boyutu; RTX PRO 6000 Blackwell/H200/B200 tok/s, TTFT ve uzun bağlam testleri; Türkçe benchmark, karşılaştırmalı kalite, resmî lisans hash ve API maliyeti. Bunlar sonraki ayrı deney/denetim evresinde tamamlanacak.
- **Karar:** Kategori 01 `TUR 1 + TUR 2 TAMAMLANDI / TEKNİK VE HUKUKİ DOĞRULAMA AÇIK`. Eksik verileri kesinmiş gibi üretime kabul etme.
- **Sıradaki araştırma:** Kategori 02 / Tur 1 — kodlama modelleri, yazılım ajanları, web/mobil/oyun ve izolasyonlu test araçları. Aynı iki tur + yalnız yeni veri standardı uygulanacak.


---

# 12 — KATEGORİ 02: KODLAMA, YAZILIM AJANLARI, WEB/MOBİL/OYUN — TUR 1 KISMİ AKTARIM
**Tarih:** 20.10.2026  
**Durum:** **TUR 1'DEN ALINAN SON BÖLÜM / KISMİ METİN**. Kullanıcının gönderdiği Perplexity sonuç parçası yalnız resmî bağlantılar ve ikinci tur eksikleri içeriyor; tam Tur 1 raporu bu aşamada sağlanmadığından rapordaki bütün bulgular aktarılmış sayılmaz. Aşağıdaki lisans ve performans ifadeleri bağımsız doğrulanmadıkça `DOĞRULANMADI` statüsünde kalır.

## 12.1 Yeni veya mevcut araçlara işlenecek farklar
| Araç | Kullanıcı tarafından aktarılan kaynak | Nasıl çalışır / ne için? | Ticari lisans statüsü | Donanım / 100K kullanıcı | Ayrıntılı teknik kayıt durumu |
|---|---|---|---|---|---|
| OpenHands (MEVCUT) | https://github.com/OpenHands/OpenHands | İzole ortamda repo tarama, komut çalıştırma, dosya düzenleme ve test için kod ajanı adayı; OpenHands'un farklı modülleri ve sürümleri ayrı kontrol edilmeli | Raporda MIT; doğrudan resmi LICENSE teyidi gerekli | LLM serving ayrı, sandbox CPU/RAM/SSD **ÖLÇÜLMEDİ** | MEVCUT KAYDA EK ARAŞTIRMA |
| OpenHands SDK (OpenHands alt bileşeni) | https://docs.openhands.dev/sdk | Modelden bağımsız geliştirici SDK, Python/REST ile kod ajanı bağlama adayı | SDK repo/dağıtım lisansı DOĞRULANMADI | **ÖLÇÜLMEDİ** | OPENHANDS ALT KAYDI |
| OpenHands Cloud (farklı ürün) | https://github.com/OpenHands/openhands-cloud | Hosted/Cloud ürün; yerel açık kaynak çekirdeğinden ayrıştırılacak | Dış rapor PolyForm Free Trial ve 30 gün sınırı söylüyor; **doğrulanana kadar ücretsiz açık kaynak sayma** | **ÖLÇÜLMEDİ** | TİCARİ KISIT KONTROLÜ |
| SWE-agent (YENİ) | https://github.com/SWE-agent/SWE-agent | Repo issue → komut/patch → test → PR adayı iş akışı; gerçek ajan/harness sürümünü sabitle | Dış rapor MIT; resmî LICENSE tekrar kontrol | LLM VRAM ve sandbox kaynakları ayrı; **ÖLÇÜLMEDİ** | TEKNİK KART AÇILACAK |
| Screenshot-to-Code (YENİ) | https://github.com/abi/screenshot-to-code | Görselden HTML/Tailwind/React/Vue benzeri frontend kod taslağı; çıktı gerçek build, responsive ve a11y testinden geçmeli | Dış rapor MIT; resmî LICENSE teyidi gerekli | Kullanılan VLM/API'ye bağlı; **ÖLÇÜLMEDİ** | TEKNİK KART AÇILACAK |
| Design2Code (YENİ ARAŞTIRMA ADAYI) | https://dev.co/ai/coding-agents/design2code | Görselden koda teknoloji/araç adı; belirtilen URL ürün/tanıtım sayfası olabilir | **Resmî kod deposu ve LICENSE bulunmadan MIT kabul edilmez** | **ÖLÇÜLMEDİ** | ÖNCE KAYNAK KİMLİĞİ DOĞRULA |
| Qwen3-Coder-30B-A3B-Instruct (MEVCUT AİLEYE checkpoint) | Dış raporda üçüncü taraf: https://fast.io/resources/top-open-source-llms-agents/ | MoE kod/ajan görevleri için model adayı, resmî checkpoint araştırılacak | Resmî model kartı/lisans DOĞRULANMADI | RTX PRO 6000 96GB tok/s, TTFT, KV cache, gerçek SSD/VRAM **ÖLÇÜLMEDİ** | CHECKPOINT ALT KAYDI |
| Qwen3-Coder-Next (MEVCUT AİLEYE checkpoint adayı) | Tam resmî model kartı henüz yok | Kod ajanları performans kıyası | DOĞRULANMADI | **ÖLÇÜLMEDİ** | TAM CHECKPOINT/KAYNAK BUL |
| DeepSeek-V3.2, GLM-4.7, Devstral (MEVCUT MODEL AİLELERİNDEN ayrı kod sürümü adayları) | Model sürümlerinin resmî sayfaları Tur 2'de bulunacak | Kod/ajan kıyası, model+ajan+harness ayrımı | DOĞRULANMADI | Gerçek GPU/SSD/throughput **ÖLÇÜLMEDİ** | ÜÇ AYRI CHECKPOINT KARTI GEREK |

**Tekrar önleme:** OpenHands, Qwen-Coder, DeepSeek, GLM gibi aileleri mevcut kayıtları kopyalayıp yeniden oluşturma. SDK ve Cloud'u aynı ticari lisanslı ürün gibi değerlendirme. 3. parti kıyas yazısı ürünün LICENSE veya benchmark kanıtı değildir.

## 12.2 Nasıl çalışır? Müşteriye sunulacak iş akışı
```
Müşteri sohbeti (repo / screenshot / istek)
 -> yetkilendirme ve proje alanı
 -> coding model router (self-host GPU / kiralık GPU / izinli premium API)
 -> izolasyonlu agent sandbox (kısa ömürlü konteyner / VM)
 -> repo clone ve branch açma (kısıtlı token)
 -> plan / patch / test / build / lint / security scan
 -> gerçek tarayıcı önizleme ve gerekiyorsa screenshot karşılaştırma
 -> kod değişiklikleri ve log özeti -> müşteri onayı
 -> PR / export / izinli deployment
```
- **Ajan programının kendi GPU ihtiyacı ile konuştuğu LLM'nin GPU ihtiyacı farklıdır.**
- Android Gradle derlemesi, Flutter/Android emülatörü, Godot export ve tarayıcı testi çoğu zaman CPU/RAM/SSD ağırlıklıdır. iOS yerel derlemesi/imzalama için Apple/macOS şartları ayrıca incelenir.
- Paralel ajanlar GPU'da yanıt beklemedikleri sırada CPU build, test veya kullanıcı onayı bekleyebilir. GPU sayısı ajan sayısına eşitlenmez.

## 12.3 100.000 kayıtlı kullanıcı — ölçüm planı
- Yük senaryoları: **günde 1.000 / 10.000 kod görevi; eşzamanlı 100 / 500 / 1.000 / 5.000 ajan**.
- Gerekli alanlar: ajan başına istek/LLM token, model token/s, LLM çağrı eşzamanlılığı, GPU adedi ve GPU başına VRAM; sandbox başına CPU/RAM, derleme süresi, SSD working set, cache, çıkış bant genişliği, tam iş birim maliyeti.
- Bu araştırma kesitinde gerçek ölçülmüş CPU-saniye, SSD, VRAM, token/s, görev başına maliyet veya model+ajan benchmark rakamı **YOK**; tümü **ÖLÇÜLMEDİ**. Doğrulanmayan `X GPU 100K kullanıcıya yeter` ifadesi kurulmaz.

## 12.4 Perplexity Kategori 02 / Tur 2 eksik araştırma listesi
1. RTX PRO 6000 Blackwell 96GB üzerinde **Qwen3-Coder-30B-A3B**, **Qwen3-Coder-Next**, **DeepSeek-V3.2**, **GLM-4.7**, **Devstral**: quantization, VRAM, SSD, tok/s, p95 TTFT, concurrency.
2. Gerçek **SWE-bench Verified**: model + agent + harness + benchmark tarihi + görev sayısı; reklam skoru ve bilimsel kıyas ayrımı.
3. **Sandbox**: Python, Node, Flutter, Android, Godot ve Docker build başına CPU-saniye, RAM, IOPS, SSD, süre, izolasyon maliyeti.
4. **Yeni ajanlar**: Agentless, AutoCodeRover, RepoAgent, GPT Engineer, Sweep benzerleri ve çok ajan frameworkleri; bakım/lisans testi.
5. **Screenshot-to-Code ve Design2Code**: resmî kaynak, gerçek frontend build, responsive, WCAG erişilebilirlik, pixel-fidelity ve tasarım sınırı.
6. **Mobil**: Android build cache, macOS/iOS zorunlulukları, emulator farm, imzalama, CI lisansı.
7. **Oyun**: Godot MCP, Phaser ajanları, Unity lisans/fiyat ayrımı, 3D asset üretimi.
8. **Saldırı senaryoları**: prompt injection, dependency saldırısı, sandbox escape, GitHub token kötüye kullanımı.
9. **Ekonomi**: token + GPU-saniye + sandbox CPU-saniye + SSD + depolama + internet birim maliyeti.
10. Her teknoloji için iki ayrı kayıt: **gerçek açık kaynak çekirdek** ve varsa **ücretli Cloud/SaaS paketi**.

## 12.5 Yayın öncesi risk kuralları
- Model ve ajan için **AYRI ticari SaaS lisans kontrolü**; ayrıca cloud ürünü ile SDK çekirdeği aynı lisans değildir.
- Kullanıcı repo veya .env sırları üretim ajanına verilmez; secret masking, kısa ömürlü token, allowlist, ağ izolasyonu.
- Ajan sınırsız görev, token, GPU veya compute harcayamaz; hard budget/timeout, dead-letter queue ve insan onaylı deploy.
- Kod ajanı root yetkisiyle uygulama/DB sunucusunda çalışmaz; ephemeral sandbox/VM, sınırlandırılmış ağ, imzalı çıktı.
- SWE-bench sonuçları gerçek ürünün tam site üretme güvenilirliğini kanıtlamaz; kullanıcıya sürekli başarı garantisi verilmez.

**Kategori 02 Tur 1:** `KISMİ AKTARIM / ikinci tur araştırması hazır`. Tam ilk rapor sağlanırsa bu kısım eksik kategorilerle genişletilecektir; **kategori kapanmış sayılmaz**.


---

# 13 — KATEGORİ 02: KODLAMA / WEB / MOBİL / OYUN — TUR 2 BULGULARI

**Tarih:** 20.10.2026  
**Kaynak:** Kullanıcının paylaştığı *ANA BEYİN — KATEGORİ 02 / DERİN ARAŞTIRMA TURU 2* (646 satır).  
**Araştırma durumu:** Kategori 02 için 2. tur teslim alındı; 1. turun yalnız son parçası gelmiş olduğundan ilk turdaki tüm bulguların alındığı iddia edilmez. Yeni farklar kaydedildi; kopya teknoloji kayıtları oluşturulmadı.  
**Güven düzeyi:** Bazı yazılım lisansları doğrudan resmî depolardan çapraz denetlendi. Geri kalan teknik değerler ve maliyetler kaynak rapor iddiasıdır; gerçek test yapılmadı.

## 13.1 Çok önemli: resmî kaynakla saptanan lisans/ürün düzeltmeleri

| Teknoloji | Perplexity iddiası | Bağımsız kontrol / Ana Beyin kararı |
|---|---|---|
| **AutoCodeRover** | AGPL-3.0 (ticari olmayan) + ticari çift lisans | **ÇELİŞİYOR.** 20.10.2026 tarihinde doğrudan ana depo \`AutoCodeRoverSG/auto-code-rover/blob/main/LICENSE\` incelendiğinde **SONAR Source-Available License v1.0** metni gösteriyor; bu AGPL değildir, hatta SonarQube ile ilgili çok özel rekabet/AI kısıtları içerir. Fork veya başka depodaki AGPL lisansından ana depoya sonuç taşınamaz. **TİCARİ KULLANIMA KAPALI / SAĞLAYICIDAN YAZILI AÇIKLAMA GEREKLİ.** Kanıt: https://github.com/AutoCodeRoverSG/auto-code-rover/blob/main/LICENSE . Tarihi ve commit SHA ile lisans arşivlenmeli. |
| **OpenHands çekirdeği** | MIT | **DOĞRULANDI:** https://github.com/OpenHands/OpenHands/blob/main/LICENSE — MIT; korunan telif/izin bildirimi gerekir. Çekirdeğin kullanımı LLM maliyetini karşılamaz. |
| **OpenHands Cloud** | PolyForm Free Trial, 30 gün/yıl | **DOĞRULANDI:** https://github.com/OpenHands/OpenHands-Cloud/blob/main/README.md açık kaynak olmadığını ve takvim yılı başına 30 günlük ücretsiz lisans dönemini bildiriyor; ticari Cloud paketini MIT çekirdeğiyle karıştırma. |
| **Agentless** | MIT | **DOĞRULANDI:** https://github.com/OpenAutoCoder/Agentless/blob/main/LICENSE . Resmî README üç aşamalı \`localization → repair → patch validation\` akışı ve Claude 3.5 Sonnet + Agentless benchmark referansı bildiriyor: https://github.com/OpenAutoCoder/Agentless . |
| **RepoAgent** | Apache-2.0 | **DOĞRULANDI:** https://github.com/OpenBMB/RepoAgent/blob/main/LICENSE . Çok dilliliği ve yeni repo boyutunda ölçeği ayrıca test edilecek. |
| **GPT Engineer** | MIT + arşiv | **DOĞRULANDI:** https://github.com/AntonOsika/gpt-engineer — ana depo **22.04.2026'da arşivlenmiş**; MIT lisansı bulunsa bile üretimde aktif bakım motoru olarak seçilmez. |
| **Godot MCP Full Control** | MIT, 157 araç | **DOĞRULANDI:** https://github.com/tugcantopaloglu/godot-mcp ve https://github.com/tugcantopaloglu/godot-mcp/blob/main/LICENSE ; Node.js >=18, Godot >=4.4, C#/.NET opsiyonel, runtime TCP 127.0.0.1:9090; aşırı araç yetkileri ayrıştırılmalı. |

### 13.1.1 Lisans kanıt ve sürüm saklama standardı
Lisans kayıtları GitHub deposu **tam owner/repo**, commit SHA, alt bileşen yolu, tarih, LICENSE metni, model checkpoint URL'si ve SaaS senaryosu ile saklanacaktır. İlgili depo/lisans çatışması çözülmeden \`ONAYLI\` verilmez. Özellikle **AutoCodeRover** için Perplexity iddiasını doğrudan kabul etmeyip çelişki kaydı tutmak zorunludur.

## 13.2 Yeni kod ajanı ve yardımcı teknoloji kartları

### AGENTLESS — yazılım hatasını denetlenebilir sabit akışla düzeltme
- **Resmî depo/lisans:** https://github.com/OpenAutoCoder/Agentless ; MIT.
- **Kullanıcıya yetenek:** Projedeki bir hatayı tespit etme, ilgili dosya/fonksiyonu daraltma, birden fazla patch üretme, mevcut regresyon ve yeni hata yeniden üretme testleriyle yama seçme.
- **Nasıl çalışır:** (1) Ağaç/tabanlı hiyerarşik arama ile hatalı yer bulunur; (2) Diff biçiminde aday yamalar çıkarılır; (3) test ve yeniden üretme sonuçlarıyla adaylar sıralanır. Genel sınırsız otonom ürün üreticisi değildir.
- **Entegrasyon:** Ana Beyin coding task router → müşteri repo snapshot → izole Python kod sandbox → LLM adapter → test runner → diff ve kanıt → müşteri onayı → PR. Agentless ile LLM farklı servislerdir; arka plan modelinin ticari hakkı ayrıca incelenir.
- **Kurulum:** GitHub README Python/conda ortamını açıklar; görev başına izole Python image oluşturulması uygun. Gerçek kurulum komutları repo sürümüne göre sabitlenecek.
- **Donanım:** Ajan CPU/RAM/SSD **ÖLÇÜLMEDİ**; yerel LLM'nin VRAM'i checkpoint + context + batch'e bağlı; gerçek GPU başına iş sayısı **ÖLÇÜLMEDİ**.
- **Benchmark:** Resmî README, Claude 3.5 Sonnet ile **2 Aralık 2024** duyurusunda SWE-bench Lite %40,7 ve Verified %50,8 bildiriyor. **Bu sonuç, kendi Qwen modelimizle aynı başarıyı garanti etmez**. Model, harness, örnek sayısı ve tekrar deneme konfigürasyonu arşivlenmeli.
- **Riskler:** Hatalı lokalizasyon, test yüzeyselliği, eksik kapsam, uzun repo, bağımlılık uyumsuzluğu. Çözüm: test eşikleri, kullanıcı onayı, değişiklik sınırı, temiz sandbox, bağımsız regresyon testi.

### AUTOCODEROVER — lisans çelişkisi yüzünden bloke
- **Resmî ana depo:** https://github.com/AutoCodeRoverSG/auto-code-rover
- **Nasıl çalışır:** Kod yapısını/AST'yi kullanarak issue ilişkili sınıf/fonksiyonları bulur, LLM ile yama önerir, uygun testleri kullanabilir.
- **Bağımsız lisans kontrolü:** Ana LICENSE dosyası **SONAR Source-Available License v1.0** metni gösteriyor; dış raporda AGPL/ticari çift lisans yazıyor. GitHub'da **başka bir owner/fork lisansı ana projenin yerine kullanılamaz**.
- **Karar:** \`TİCARİ KULLANIM BLOKLU\`. Üretim SaaS'ında yükleme/yayınlama yok. Resmî geliştiriciden imzalı lisans açıklaması ve tam commit-denetimi şart.
- **Benchmark (sağlayıcı raporu):** SWE-bench Lite %37,3; Verified %46,2. Sürüm ve veri kümesi bağımsız ölçümle doğrulanmalı.
- **Donanım:** Program CPU/RAM/SSD; entegre LLM VRAM/token ve 100K trafik **ÖLÇÜLMEDİ**.

### REPOAGENT — repo haritası ve dokümantasyon
- **Resmî depo:** https://github.com/OpenBMB/RepoAgent ; Apache-2.0 LICENSE kontrol edildi.
- **Çalışma:** Python AST ile kod objelerini (modül, fonksiyon, sınıf, çağrı ilişkileri) çıkarır; modelle her parçanın işlevini anlatan dokümantasyon oluşturur; dokümanı kodla eşleştirir.
- **Kullanım:** Büyük yazılım görevinden önce müşteri reposunun mimarisini ve API dokümanını çıkartma. Derleme/test veya tam yazılım ajanı olarak vaat edilmez.
- **Entegrasyon:** İzinli repo snapshot → repo index worker → LLM özetleri → kullanıcı proje hafızası/RAG ve arama indeksi.
- **Kaynak:** AST taraması CPU, doküman oluşturma modelin GPU/API masrafı; dosya başına indeks GB ve 100/1K/10K dosya ölçümü **ÖLÇÜLMEDİ**.
- **Risk:** Python ağırlığı, bozuk AST, üçüncü taraf telifli kod, özel repo gizliliği. Kodun kendisini model sağlayıcısına izinsiz gönderme.

### GPT ENGINEER — arşivli tarihi yardımcı kaynak
- **Depo:** https://github.com/AntonOsika/gpt-engineer ; MIT, **22.04.2026 arşiv** (resmî depo).
- **Ne yapar:** İstekten proje iskeleti/kod üretimi, eski projeyi yeni prompt ile iyileştirme. Ana üretim ajanı olmayacak; yalnız prototip fikirleri incelenebilir.
- **Risk:** Güvenlik yamaları ve model/API uyumluluğu güncelliği; aktif bakım yerine OpenHands/SWE-agent/Aider gibi seçeneklere öncelik.

### GODOT MCP ÜÇLÜSÜ — alternatifler, gereksiz kopya kurulum yok
| Teknoloji | Kaynak | Görev | SaaS kontrolü |
|---|---|---|---|
| Open Godot MCP | https://godotengine.org/asset-library/asset/5360 | Godot sahne/script/editor erişimi, deneysel entegrasyon | Raporda MIT; repo LICENSE ve sürüm uyumu yeniden teyit |
| Godot MCP Toolkit | https://github.com/NPGameDev/godot-mcp-toolkit | Godot MCP köprüsü alternatif | Raporda MIT; model, plugin ve Godot sürümü ayrı test |
| Godot MCP — Full Control | https://github.com/tugcantopaloglu/godot-mcp | 157 araç, Godot 4.x, GDScript + C#/.NET, debug/scene/runtime | **MIT doğrulandı**; riskli run/eval araçlarına dar yetki |

**Godot MCP Full Control güvenlik ayrıntısı:** Depo README Node.js >=18, Godot >=4.4; oyun çalışırken TCP autoload 127.0.0.1:9090 gösteriyor. MCP istemcisi dosya yolları ve script yürütme istekleri için scoped workspace, deny-by-default ağ, tool allowlist, timeout, izlenebilir log kullanılmalı. \`GODOT_MCP_ALLOWED_DIRS\` gibi path sınırları yapılandırılmalı; localhost dinleme tek başına yeterli güvenlik sınırı değil.

### FLUTTER AI — ajan değil, örnek/enstrümantasyon deposu
- https://github.com/flutter/ai
- Flutter AI uygulama örnekleri/SDK entegrasyon referansı; tek başına doğal dilde tam mobil uygulama üreticisi diye sunulmaz.
- Android build, iOS code signing ve mağaza yayını ayrı işçiler/kimlik bilgileridir. SDK ve modele ait lisans ayrı.

## 13.3 Mevcut kod modeli kayıtlarına TUR 2 ek farklar

| Checkpoint | Raporun iddiası | Doğrulama / kapasite |
|---|---|---|
| Qwen3-Coder-Next | Yaklaşık 79,7B toplam / 3B aktif, 262K context, MLX 4-bit ~44,8 GB | **Resmî checkpoint LICENSE, sürüm ve sayılar DOĞRULANMADI**; MLX indirme boyutu **NVIDIA VRAM değildir** |
| Qwen3-Coder-30B-A3B | Kod ajanı birincil adayı | RTX PRO 6000 96GB VRAM, tok/sn, TTFT, paralel görev **ÖLÇÜLMEDİ** |
| DeepSeek-V3.2 | Rapor 671B toplam / 37B aktif, MIT ve 128K context diyor | Tam model ağırlığı, quantization ve çoklu GPU **DOĞRULANMADI/ÖLÇÜLMEDİ**. Tek 96GB tam BF16 dağıtım varsayma |
| GLM-4.7 | Raporda MIT | Resmî tekil checkpoint LICENSE ve Türkçe/kod benchmark **DOĞRULANMADI** |
| Devstral | Kod modeli adayı | Tam sürüm, model lisansı, 96GB kart perf. **ÖLÇÜLMEDİ** |
| Kimi K2 Code / K2.7 Code | Raporda model adları geçiyor | **Tam model checkpoint ve resmî yayın kanıtı gerekli**; isimsiz aileden üretim modeli doğmaz |

**Karar:** Bir tek modelin en güçlü olması garanti değil. Farklı iş türlerinde küçük hızlı, geniş repo/context, reasoning ve premium fallback ayrı kapasiteler gerektirir. Model+ajan+test ortamı birlikte benchmark edilir.

## 13.4 Müşteri ürün yetenekleri: web, mobil ve oyun

### Web
- İstek → erişilebilir responsive tasarım → React/Next.js/Astro/SvelteKit/Vue-Nuxt frontend → FastAPI/NestJS/Django/Laravel backend → PostgreSQL + migration → oturum/ödeme/paylaşım → dockerized preview.
- **Test ve teslim şartı:** build, type-check, lint, unit/integration, Playwright E2E, güvenlik taraması, kullanıcı onaylı deployment, çalışan indirme artefaktı.
- **Screenshot-to-Code** yalnız taslak arayüz üretir; responsive, mantık, API, güvenlik, WCAG düzeltmeleri ayrı.
- **Kod çalışma modeli:** LLM GPU işçisi kod üretir; ayrı sandbox CPU worker üretimi test eder. Kullanıcı hesabı ve kod repo metadata kendi sunucumuzda.

### Mobil
- Flutter veya React Native; Android için Gradle/Android SDK ile APK/AAB, manifest, imza ve cihaz testi.
- **iOS build:** Xcode, Apple macOS worker, Apple Developer hesabı, provisioning ve signing şart; Linux GPU sunucusu tek başına iOS build yapamaz.
- Emülatör/test farm, depo/yayın anahtarlarının müşteri yetkisinde kalması, mağaza koşulları.

### Oyun
- Godot, Phaser/GDevelop, Blender+varlık üretimi. Godot MCP köprüsü yalnız ayrı sandbox ve limitli sahne/node/script komutlarıyla.
- Sahne yüklenmesi, input/fizik, FPS, asset formatı, export, headless smoke test, gerekirse görüntülü oynanış testi.
- Büyük profesyonel oyun tek seferde hatasız tamamlanacak diye reklam yapılmaz.

## 13.5 Çok ajanlı kodlama kadrosu (tek tek satın alınacak ürün değil, görev rolleri)
1. Planner: hedef/kapsam/PRD/kabul kriterleri.
2. Architect: modül, veri modeli, risk.
3. Repo Analyst: AST ve repo haritası.
4. Frontend / Backend / Database işçileri: ayrılmış branch, diff, migration.
5. QA: test, lint, build, E2E.
6. Security: Trivy/Gitleaks/Semgrep/CodeQL benzeri tarama ve raporlama.
7. Review: kod inceleme, test raporu ve değişiklik kıyası.
8. Fixer: sınırlı otomatik patch.
9. DevOps: Docker/CI/CD paketleri, imzalı çıkış; **yayına alma için insan onayı**.

**Akış:** chatbot → proje/izin → model router → plan + izole sandbox → repo branch → kod patch → test → security scan → preview → diff ve kullanıcı onayı → export/PR/deploy.

## 13.6 Rapor kaynaklı SWE-bench kıyası ve güvenilirlik sınırı

| Sistem | Veri seti | Raporlanan sonuç | Kaynak türü | Ana Beyin yorumu |
|---|---|---:|---|---|
| Agentless + Claude 3.5 Sonnet | SWE-bench Lite | %40,7 | Resmî Agentless README / 02.12.2024 duyurusu | **Tarihsel sağlayıcı sonucu** |
| Agentless + Claude 3.5 Sonnet | SWE-bench Verified | %50,8 | Aynı | Başka LLM ile aynı çıkmaz |
| AutoCodeRover | SWE-bench Lite | %37,3 | Proje açıklamasındaki pass@1 | Belirli sürüm/harness |
| AutoCodeRover | SWE-bench Verified | %46,2 | Proje açıklamasındaki pass@1 | **Lisans nedeniyle üretime bloke** |

Resmî kaynaklar: https://github.com/OpenAutoCoder/Agentless ; https://github.com/AutoCodeRoverSG/auto-code-rover . Toplam benchmark başarısı müşteri başına tam yazılım üretimi, ödeme, güvenlik veya mobil mağaza yayını garantisi değildir.

## 13.7 100.000 kayıtlı kullanıcı — Ajan, GPU, CPU/RAM/SSD kapasitesi

### 13.7.1 Raporda kullanılan tüm rakamlar VARSAYIMDIR
- Ortalama kod görevi başına **20 LLM çağrısı**, toplam **16.000 giriş + 8.000 çıkış token** varsayılmış; kullanıcı iş yükü ölçülmeden bu değerler sabit fiyat yapılamaz.
- **1.000 görev/gün:** 20.000 çağrı/gün, 16 milyon giriş + 8 milyon çıkış token/gün **(hesap doğrulaması)**.
- **10.000 görev/gün:** 200.000 çağrı/gün, 160 milyon giriş + 80 milyon çıkış token/gün **(aynı varsayım)**.
- **DİKKAT — kaynak raporun aritmetik tutarsızlığı:** Raporda 1.000 görev için 320 milyon giriş / 160 milyon çıkış token yazılmıştır; bunlar **16K/8K token'ın GÖREV başına değil, ÇAĞRI başına kullanılması halinde** doğrudur. Tek birim tanımı seçilmeden gerçek maliyet hesaplanamaz. Yukarıdaki düzeltilmiş satırlar 16K/8K **görev başına** kabul eder.
- Ajanın zamanının **%20–40'ında LLM sonucu beklediği** de varsayımdır, ölçüm değil.

### 13.7.2 Eşzamanlı kod ajanı çalışma havuzu (kaynak varsayımları)
| Aktif ajan | LLM istekleri eşzamanlı (ajan başına %20–40 varsayımı) | Sandbox CPU vCPU ihtiyacı | Sandbox RAM ihtiyacı | Geçici SSD | Tümü ölçüldü mü? |
|---:|---:|---:|---:|---:|---|
| 100 | 20–40 | 100–250 | 200–600 GB | 0,5–2 TB | **HAYIR — VARSAYIM** |
| 500 | 100–200 | 500–1.250 | 1–3 TB | 2–10 TB | **HAYIR — VARSAYIM** |
| 1.000 | 200–400 | 1.000–2.500 | 2–6 TB | 5–20 TB | **HAYIR — VARSAYIM** |
| 5.000 | 1.000–2.000 | 5.000–12.500 | 10–30 TB | 25–100 TB | **HAYIR — VARSAYIM** |

**Not:** Eşzamanlı GPU çıkarım adedi, eşzamanlı ajan sayısına veya toplam hesap sayısına eşit değildir. GPU ihtiyacı modelin gerçek tok/sn, batch/prefill, KV-cache, p95 TTFT ve bağlama göre ölçülür. Kod sandbox CPU/RAM/NVMe tüketimi GPU'nun dışında planlanmalıdır. Tek GPU için doğrulanmış eşzamanlı yük değeri: **ÖLÇÜLMEDİ**.

### 13.7.3 GPU bellek/performans kaydı
Qwen3-Coder-30B-A3B, Qwen3-Coder-Next, DeepSeek-V3.2, GLM-4.7 ve Devstral için RTX PRO 6000 Blackwell 96GB üzerinde **model ağırlık gerçek VRAM GB / KV-cache / token/s / TTFT / p95 latency / eşzamanlı görev** hâlen **ÖLÇÜLMEDİ**. Her model için quant, context ve inference motoru ayrı ölçülecek; \`1 GPU = 100 kullanıcı\` gibi oran kullanılmayacak.

### 13.7.4 Saklama alanı
- **Kalıcı:** kullanıcı repo kaynakları, commit geçmişi, build çıktısının sahiplik/metadata'sı, kullanıcı izinleri ve proje hafızası kendi kalıcı depoda.
- **Geçici:** sandbox workspace, Node modules, Python venv, Android Gradle cache, Docker layer, Godot import cache, APK/AAB derleme scratch; TTL ve temizleme politikası.
- **Denetim:** kalıcı loglar, build/test çıktısı ve artifact hash. Kullanıcı içeriğini sınırsız saklamak yerine plana göre depolama kotası.
- **Toplam:** kendi uygulama SSD, LLM ağırlıkları GPU sunucusunda cache, kullanıcı dosyaları, geçici build scratch ve offsite yedek **ayrı** bütçe.

## 13.8 Risk haritası ve somut kontroller
| Risk | Önlem / izleme |
|---|---|
| Ajan yanlış dosyayı sildi veya kod tabanını bozdu | Her görev ayrı Git branch, immutable repo snapshot, diff, restore |
| Prompt injection ve kötü niyetli repo talimatı | Dosya/web metni güvenilmeyen veri; sistem yönergesi değil; izinli araç şeması |
| Sandbox kaçışı / konteyner yönetim soketi istismarı | Rootless, kısa ömürlü sandbox/VM, docker.sock yok, capabilities azalt, seccomp/apparmor, ağ deny-by-default |
| GitHub OAuth/PAT kötüye kullanım | Repo bazında minimum yetki ve süreli token, otomatik iptal, hassas işlemlere kullanıcı onayı |
| npm/PyPI kötü amaçlı paket | Sürüm kilidi, hash kontrolü, SCA/SBOM, gitleaks/trivy/semgrep |
| Fatura/tokensuz sonlanmayan ajan | Token, adım, süre, vCPU, GPU dakika, gün/ay bütçe üst sınırı + kill switch |
| İnsan onaysız yayınlama | Ayrı deploy servisi, imzalı artefakt, üretim secret'ı ajan sandbox'ına verilmez |
| Müşteriler arası veri sızıntısı | Tenant izolasyonu, project scoped storage, path traversal sınırı, çapraz hesap penetrasyon testi |
| Hatalı benchmark vaadi | Model+agent+harness+test seti birlikte kayıt; kendi golden görev seti |
| Lisans/kod telif ihlali | Her bağımlılığın SPDX ve upstream LICENSE kontrolü; mevcut açık kaynak/özel lisans ayrımı |
| Platforma özgü iOS/Unity maliyeti | Gerçek build çalışanı ve mağaza şartları; ücretli ücretsiz diye gösterilmez |
| Ajan güncellenmedi | Paket sürümü sabitleme, CVE tarama, bakım durumu ve güvenli fallback |

## 13.9 Kategori 02 çıktı ve ürün seçimi
**Birincil aday:** MIT OpenHands çekirdeği/SDK + uygun kod modeli + izole sandbox + çok aşamalı test.  
**Hata düzeltme uzmanı:** Agentless (MIT) ve SWE-agent (lisans güncel checkpoint bazında onaylanacak).  
**Repo anlama:** RepoAgent Apache-2.0.  
**UI taslak:** Screenshot-to-Code, çıktısı gerçek responsive ve erişilebilir web teste girecek.  
**Oyun MCP:** Godot MCP Full Control (MIT doğrulandı) veya yalnız bir Godot MCP alternatif işçisi.  
**Mobil:** Flutter/Android Linux işçisi, iOS için ayrı macOS worker.  
**Eski/riski yüksek:** GPT Engineer arşivli, AutoCodeRover lisans çelişkili/bloklu, OpenHands Cloud Free Trial ticari üretim hizmeti değildir.  
**Premium adaptör:** resmî Claude/OpenAI/Gemini/Mistral/DeepSeek ticari API; 2026 güncel fiyat ve depolama şartları **ayrıca doğrulanacak**.

## 13.10 Kategori 02 kapanış / açık doğrulamalar
**Keşif:** Tur 1 son parça + Tur 2 sonuçları kaydedildi. Kategori 02 keşif döngüsü iki tur olarak işlendi, fakat kullanıcının tam Tur 1 belgesi elimize gelmediğinden **eksiksiz aktarım iddiası yoktur**.  
**Açık:** Qwen/DeepSeek/GLM/Devstral için tam checkpoint lisansı ve 96GB benchmark, Agentless/RepoAgent'ın gerçek sandbox CPU/RAM/SSD, mobil/iOS test altyapısı, Godot MCP plugin uyumluluğu, GPU+CPU toplam maliyeti, Tam Tur 1 kaynaklarının birleşmesi, AutoCodeRover ana repo lisans çelişkisi.  
**Bir sonraki kategori:** Kategori 03 — internet/akademik derin araştırma, crawling, kaynak doğrulama, gerçek zamanlı veri ve research ajanları. Tur 1 komutu kullanıcıya verildi, sonuç bekleniyor.
