# ANA BEYİN — YAPAY ZEKÂ BÖLÜMÜ: KURULACAK ARAÇLAR, DIŞ MODELLER VE ÇALIŞAN ÜRÜN PLANI

**Sürüm:** 2.0 — uygulanabilir teknik şartname  
**Güncelleme:** 22.10.2026  
**Proje:** anabeyin.com  
**Durum:** UYGULAMA TALİMATI / HENÜZ KURULDUĞU DOĞRULANMADI  
**Hedef okuyucu:** Claude Code, OpenCode, Codex veya başka bir kodlama/kurulum ajanı  
**Referans ürün:** Abacus AI — yalnız özellik/mimari araştırması; kapalı kodun, markanın veya tasarımın birebir kopyası değil.  
**Önceki sürümün tam arşivi:** [20 Ekim 2026 / v1.6 / orijinal 78 KB çalışma](./ARSIV_2026-10-20_SOHBETI_ARACLARI_V1_6.md)

> BU BELGEYİ OKUYAN AJANA ZORUNLU NOT: Bu metin kurulumun tamamlandığı anlamına GELMEZ. Sadece adı geçen yazılımları indirip bitmiş ürün varmış gibi davranma. Projenin mevcut kodunu ve dağıtımını incele; sonra bağımsız küçük aşamalarda çalışan kod, test, sürüm geri alma ve doğrulama çıktıları üret. Sahte örnek ekranı ve sahte başarı raporunu teslim olarak sayma. Ücretli API veya GPU tahsisi sahibinin onayı olmadan açılmaz. Kişisel abonelikler ticari API erişimi yerine kullanılamaz.

---

## 0. Ajanın kesin çalışma kuralları

1. Önce mevcut depo, çalışan servisler, Docker ve disk/RAM/GPU durumunu tespit et; mevcut dosyaları silme veya üzerine körlemesine yazma. Temiz repoda yeni uygulama oluştur, eski projede yalıtılmış dal kullan.
2. Windows 11 geliştirme klasörü ve Linux/WSL/Docker yolunu konfigürasyonla ayır. D: sürücüsü varsa varsayılan yerel çalışma klasörü D:\ANABEYIN olabilir; yolun varlığını kontrol et, otomatik varsayma.
3. Tüm servisler Docker Compose ile taşınabilir olmalı; barındırma konumu değişince kaynak kodu değiştirmeden ENV ve veri göçüyle taşınabilmeli.
4. Her araç, model ve sağlayıcı için kategorik statü tut: **LOCAL-CORE**, **LOCAL-OPTIONAL**, **GPU-OPTIONAL**, **EXTERNAL-API**, **REFERENCE-ONLY**, **NOT-APPROVED**. Bu etiketler çalışma modu, lisans ve maliyet açısından bağlayıcıdır.
5. Modelin ismi katalogda diye otomatik yükleme yapma. GPU modelleri, yalnız uygun donanım, ticari lisans, disk kotası ve kullanıcı onayı doğrulandıktan sonra çekilir.
6. API anahtarları yalnız gizli yönetici kurulumu sırasında istenir; istemci JavaScript'e, loglara, GitHub'a veya örnek dosyaya **gerçek anahtar** yazılmaz. ENV şablonuna yalnız değişken adları girilir.
7. API erişimi yoksa ilgili buton "Bağlantı bekliyor" olarak görünür; hazırmış gibi cevap, sahte video, sahte model veya demo ödeme üretme.
8. Kullanıcının tanımlı bütçe, yetki ve kredi kotasını aşan işlem başlatma. Masraflı işlem öncesinde gerçek sağlayıcı maliyetini göster.
9. Bağlanan her modülü arayüz, API, veritabanı, yetki, uçtan uca test ve loglarla doğrula. Başarısız modülü tamamlandı sayma.
10. Kullanıcı, tek seferlik ana dosya ve az sayıda kritik onayla ilerleyebilmeli; buna rağmen riskli eylemler veya canlıya çıkış **insan onayı** gerektirir.
11. Bu belge bir tüketiciye bütün premium AI modellerini ücretsiz sunabileceği vaadi DEĞİLDİR. Önce uygun ücretsiz/açık araçlar, gerektiğinde bedeli açık ücretli API.
12. Yeni bir skill/plugin/MCP paketi bulursan resmi kaynağını, lisansını, sürümünü ve güvenlik riskini kaydet; güvenilmeyen paketleri otomatik kurma veya üretim sırlarına eriştirme.

## 1. İki kesin operasyon grubu

### 1A. KENDİ SUNUCUMUZDA / KENDİ KONTROLÜMÜZDE ÇALIŞACAK BİLEŞENLER

Bunlar **Ana Beyin için seçilmiş mimari bileşenlerdir; Abacus'un kullandığı kanıtlanmış teknoloji listesi değildir.** Durumlarda "ÖNCELİKLİ" başlangıç hedefi, "KOŞULLU" kaynak veya ürün olgunluğu gerektiğini belirtir.

| ID | Bileşen | Statü / aşama | Kesin görev | Minimum doğrulama |
|---|---|---|---|---|
| S01 | Docker Engine + Compose | LOCAL-CORE / öncelikli | Taşınabilir servis kurulumları, sağlık kontrolü, kalıcı volume | docker compose config + servis healthcheck |
| S02 | Ana Beyin web UI (Next.js/TypeScript, özgün kod) | LOCAL-CORE / öncelikli | Sidebar, chat, stüdyo, profil ve yönetim paneli | E2E masaüstü + mobil |
| S03 | Ana Beyin uygulama API'si (FastAPI/Python) | LOCAL-CORE / öncelikli | Yetkili istek yönetimi, model sağlayıcı adaptörleri, kota, iş emirleri | OpenAPI + entegrasyon testleri |
| S04 | PostgreSQL | LOCAL-CORE / öncelikli | Kullanıcı, tenant, sohbet, abonelik, job, model kayıtları | Şema migrasyonu + yedek geri dönüş |
| S05 | Redis + görev işçileri (Celery veya tek alternatif) | LOCAL-CORE / öncelikli | Asenkron üretim işleri, tekrar deneme, iptal | İş sırası + yeniden başlatma testi |
| S06 | Kimlik doğrulama katmanı | LOCAL-CORE / öncelikli | Güvenli giriş, MFA planı, tenant izolasyonu | Yetkisiz erişim ve oturum testleri |
| S07 | Model yönlendirme adaptörü; LiteLLM isteğe bağlı | LOCAL-CORE / öncelikli | Çoklu LLM sağlayıcı, arıza devretme, maliyet/limit | En az 2 sağlayıcıyla adapter testi |
| S08 | Ajan orkestrasyonu; LangGraph isteğe bağlı | LOCAL-CORE / öncelikli | Araştırma/kod/görev ajanları, izin kapıları | Çok adımlı görev + resume |
| S09 | FFmpeg + FFprobe | LOCAL-CORE / öncelikli | Video ses montajı, transcode, altyazı | Gerçek MP4 çıktı dosyası |
| S10 | LibreOffice headless + Pandoc | LOCAL-CORE / öncelikli | DOCX, PPTX, PDF dönüşümleri | Dosya açılır mı, kayıp var mı? |
| S11 | Playwright | LOCAL-CORE / öncelikli | Tarayıcı testi, kullanıcı izniyle browser otomasyonu | CI E2E senaryoları |
| S12 | Caddy veya mevcut ters proxy | LOCAL-CORE / öncelikli | HTTPS ve domain yönlendirme | TLS, yönlendirme, güvenlik başlıkları |
| S13 | S3 uyumlu dosya depolama adaptörü | LOCAL-CORE / öncelikli | Kullanıcı dosyaları, medya, TTL, indirme izinleri | Yetkili presigned URL + silme |
| S14 | Prometheus + Grafana veya hafif izleme | LOCAL-OPTIONAL / canlıdan önce | CPU, RAM, kuyruk, maliyet, error alarmı | Alarm simülasyonu |
| S15 | Qdrant veya PostgreSQL pgvector | LOCAL-OPTIONAL / ihtiyaçta | Belge arama ve RAG | İzinli doküman geri çağırma |
| S16 | Activepieces Community veya özgün workflow | LOCAL-OPTIONAL / ikinci aşama | Harici iş otomasyonları, tetikleyiciler | Webhook ve tekrar deneme testi |
| S17 | LibreChat (geçici referans/UI prototip) | REFERENCE-ONLY / koşullu | Sohbet deneyimi hızlandırma; temel platform buna kilitlenmez | Kendi UI/adapter ile sökülebilir |
| S18 | ComfyUI | GPU-OPTIONAL / ayrı GPU işçisi | Onaylı açık ağırlıklı medya modelleri | GPU varsa 1 gerçek üretim |
| S19 | Ollama veya vLLM (tekini ölçerek seç) | GPU-OPTIONAL / ayrı işçi | Uygun lisanslı açık ağırlıklı LLM sunumu | Token hızı, VRAM ve paralellik testi |
| S20 | faster-whisper | LOCAL-OPTIONAL / donanıma göre | Ses transkripsiyonu | Gerçek Türkçe WAV testi |
| S21 | Kod çalıştırma sandbox'ı | LOCAL-CORE / kod ajanı yayınından önce | Kullanıcı/ajan kodunu kaynak ve ağ limitleriyle izole etme | Host dosyasına erişememe testi |
| S22 | Secret manager + otomatik yedek | LOCAL-CORE / canlıdan önce | API anahtarları, DB şifreleri, şifreli yedekleme | Anahtar sızma testi + restore |

**Dikkat:** S06, S13 ve S22 ürün hizmet sınırlarıdır; bunların spesifik açık kaynak uygulamaları kurulu sistem ve lisans incelendikten sonra seçilecek. Gereksiz iki auth veya iki iş kuyruğu kurulmayacak. Arşivdeki yüzlerce araç zorunlu kurulum listesi değildir.

#### 1A.1 Yaklaşık kaynak bütçesi — DİKKAT: Abacus ölçümü değildir

| Kurulum grubu | Disk alanı (uygulama, tahmini) | RAM (çalışırken, tahmini) | GPU |
|---|---|---|---|
| Çekirdek web+API+DB+queue+proxy | 10–35 GB + veri | 8–24 GB başlangıç | Gerekmez |
| Otomasyon, tarayıcı, belge ve video işçileri | 5–20 GB + geçici işler | 4–16 GB ek yük | Genelde gerekmez |
| Görüntü/video modeli ve inference server | Modelden modele onlarca–yüzlerce GB | Model ve iş yüküne bağlı | Gereken modelin VRAM ölçümü şart |
| İzleme, metrik ve yedek | 5–20 GB + saklama süresi | 1–4 GB ek yük | Gerekmez |

**Başlangıç hedefi:** GPU olmadan API-first geliştirme için 32 GB RAM / 100–200 GB SSD üzerinde makul bir ilk kurulum planla; gerçek ölçümlere göre kapasiteyi değiştir. Bu 100.000 eşzamanlı kullanıcı garantisi değildir. Video/GPU için ayrı 64–128 GB sistem RAM, uygun VRAM ve model depolaması boyutlandırılır. Windows dizüstündeki 4 GB GPU üzerinde ağır video modellerini varsayılan olarak indirme/çalıştırma.

### 1B. DIŞ MODEL VE API HİZMETLERİ — ABACUS KATALOĞUNDA SUNULDUĞU DOĞRULANAN MODEL AİLELERİ

**ÇOK ÖNEMLİ:** Abacus arayüzünde modelin sunulması, Abacus'un doğrudan o şirkete ait API'yi kullandığını **kanıtlamaz**. Abacus bazı modelleri kendi/üçüncü taraf sunucuda veya aracı üzerinden sunabilir. Aşağıdaki satırlar **Ana Beyin için harici API bağlantı adayıdır**, Abacus'un ticari anlaşmalarının veya sağlayıcı topolojisinin kesin listesi değildir. Her API, resmi belgeleri ve erişim koşulları doğrulandıktan sonra etkinleştirilecek.

| ID | Aile / hizmet | Kullanım | Ana Beyin adaptörü | Statü |
|---|---|---|---|---|
| A01 | OpenAI GPT | Sohbet, muhakeme, kod | openai | EXTERNAL-API / anahtar ve bütçe gerekli |
| A02 | Anthropic Claude | Sohbet, kodlama, ajan | anthropic | EXTERNAL-API / anahtar ve bütçe gerekli |
| A03 | Google Gemini | Sohbet, çoklu ortam | google | EXTERNAL-API / anahtar ve bütçe gerekli |
| A04 | xAI Grok | Sohbet, araştırma | xai | EXTERNAL-API / anahtar ve bütçe gerekli |
| A05 | OpenAI GPT Image | Görsel oluşturma/düzenleme | openai_image | EXTERNAL-API |
| A06 | Google Nano Banana / Imagen | Görsel oluşturma/düzenleme | google_image | EXTERNAL-API |
| A07 | FLUX modelleri | Görsel üretimi | flux_adapter | EXTERNAL-API **veya** lisanslı GPU alternatifi |
| A08 | Recraft | Görsel / vektör | recraft | EXTERNAL-API |
| A09 | Ideogram | Görsel / yazı tasarımı | ideogram | EXTERNAL-API |
| A10 | Google Veo | Video | veo | EXTERNAL-API |
| A11 | Kling AI | Video | kling | EXTERNAL-API |
| A12 | MiniMax Hailuo | Video | hailuo | EXTERNAL-API |
| A13 | Seedance | Video | seedance | EXTERNAL-API / resmi bölgesel erişim şartları |
| A14 | Runway | Video/düzenleme | runway | EXTERNAL-API |
| A15 | Luma | Video | luma | EXTERNAL-API |
| A16 | HeyGen | Konuşan avatar | heygen | EXTERNAL-API |
| A17 | Hedra | Avatar ve dudak eşleme | hedra | EXTERNAL-API |
| A18 | ElevenLabs | TTS, müzik, ses efekti | elevenlabs | EXTERNAL-API |
| A19 | MiniMax Speech / Music | TTS ve müzik | minimax | EXTERNAL-API |
| A20 | Google Lyria | Müzik | lyria | EXTERNAL-API |
| A21 | Hume | Ses | hume | EXTERNAL-API |
| A22 | Stable Audio | Ses efekti | stable_audio | EXTERNAL-API veya lisansla model |
| A23 | Gmail / Google Drive | Dış uygulama entegrasyonu | google_oauth | EXTERNAL-API / OAuth |
| A24 | GitHub / Slack | Kod / iletişim entegrasyonu | github_oauth / slack_oauth | EXTERNAL-API / OAuth |

**Yenilenebilir katalog:** Model sürümü, sağlayıcı, fiyat ve API erişimi zamanla değişir. Kullanıcı menüsünde sadece gerçekten desteklenen model kimlikleri görünür; API'nin model-listesi endpointi veya resmi güncel dokümanı üzerinden düzenli doğrulama yapılır. "GPT-6", "Claude" vb. pazarlama adıyla gerçekte olmayan sürüm oluşturulmaz. Model isimlerini sabit kodlama.

**API Anahtarı isteme sırası:** Çekirdek kurulumu API anahtarsız başlar. Yönetici panelindeki "Entegrasyonlar > Bağlantılar" ekranı her sağlayıcı için ayrı **Bağla / Test et / Kapat** sunar. Sahip, yalnız açmak istediği sağlayıcının anahtarını girer; asla 24 bağlantıyı tek seferde zorunlu tutma. Her sağlayıcıda başarı testi, fiyat/kota, saklama politikası ve alan/bölge koşullarını göster. Özellikle ücretli premium modeller varsayılan olarak kapalıdır.

## 2. ABACUS AI — RESMÎ KAYNAKLA DOĞRULANAN REFERANSLAR

**Bu bölüm yalnız karşılaştırma referansıdır; Ana Beyin'de birebir aynı özel altyapının var olduğu iddia edilemez.**

### 2A. Abacus'un kendi ürünlerinde açıkladığı sunucu/altyapı imkanları

| Doğrulanan | Kaynağın kanıtladığı | Kanıtlamadığı |
|---|---|---|
| Ubuntu VM, root ve SSH | SuperComputer ürününün kullanıcıya sunduğu ortam | Tüm Abacus çekirdeğinin Ubuntu/aynı VM'de çalıştığı |
| Nginx yapılandırması | SuperComputer'da sunulan yönlendirme | Abacus'un bütün sisteminin Nginx kullandığı |
| Docker / Docker Compose desteği | SuperComputer kullanıcı ortamında destek | Abacus iç servislerinin hepsinin Docker olduğu |
| S3 uyumlu depolama | SuperComputer depolama özelliği | Kendi iç saklama sağlayıcısı ve fiziksel lokasyonu |
| Yönetilen veritabanları | SuperComputer'da veritabanı hizmeti | Dahilde PostgreSQL, MySQL vb. hangi motorların kullanıldığı |
| Abacus AI Agent / Agent Tasks | Kendi ajan ürünleri ve iş akışı yetenekleri | Tam özel orkestrasyon kaynak kodu |
| RouteLLM | Açık ve kapalı model erişimi; otomatik yönlendirme | Her modelin arka tarafta tam sağlayıcı rotası |
| Açık ağırlıklı modellerin ABD'deki sunucularda barındırılması | RouteLLM resmî açıklaması | Her modelin aynı GPU/sunucu sahibiyle barındığı |
| Smaug | Abacus'un kendi adlandırdığı model ailesi | Tüm Abacus isteklerinin Smaug ile işlendiği |

**Kesinlikle doğrulanmış gibi yazılmayacaklar:** Abacus'un Next.js, FastAPI, LangGraph, LiteLLM, PostgreSQL, Redis, ComfyUI, Qdrant, Keycloak kullanması; Abacus'un gizli sağlayıcı API sözleşmeleri; fiziksel sunucu mülkiyeti; model başına gerçek RAM/SSD tüketimi.

### 2B. Abacus ürünlerinde görülen fonksiyonlar — menü tasarımı için referans

- ChatLLM: otomatik seçim, sohbet, ajan, özel bot.
- Sohbet araç çubuğu: görsel, doküman, video, kod, editör, ekran görüntüsü, sunum, URL tarama, video analizi.
- AI Studio: görsel, video, konuşma, müzik/ses efektleri ve düzenleme akışları.
- Agent: web/app oluşturma, veri analizi, araştırma, ofis belgeleri ve otomatik görevler.
- SuperComputer: Ubuntu VM, hosting, veritabanı, depolama, domain.
- RouteLLM: birden fazla modele tek API ve otomatik yönlendirme.

**Kaynaklar (kontrol: 22.10.2026):**
1. https://abacus.ai/help/chatllm-ai-super-assistant/introduction
2. https://api.abacus.ai/help/chatllm-ai-super-assistant/toolbar-llm-configuration
3. https://studio.abacus.ai/
4. https://abacus.ai/help/chatllm-ai-super-assistant/supercomputer
5. https://api.abacus.ai/help/route-llm/
6. https://abacus.ai/smaug

## 3. ANA BEYİN ÜRÜNÜ — SOL MENÜ / EKRANLAR / ARAÇ YERLEŞİMİ

**Hedef:** Özgün tasarımlı, kullanıcının tek yerden eriştiği platform. LibreChat yalnız prototip/referans olabilir; **kendi Ana Beyin web UI, API, DB ve model kataloğu onun dışında** çalışır. LibreChat kaldırıldığında veri kaybı ya da zorunlu yeniden yazım olmamalı.

| Sol menü (görünen isim) | Alt ekranlar / işlem | Arka motor veya adaptör |
|---|---|---|
| **Sohbet** | Yeni sohbet, geçmiş, model seçici, Auto/Hızlı/Dengeli/Güçlü, dosya ekle | S02, S03, S04, S07, A01–A04, isteğe bağlı S19 |
| **Araştırma** | Web arama, kaynaklı rapor, derin araştırma, PDF analizi | S08, arama adaptörü, S10, S15 |
| **Görsel** | Metinden görsel, görselden düzenleme, boyut/kalite, referans görsel | A05–A09 veya S18 |
| **Video** | Metinden video, fotoğraftan video, projeler, işlem kuyruğu, timeline | A10–A15 veya S18 + S09 |
| **Ses** | Metinden konuşma, transkripsiyon, dublaj, ses dönüştürme | A18–A19, A21 veya S20 |
| **Müzik** | Müzik, ses efekti, yayınlanan işlerin arşivi | A18–A20, A22 |
| **Avatar** | Konuşan avatar, lipsync, karakter varlıkları | A16–A17 |
| **Kodlama** | Kod editörü, repo, önizleme, test, dosya değişiklikleri | S08, S11, S21 + A01–A04 |
| **Web ve Uygulamalar** | Web sitesi, PWA, mobil proje, önizleme, yayınla (izinli) | Kod ajanları + Git/CI + sandbox |
| **Belgeler** | PDF, DOCX, PPTX, XLSX, özet, dönüştürme | S10, S08, S04 |
| **Ajanlar** | Görev başlat, plan, görev durumu, izin ekranı, geçmiş | S08, S05, S21 |
| **Otomasyon** | Workflow, webhook, zamanlama, geçmiş işlemler | S16/S05 |
| **Projeler** | Dosyalar, sohbetler, medya üretimleri, paylaşımlar | S04, S13 |
| **Modeller** | Mevcut modeller, sağlayıcı, maliyet, yetenek, durum | S07, registry |
| **Entegrasyonlar** | API key, OAuth, sağlık testi, kota ve bağlantılar | S03, S22, A01–A24 |
| **Hesap ve Abonelik** | Üyelik, profil, kredi, kullanım dökümü, faturalar | S04, S06, ödeme adaptörü |
| **Yönetici Paneli** (yalnız admin) | Ajanlar, kuyruk, GPU, maliyet, sağlayıcı, güvenlik, kullanıcı | Tüm LOCAL-CORE bileşenler |

**Kritik UX:** Sohbet altında Auto/Hızlı/Dengeli/Güçlü seçenekleri bulunur; ayrıca açık açılır listeyle kullanıcı gerçekten bağlı ve izinli modelleri seçebilir. Auto, görev türü / yetenek / erişim / tahmini birim maliyet / gecikme / kalite / kullanıcı kotasına göre modeli seçer; fiyat veya hız ölçümü yoksa bunu "bilinmiyor" diye gösterir.

### 3.1 Sohbet kutusunun zorunlu öğeleri

Metin girişi, gönder/durdur, mikrofon (uygunsa), dosya/görsel ekleme, model seçici, kalite modu, araç menüsü (web, görsel, video, belge), kullanılan model ve tahmini/gerçek maliyet, cevapta kaynaklar, indirme/paylaşma ve proje kaydetme. Çok maliyetli medya veya ajan işinde kullanıcıdan devam onayı alınır.

### 3.2 35 eski başlığın bu menülere tam eşlemesi

| Önceki # | Özellik | Ana menü | Çalışma yolu |
|---|---|---|---|
| 01 | Sohbet | Sohbet | Router + LLM |
| 02 | AI ajanları | Ajanlar | Orkestrasyon |
| 03 | AI Studio | Görsel/Video/Ses/Müzik/Avatar | Medya API veya GPU |
| 04 | AI Desktop | Kodlama | Sonradan masaüstü istemci |
| 05 | Bulut bilgisayar | Yönetici Paneli | Ayrı altyapı / aşama 3 |
| 06 | Model API | Modeller/Entegrasyonlar | Router |
| 07 | Görsel üretim | Görsel | A05–A09 / S18 |
| 08 | Görsel düzenleme | Görsel | A05–A09 / S18 |
| 09 | Video üretimi | Video | A10–A15 / S18 |
| 10 | Video düzenleme | Video | S09 |
| 11 | AI avatarları | Avatar | A16–A17 |
| 12 | TTS | Ses | A18–A19, A21 |
| 13 | Müzik üretimi | Müzik | A18–A20 |
| 14 | Ses efekti | Müzik | A18, A22 |
| 15 | Derin araştırma | Araştırma | S08 + web |
| 16 | Belge oluşturma | Belgeler | S10 |
| 17 | PDF | Belgeler | S10 |
| 18 | Word | Belgeler | S10 |
| 19 | Sunum | Belgeler | S10 |
| 20 | Elektronik tablolar | Belgeler | S10 |
| 21 | Kodlama | Kodlama | S08 + sandbox |
| 22 | Web sitesi | Web ve Uygulamalar | Kod + test |
| 23 | Mobil uygulama | Web ve Uygulamalar | İleri aşama mobil SDK |
| 24 | Görev ajanları | Ajanlar | S08 + S05 |
| 25 | İş akışı otomasyonu | Otomasyon | S16 |
| 26 | Zamanlanmış görev | Otomasyon | S05 / scheduler |
| 27 | Proje yönetimi | Projeler | S04 |
| 28 | Özel asistanlar | Ajanlar | Özel prompt + erişim |
| 29 | Tarayıcı otomasyonu | Ajanlar | S11 + güvenli ortam |
| 30 | Uygulama entegrasyonları | Entegrasyonlar | OAuth/API |
| 31 | Sunucu yönetimi | Yönetici Paneli | Monitoring + izin |
| 32 | Uygulama barındırma | Web ve Uygulamalar | Yayın katmanı |
| 33 | Veritabanı yönetimi | Yönetici Paneli | S04 + backup |
| 34 | Çoklu model yönetimi | Modeller | Registry |
| 35 | Otomatik model yönlendirme | Sohbet/Modeller | Router |

## 4. Servis sınırları, kayıt şemaları ve API sözleşmesi

Bu nesneler ilk aşamada gerçek DB tabloları/migrasyonları ve sunucu endpointleri olarak oluşturulmalı:

- users, organizations, memberships, roles, sessions
- conversations, messages, attachments, projects
- provider_connections (yalnız secret referansı; gerçek değer DB düz metni değil)
- model_registry (provider_id, model_id, modality, capabilities, pricing, limits, enabled, verified_at)
- tasks, task_steps, retries, cancellations, events
- media_assets, media_jobs, file_retention_policies
- usage_events, usage_costs, credits, subscription_plans, invoices
- audit_logs, provider_health, alerts

**HTTP / API örnek asgari sözleşme:** GET /api/models, POST /api/chat, POST /api/media/jobs, GET /api/jobs/{id}, POST /api/jobs/{id}/cancel, GET /api/projects, POST /api/uploads/presign, GET /api/me/usage, GET /api/admin/providers. Tüm endpointler tenant ve rol kontrollerinden geçer.

**Provider interface:** list_models(), validate_credentials(), estimate_cost(), generate_text(), generate_image(), generate_video(), generate_audio(), job_status(), cancel_job(); sağlayıcı gerekli olmayan metot için UNSUPPORTED döndürür. Her görevde telemetry ve idempotency_key olur.

**Model karar sırası:** 1) kullanıcı yetkisi, 2) istenen medya/yetenek, 3) bağlanmış sağlayıcı, 4) kota/bütçe, 5) kalite modu, 6) gecikme/sağlık, 7) gizlilik/bölge, 8) fallback. Premium fallback pahalılaşacaksa yeniden izin al.

**İş güvenliği:** medya üretimi asenkron job; kullanıcı işlemi iptal edebilir, başarısız isteğin ücreti yanlış faturalandırılmaz. Provider anahtarı son kullanıcı tarayıcısına verilmez.

## 5. Otomatik kurulum hedefi — ajana verilecek ana iş emri

> Repo ve mevcut çalışan sunucuyu denetle. Bu belgedeki LOCAL-CORE bileşenleri Docker Compose ile kurulabilir hale getir. Önce kurulum planı ve .env.example, ardından tek komutla çekirdek kurulum, DB migrasyon, otomatik test, sağlık raporu ve geri alma üret. **Hiçbir ortamda var olmayan anahtar, var olmayan servis veya başarılı test uydurma.** GPU-OPTIONAL ve harici sağlayıcıları mevcut donanım/erişim doğrulanana kadar otomatik indirme. Kullanıcının seçtiği sağlayıcılar için yalnız gizli anahtarlarını sor. Ardından Ana Beyin'in özgün sol menülerini ve bu menülerin altında GERÇEKTEN çalışan servis adaptörlerini geliştir. İşleri modül modül commit et, her aşamanın durumunu kurulmuş/test edilmiş/engelli olarak raporla.

### 5.1 Oluşturulacak depo/dosya düzeni

~~~text
anabeyin/
  apps/web/                 # özgün sol menü ve kullanıcı arayüzü
  apps/api/                 # asıl API, auth, maliyet ve dosya sistemleri
  workers/jobs/             # queue, cron ve iş adaptörleri
  workers/media/            # ffmpeg, GPU varsa medya işçisi
  workers/sandbox/          # izole kod çalıştırma
  packages/provider-adapters/
  packages/model-registry/
  packages/ui/
  infrastructure/compose/
  infrastructure/migrations/
  infrastructure/monitoring/
  config/.env.example       # SADECE anahtar adları
  docs/architecture/
  docs/runbooks/
  tests/e2e/
  tests/integration/
  scripts/preflight.sh
  scripts/install.sh
  scripts/healthcheck.sh
  scripts/rollback.sh
~~~

### 5.2 Bir komutun gerçekte yapması gerekenler

- preflight: işletim sistemi, Docker, disk, RAM, GPU, port ve yetki analizi; risk varsa rapor verip dur.
- backup: mevcut verinin ve konfigürasyonun yedeği; geri döndürme noktası.
- compose up: sadece LOCAL-CORE servisler, pinned sürümler, restart politikası ve healthchecks.
- migrate: veritabanı şeması; test tenant'ı/ayrı demo verisi.
- configure: DNS/HTTPS kontrolü; e-posta ve ödeme eksikse kapalı özellik.
- smoke tests: üyelik, login, sohbet kutusu, media job stub state (başarılı AI üretimi taklidi değil), kuyruk ve dosya güvenliği.
- report: kurulmuş/çalışıyor/engel var; servis URL, donanım, maliyet, log ve kaynak tüketimi.
- rollback: sürümlü compose ve restore talimatı.

### 5.3 Örnek gizli anahtar env adları (DEĞERLER YAZILMAZ)

~~~dotenv
APP_BASE_URL=
DATABASE_URL=
REDIS_URL=
STORAGE_ENDPOINT=
STORAGE_BUCKET=
SECRET_STORE_REFERENCE=
OPENAI_API_KEY=
ANTHROPIC_API_KEY=
GOOGLE_AI_API_KEY=
XAI_API_KEY=
KLING_API_KEY=
MINIMAX_API_KEY=
RUNWAY_API_KEY=
ELEVENLABS_API_KEY=
HEYGEN_API_KEY=
HEDRA_API_KEY=
GITHUB_OAUTH_CLIENT_ID=
GITHUB_OAUTH_CLIENT_SECRET=
GOOGLE_OAUTH_CLIENT_ID=
GOOGLE_OAUTH_CLIENT_SECRET=
MAX_MONTHLY_API_BUDGET_TRY=
ENABLE_PREMIUM_MODELS=false
ENABLE_LOCAL_GPU_MODELS=false
~~~

**Kurulum sırasında tüm ENV'leri doldurtma.** Yalnız seçilmiş ve doğrulanmış özellikleri aç. Ticari API'lerin gerçek env adı ve istek şeması resmi entegrasyon belgelerinden doğrulanarak eşleştirilir.

## 6. Sıra, kabul kriteri ve kontrol

### Faz 1 — Çalışan omurga (öncelikli)
Gerçek özgün UI, kullanıcı giriş/tenant, DB, kuyruk, model kaydı, sağlayıcı sağlık, sohbet, dosya, maliyet/limit ve test. Minimum 1 gerçek ücretsiz/uygun API veya onaylanmış yerel model; bağlanmamış sağlayıcı yalnız "bağlantı bekliyor".

### Faz 2 — Çoklu model + medya
Yetkili model seçici, Auto router, görsel, video, ses, müzik ve avatar ekranları; her biri en az bir gerçek sağlayıcıyla uçtan uca test edilir, yoksa "henüz aktif değil". Video için iptal, kuyruk, süre ve birim maliyet şart.

### Faz 3 — Kod, otomasyon, bulut
İzole ajan kod çalıştırma, Git entegrasyonu, workflow ve zamanlama, proje/barındırma; kullanıcının izni olmadan gerçek internet sitesini canlıya açma.

### Faz 4 — GPU bağımsızlaştırma ve ölçekleme
ComfyUI/Ollama/vLLM işçilerini ancak uyumlu GPU, model lisansı, VRAM/SSD ölçümü ve finansal karşılaştırma tamamlanınca kur. Sahip olunan laptop tek başına GPU üretim altyapısı varsayılmaz. 100.000 kayıtlı kullanıcı hedefi için günlük aktif, eşzamanlı işlem, token/medya sarfiyatı, bant genişliği ve churn ile yük testi yap.

**Her fazın teslim şartları:**
1. Gerçek çalışan kaynak kodu + compose/migrasyon.
2. En az bir gerçek entegrasyon / başarısızsa net engel kaydı.
3. Yetki ve güvenlik testleri (başka tenant dosyasına erişim sıfır).
4. Birim maliyet ve aylık harcama üst sınırı.
5. İkinci ortamda yeniden kurulum ve yedekten geri alma.
6. Eski sürüme dönüş yolu.
7. Video/görsel/diğer sağlayıcı API erişimi yoksa test PASS raporunu uydurmama.

## 7. Eski katalogdan çıkarılan veya ertelenenler

**Silinmedi:** 20.10.2026 araştırmasının tamamı ayrı arşiv dosyasındadır. Bu ana MD artık yüzlerce paketli "hepsini kur" listesi DEĞİLDİR.

| Önceki katalogdan örnek | Yeni karar | Gerekçe |
|---|---|---|
| Her LLM ailesinden onlarca model ağırlığı (Qwen, Gemma, Phi, OLMo, SmolLM, DeepSeek vb.) | REFERENCE-ONLY / tek tek benchmark ile seç | 100+ model kurmak disk/GPU israfı |
| Çok sayıda inference sunucusu (Ollama, vLLM, SGLang, TensorRT-LLM, LocalAI) | Birincil *tek* motoru ölçerek seç | Aynı amaç için kopya sunucu gereksiz |
| Birden fazla iş kuyruğu ve workflow motoru | Bir tane çekirdek kuyruk, gerekirse opsiyonel workflow | Operasyonel karmaşa |
| Her grafik/3D/CAD/oyun ve bilim aracı | Ürün gereksinimi olmadan kurma | İlk sürüm için esas değer üretmiyor |
| Birden çok RAG veritabanı | PostgreSQL pgvector **veya** Qdrant | Duplike veri riski |
| Tüm kapalı video / görsel / müzik sağlayıcıları | Menü kataloğunda aday; anahtar ve erişim oldukça etkin | Ücret ve abonelik riski |
| LibreChat'in tamamını Ana Beyin'in ürün çekirdeği yapmak | YASAK — yalnız geçici UI referansı/prototip | Vendor bağımsızlık ve lisans/upgrade riski |
| Geniş rakip klonlama / otomatik tüm skill'leri yükleme | Varsayılan kapalı; lisans/güvenlik kontrollü inceleme | Güvenlik ve kalite |

## 8. Sabit lisans ve operasyon kuralları

- Apache/MIT gibi açık kaynak yazılım, açık ağırlıklı model, ücretsiz kota, kişisel abonelik, ücretli ticari API ve kendi GPU sunumu ayrı sınıflardır.
- Her model için sağlayıcı, sürüm, lisans bağlantısı, ticari hizmet koşulları, veri saklama durumu, fiyat ve GPU/RAM ihtiyacı kaydedilir. Lisans kesin değilse **NOT-APPROVED**.
- LibreChat resmi reposu: https://github.com/danny-avila/LibreChat (güncel sürüm ve lisans dosyasını uygulamadan önce kontrol et).
- Activepieces Community'nin çekirdeği MIT; ticari/enterprise parçaları farklı lisansa tabidir. https://github.com/activepieces/activepieces/blob/main/LICENSE
- Video dosyası/üretim kuyruğu GPU API maliyeti sınırını aşarsa otomatik durmalı; kullanıcı başına limitsiz ücretsiz medya verilemez.
- Secrets, ödeme ve kullanıcı verileri için KVKK/güvenlik incelemesi gereklidir; test verisi gerçek müşteri verisi değildir.
- Her tool, skill veya paket kurulumunda pinlenmiş sürüm, checksum/official source, lisans ve geri alma kaydı tutulur.

---

### Son durum bildirimi (ajanca her çalışmadan sonra doldurulacak)

| İş | Durum |
|---|---|
| Belgenin GitHub'da güncellenmesi | KAYDEDİLDİĞİ GİTHUB ÜZERİNDEN DOĞRULANACAK |
| Geçmiş v1.6 dokümanının arşivlenmesi | ARŞİVLENDİ |
| Canlı sunucuya kurulum | HENÜZ YAPILMADI |
| API anahtarlarının eklenmesi | HENÜZ YAPILMADI |
| Üretim ortamında servislerin çalışması | HENÜZ TEST EDİLMEDİ |

**Belge ilkesi:** Bu dosya rastgele paket toplama listesi değil, önce doğru omurgayı kurup sonra modüllere gerçek araç bağlatmak için yürütme sözleşmesidir.
