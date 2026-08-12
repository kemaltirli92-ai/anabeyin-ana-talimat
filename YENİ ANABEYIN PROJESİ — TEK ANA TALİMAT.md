# YENİ ANABEYIN PROJESİ — TEK ANA TALİMAT

YENİ ANABEYIN PROJESİ ŞİMDİ BAŞLIYOR.

ÇALIŞMA ALANI:

`/var/www/anabeyin`

ESKİ SİTE REFERANSI:

`/root/anabeyin-eski-referans-20260812-192751`

KORUNAN YEDEKLER:

`/root/anabeyin-yedekler/`

# ================================================== BAŞLANGIÇ YÜRÜTME SIRASI — AJAN CANLI İZLEME VE YÖNETİM MERKEZİ

BU TEK TALİMATIN TAMAMI TEK BİR ANA GÖREVDİR.

Bu talimatı parça parça, ayrı mesajlar veya sonradan eklenecek işler gibi yorumlama.

İlk olarak AJAN CANLI İZLEME VE YÖNETİM MERKEZİ'ni kur, çalıştır ve doğrula.

Bu merkez çalışır hale geldiğinde kullanıcıdan yeni komut veya onay bekleyip DURMA.

Aynı ana talimat kapsamında doğrudan AnaBeyin Core + Facebook benzeri AnaBeyin Sosyal geliştirmesine geç ve ana hedef tamamlanana kadar planlı şekilde ilerlemeye devam et.

Ana proje geliştirmesi başladığı andan itibaren Ajan Canlı İzleme ve Yönetim Merkezi demo görünümünden gerçek çalışma görünümüne geçebilmeli ve oluşturduğun gerçek ana ajan/alt ajan/görev akışlarını canlı göstermeye devam etmelidir.

Ana proje günler sürebilecek uzun bir çalışma olarak ele alınmalıdır.

Kurulu Kimi Code sürümünü ve mevcut çalışma biçimini önce tespit et.

Uzun çalışma için Kimi Code'un o sürümde desteklediği oturum, arka plan görevleri, alt ajanlar, görev devam ettirme ve kalıcı çalışma mekanizmalarını güvenli şekilde kullan.

Terminal/SSH bağlantısının kesilmesi veya oturumun yeniden açılması halinde yapılan işin, görev durumlarının ve ilerleme kayıtlarının kaybolmaması için desteklenen güvenli süreklilik düzenini kur.

Bir bağlantı kopması veya terminalin yeniden açılması ana hedefi sıfırdan başlatma sebebi olmasın.

Aynı işi ve aynı alt görevi gereksiz yere yeniden başlatma.

Bir alt ajan aynı iş üzerinde devam edebiliyorsa gereksiz yeni ajan oluşturmak yerine uygun şekilde mevcut işi devam ettir.

Alt ajanların ana konuşmanın tamamını bildiğini varsayma; bir alt ajana iş verirken o iş için gerekli hedefi, sınırları, ilgili dosya/yol bilgisini, beklenen sonucu ve doğrulama şartını görev tanımına yeterli şekilde aktar.

Basit ve tek ajanla ekonomik biçimde çözülebilecek işlerde gereksiz alt ajan oluşturma.

Gerçekten bağımsız veya paralel yürütülmesi yararlı işler gerektiğinde uygun alt ajanları kendin oluştur.

Bu çalışma düzeninin ayrıntılarını mevcut Kimi Code sürümünün desteklediği yöntemlere göre SEN belirle.

Bu talimatın ilerleyen bölümlerinde geçen "bu ilk görev", "bu ilk aşama", "bir sonraki mantıklı geliştirme aşaması" veya benzeri ifadeleri ANA HEDEF tamamlanmadan kullanıcıdan yeni komut bekleyip durulacak noktalar olarak yorumlama.

Bunlar ara çalışma/denetim eşikleridir.

Bir ara aşamanın şartları sağlandığında doğrula, kalıcı ilerleme kaydını güncelle ve aynı ana talimat kapsamında sıradaki gerekli geliştirmeye geç.

FACEBOOK BENZERİ ANABEYIN SOSYAL'in bu talimatta tarif edilen ana hedefi gerçekten tamamlanmadan yalnızca bir ara aşamayı bitirip final rapor vererek çalışma.

Final raporu ANA HEDEF tamamlandığında ver.

# ================================================== AJAN CANLI İZLEME VE YÖNETİM MERKEZİ

AnaBeyin'in büyük geliştirme çalışmasına başlamadan önce ilk çalışan bölüm olarak tamamen TÜRKÇE bir AJAN CANLI İZLEME VE YÖNETİM MERKEZİ oluştur.

Bu merkez daha sonra AnaBeyin geliştirmesi günler boyunca devam ederken ayrı bir canlı yönetim ekranı olarak açık kalmalıdır.

Ana geliştirme çalışması devam ederken bu ekranı kullanabilmeliyim.

Bu ekran ana geliştirme işini durdurmamalı.

Bu ekranın amacı:

- hangi ajanların oluştuğunu
- hangi ajanların aktif olduğunu
- hangi ajanların beklediğini
- hangi ajanların tamamlandığını
- hangi ajanların hata verdiğini
- hangi ajanın hangi görevi yürüttüğünü
- bir ajanın hangi ana göreve bağlı olduğunu
- ajanların birbirine görev aktarmasını
- görevlerin hangi aşamada olduğunu
- toplam ajan ve görev durumunu
- canlı olay akışını

görsel ve canlı şekilde izleyebilmemdir.

Aynı ekran üzerinden, ana geliştirme çalışması devam ederken kontrollü şekilde:

- yeni görev verebilmeliyim
- yeni talimat gönderebilmeliyim
- mevcut bir ajanın/görevin talimatını değiştirebilmeliyim
- görevi durdurabilmeliyim
- görevi devam ettirebilmeliyim
- gerekiyorsa görevi yeniden başlatabilmeliyim
- gerekiyorsa yeni alt görev başlatabilmeliyim
- görev önceliğini değiştirebilmeliyim
- not ekleyebilmeliyim

Bunların tamamının ötesinde, yükleme/geliştirme devam ederken ANA PATRON AJAN DAHİL OLMAK ÜZERE bu sistemde bulunan TÜM AJANLARI manuel olarak kendim yönetebilmeliyim. Manuel yönetim yalnızca yukarıdaki örneklerle sınırlı değildir; sistemin ve Kimi Code'un desteklediği güvenli sınırlar içinde ana patron ajan dahil tüm ajanların görevlerine, talimatlarına, çalışma durumlarına, önceliklerine ve yönetilebilir diğer çalışma unsurlarına canlı çalışma sırasında manuel olarak müdahale edebilmeliyim.

Kimi Code'un kurulu sürümünde bir komutu/talimatı çalışan ajan üzerinde doğrudan değiştirmek desteklenmiyorsa, aynı kullanıcı amacına ulaşmak için o sürümün desteklediği güvenli yöntemi kendin belirle; gerekiyorsa görevi kontrollü durdurup yeni talimatla devam ettir veya uygun mevcut ajanı/görevi devam ettir.

Manuel müdahale yapıldığında ana projenin tamamını gereksiz yere durdurma.

Manuel müdahaleleri, görev değişikliklerini ve sonuçlarını kayıt altına al.

# ================================================== AJAN MERKEZİ — DİL ZORUNLULUĞU

AJAN CANLI İZLEME VE YÖNETİM MERKEZİNDE KULLANICIYA GÖRÜNEN HER ŞEY TÜRKÇE OLACAK.

İngilizce kullanıcı arayüzü istemiyorum.

Menüler, düğmeler, durumlar, başlıklar, açıklamalar, filtreler, tablolar, görev metinleri, kullanıcıya gösterilen hata/başarı mesajları, olay akışı ve yönetim kontrolleri Türkçe olacak.

Örneğin kullanıcıya görünen durumlar gerektiği yerde:

- Çalışıyor
- Bekliyor
- Tamamlandı
- Durduruldu
- Hata
- İptal Edildi
- Kuyrukta
- Devam Ediyor

gibi Türkçe gösterilsin.

Teknik olarak içeride kullanılması zorunlu olan kod/alan adları İngilizce olabilir; fakat benim kullandığım ajan yönetim ekranında kullanıcıya görünen arayüz İngilizce olmayacaktır.

# ================================================== AJAN MERKEZİ — GÖRSEL VE ANİMASYONLU ÇALIŞMA

Ajanların çalışmasını görsel ve animasyon hissiyle izleyebileceğim profesyonel bir ekran oluştur.

Ana yönetici/patron ajan ekranda belirgin ana düğüm olarak gösterilsin.

Ona bağlı alt ajanlar ve görevler grafik/ağ mantığında görsel düğümler olarak gösterilsin.

Ajanlar arasındaki görev ilişkileri ve görev aktarımı bağlantılarla görülebilsin.

Çalışan ajanlar görsel olarak aktif olduğu anlaşılacak şekilde canlı gösterilsin.

Uygun animasyon veya hareketli akış kullanılsın; fakat gereksiz ağır animasyonlarla tarayıcıyı veya sunucuyu yorma.

Bir ajan/görev seçildiğinde uygun detay alanında:

- ajan adı/kimliği
- mevcut durumu
- mevcut görevi
- bağlı olduğu ana görev
- çalışma süresi
- son güncelleme
- görev geçmişi
- alt görevleri
- son sonuçları
- hata durumu
- eklenen notlar

görülebilsin.

Canlı olay akışında uygun şekilde:

- ajan oluşturuldu
- görev oluşturuldu
- görev başladı
- görev bekliyor
- görev tamamlandı
- görev başarısız oldu
- görev durduruldu
- görev devam ettirildi
- görev yeniden başlatıldı
- görev başka ajana aktarıldı
- manuel talimat gönderildi
- görev/talimat değiştirildi
- öncelik değiştirildi

gibi olaylar zaman sırasıyla görülebilsin.

Özet bölümünde uygun şekilde:

- toplam ajan
- aktif ajan
- bekleyen ajan
- tamamlanan ajan
- hatalı ajan
- durdurulan ajan
- toplam görev
- çalışan görev
- kuyruktaki görev

durumları görülebilsin.

Arama ve filtreleme ile gerekli durumları, ajanları ve görevleri kolayca bulabileyim.

# ================================================== AJAN MERKEZİ — DEMO VE GERÇEK ÇALIŞMAYA GEÇİŞ

AnaBeyin'in ana geliştirme ajanları henüz oluşmamış olacağı için bu merkezin ilk doğrulamasını küçük ve hafif bir DEMO ajan/görev akışıyla yap.

Demo ekran boş olmasın.

Ana yönetici/patron ajan, örnek alt ajanlar, örnek görevler, görev aktarımı, çalışma, bekleme, tamamlanma ve hata gibi temel durumların ekranda gerçekten göründüğünü doğrula.

Demo için gereksiz çok sayıda ajan veya ağır veri oluşturma.

Ama demo yalnızca sahte bir görsel maket olarak kalmayacaktır.

Demo doğrulandıktan sonra kullanıcıdan yeni komut beklemeden aynı ana talimat kapsamında AnaBeyin ana geliştirmesine geç.

Gerçek ana proje ajanları ve görevleri oluşmaya başladığında panel gerçek çalışma verisini göstermeye başlasın.

Panel, gerçek Kimi Code ajan/oturum/görev olaylarını canlı izlemek için kurulu Kimi Code sürümünün desteklediği güvenli mekanizmayı kullansın.

Önce kurulu Kimi Code sürümünü tespit et ve o sürümde mevcut olan resmi/desteklenen yerel web, API, WebSocket, oturum, ajan veya görev olay kaynaklarından hangileri uygunsa kendin belirle.

Eski veya o sürümde kullanılmayan bir komuta körü körüne bağlanma.

Gerekirse Kimi Code'un yerel oturum/ajan/görev kayıtlarını güvenli biçimde okuyabilen bir katman kullan.

Panelin kendisi ana ajanların çalışmasını bloke etmesin.

# ================================================== AJAN MERKEZİ — SADECE BENİM ERİŞİMİM

Ajan Canlı İzleme ve Yönetim Merkezi herkese açık olmayacaktır.

Normal AnaBeyin ziyaretçileri bu yönetim ekranına erişememelidir.

Yalnızca yetkili kullanıcı olarak benim erişebileceğim güvenli erişim düzeni oluştur.

Ajanların çalışma kayıtlarında bulunabilecek hassas verileri, kimlik bilgilerini, tokenları, secretları veya sunucuya ait gizli bilgileri normal panel ekranında açık şekilde gösterme.

Manuel ajan/görev yönetim işlemleri de yetkisiz kullanıcılar tarafından çalıştırılamamalıdır.

# ================================================== AJAN MERKEZİ — RESPONSIVE VE VERİMLİLİK

Ajan Canlı İzleme ve Yönetim Merkezi:

- masaüstünde
- tablette
- mobil telefonda

kullanılabilir olsun.

Masaüstünde ayrıntılı grafik/ağ görünümü ve yönetim kontrolleri tam kullanılabilsin.

Tablet ve mobilde de ajanları izlemek ve gerekli temel yönetim işlemlerini gerçekleştirmek mümkün olsun.

Gereksiz kütüphane, gereksiz ajan, gereksiz kod, gereksiz animasyon ve gereksiz kaynak tüketimi oluşturma.

Ama sonucu eksik bırakma.

Mümkün olan en verimli yöntemle çalışan ve gerçek projeye bağlanan sistem oluştur.

# ================================================== AJAN MERKEZİ — İLK DOĞRULAMA KRİTERİ

AnaBeyin'in asıl geliştirme aşamasına geçmeden önce Ajan Canlı İzleme ve Yönetim Merkezi en az şu şartları sağlamalıdır:

- tamamen Türkçe kullanıcı arayüzü açılıyor
- yetkisiz normal ziyaretçiye açık değil
- demo ana ajan ve alt ajan ağı görsel olarak görünüyor
- canlı/animasyon hissi veren durum ve görev akışı çalışıyor
- özet durumları görünüyor
- olay akışı çalışıyor
- ajan/görev detay görünümü çalışıyor
- yeni görev/talimat verme temel kontrolü çalışıyor
- görev/talimat değiştirme temel kontrolü çalışıyor
- durdurma/devam ettirme gibi desteklenen temel yönetim kontrolleri çalışıyor
- masaüstü/tablet/mobil temel kullanım doğrulanıyor
- gerçek Kimi Code ajan/görev akışına bağlanabilecek çalışma yolu hazır
- HTTPS üzerinden güvenli erişim sağlanıyor
- kritik hata yok

Bu ilk doğrulama tamamlandıktan sonra RAPOR VERMEK İÇİN DURMA.

Bu ana talimatın geri kalanına otomatik olarak devam et.

AnaBeyin Core + Facebook benzeri AnaBeyin Sosyal geliştirmesine geç.

Gerçek ajanlar oluştuğu andan itibaren Ajan Canlı İzleme ve Yönetim Merkezi onları göstermeye devam etsin.

# ================================================== 0. PROJENİN DEĞİŞMEZ ANA HEDEFİ

Sen bu yeni AnaBeyin projesinin ana yönetici/patron yapay zekasısın.

Yeni AnaBeyin'i SIFIRDAN SEN oluşturacaksın.

Şu anda yapılacak ürün:

ANABEYIN SOSYAL

ve bu ürün açık şekilde:

FACEBOOK BENZERİ BİR SOSYAL MEDYA PLATFORMUDUR.

Burada açık kapı bırakılmayacaktır.

Tasarım:

Facebook'tan esinlenen/benzer sosyal medya kullanım mantığı taşıyabilir ancak AnaBeyin'in kendine özgü tasarımı ve marka kimliği olacaktır.

Fonksiyonlar açısından ise hedef çok daha nettir:

Facebook'un ana sosyal medya omurgasını oluşturan kullanıcı özellikleri ve sosyal fonksiyonlar AnaBeyin Sosyal içerisinde gerçek ve çalışır biçimde bulunacaktır.

Örneğin yalnızca örnek olması açısından:

- fotoğraf
- video
- kısa video/Reels tipi içerikler
- hikâyeler
- gönderiler
- yorumlar
- beğeniler/reaksiyonlar
- paylaşımlar
- sosyal ilişkiler
- profiller
- gruplar
- sayfalar
- mesajlaşma
- bildirimler

gibi bir sosyal platformun temel ve ileri özelliklerinin yalnızca görsel maketleri yapılmayacaktır.

GERÇEKTEN ÇALIŞACAKLARDIR.

Bu örnek liste sana özellik listesi vermek için yazılmamıştır.

Facebook'un sosyal platform omurgasını oluşturan TÜM gerekli özellikleri bizim ayrıca tek tek yazmamızı bekleme.

Facebook'un erişilebilir ürün yapısını, bütün kullanıcı alanlarını, bütün gerekli sayfalarını, sosyal kullanıcı akışlarını, özelliklerini ve bunların birbirleriyle ilişkilerini sayfa sayfa sistematik şekilde araştır ve incele.

Facebook benzeri kapsamlı sosyal medya ürününün bütün fonksiyonel kapsamını kendin çıkar.

Eksik özellikleri kendin keşfet.

Bunları AnaBeyin'e uygun şekilde sıfırdan yeniden uygula.

Sadece görünen frontend'i kopyalamış gibi davranma.

Her özellik gerektiği ölçüde:

- kullanıcı tarafı
- gerçek iş mantığı
- veri yapısı
- backend
- güvenlik
- yetkilendirme
- yönetim
- moderasyon
- operasyon
- test

taraflarıyla birlikte gerçekten çalışır hale gelmelidir.

Facebook'un kaynak kodunu, logosunu, ticari markasını veya özel görsel varlıklarını kopyalama.

HEDEF:

Facebook'un kodunu kopyalamak değil;

Facebook BENZERİ kapsamlı sosyal medya fonksiyonlarının tamamını AnaBeyin markası altında sıfırdan çalışan bir ürün olarak yeniden oluşturmaktır.

Sen yalnızca başlangıç kodunu yazan bir sistem değilsin.

Bu projenin patronu olarak hedefe ulaşmak için gerekli yapıyı kendin araştıracak, kendin planlayacak, kendin geliştirecek, kendin denetletecek ve kendin tamamlatacaksın.

\==================================================

1. TEMEL KURAL
   \==================================================

Bu yeni AnaBeyin sıfırdan kurulacaktır.

Eski proje yeni projenin kod tabanı DEĞİLDİR.

Eski referans klasörü sadece:

- görsel fikir
- mevcut tema inceleme
- sayfa yerleşimleri
- kullanıcı deneyimi fikirleri
- eski tasarımda beğenilebilecek unsurlar

için incelenebilir.

Eski kodu topluca yeni projeye kopyalama.

Eski backend'i yeniden kullanmaya çalışma.

Eski SQLite yapısını yeni sistemin zorunlu temeli kabul etme.

Yeni sistem için teknik mimariyi mevcut sunucuyu ve projenin çok büyük gelecekteki kapsamını değerlendirerek kendin belirle.

# ================================================== 2. PROJENİN GENEL YAPISI

AnaBeyin ileride çok sayıda büyük bölüm barındıracaktır.

Ancak ŞU ANDA yalnızca:

ANABEYIN CORE

-

ANABEYIN SOSYAL

üzerinde çalışılacaktır.

ŞU ANKİ TEK ÜRÜN HEDEFİ:

FACEBOOK BENZERİ TAM ÇALIŞAN ANABEYIN SOSYAL'DİR.

Eski referans tasarımında gördüğün:

- ilan
- emlak
- araç
- eşleşme
- ikinci el/pazar
- mağaza
- blog
- forum
- sözlük
- hizmet
- yemek
- ulaşım
- personel
- oyun
- AI
- mail

ve bunlara benzeyen DİĞER ANA KATEGORİLERİN HİÇBİRİNİ ŞU ANDA GELİŞTİRME.

Eski tasarımda bunların sayfasını, menüsünü veya kategorisini görmen onları geliştirmen gerektiği anlamına GELMEZ.

ŞU ANDA ONLARA SAKIN ÇALIŞMA.

Bu bölümler sonraki ayrı projelendirme aşamalarında ele alınacaktır.

Fakat oluşturacağın AnaBeyin Core mimarisi ileride bunların aynı kullanıcı hesabı ve ortak AnaBeyin altyapısına eklenebilmesine uygun olmalıdır.

# ================================================== 3. ANA YÖNETİCİ / PATRON YAPAY ZEKA

Bu projede sen yalnızca verilen kod görevlerini yerine getiren bir kod ajanı değilsin.

Bu projenin geliştirme organizasyonunu yöneten ANA YÖNETİCİ/PATRON yapay zekasısın.

Ana hedef:

Facebook benzeri AnaBeyin Sosyal'i sıfırdan araştırmak,

planlamak,

geliştirmek,

denetlemek,

test etmek

ve gerçek çalışır ürüne dönüştürmektir.

Bu hedef için gerekli çalışma organizasyonunu SEN oluştur.

- Ana hedefi analiz edebilirsin.
- İşi kendi alt görevlerine bölebilirsin.
- İhtiyaç duyduğun uzman ajanları/alt ajanları kendin oluşturabilirsin.
- Kaç ajana ihtiyaç duyulduğuna kendin karar verebilirsin.
- Ajanlara görev verebilirsin.
- Görevleri değiştirebilirsin.
- Gereksiz ajanları durdurabilirsin.
- Başarısız yapı yerine yeni çözüm/uzmanlık oluşturabilirsin.
- Gerektiğinde yapılan işi başka bir bağımsız kontrol mekanizmasına doğrulatabilirsin.
- Organizasyonunu proje ilerledikçe yeniden düzenleyebilirsin.

SABİT AJAN LİSTESİ OLUŞTURMA.

Biz sana:

"frontend ajanı kur"

"backend ajanı kur"

"profil ajanı kur"

"şu kadar ajan oluştur"

gibi bir organizasyon vermiyoruz.

Gerekli organizasyonu SEN belirleyeceksin.

# ================================================== 4. DENETİM SİSTEMİ EN BAŞTA KURULACAK

Geliştirmeye kontrolsüz biçimde başlamadan önce kendi DENETİM mekanizmanı oluştur.

Gerekli denetçi ajanlarını/kontrol mekanizmalarını en başta SEN belirle ve oluştur.

Biz sana:

- kaç denetçi olacağını
- isimlerinin ne olacağını
- hangi alt görevleri yapacaklarını
- nasıl organize olacaklarını

tek tek söylemiyoruz.

Bunları kendin belirle.

Ancak oluşturacağın denetim yapısının amacı nettir:

Projenin gereksiz ajanlarla şişmesini,

gereksiz kod üretilmesini,

aynı işin tekrar tekrar yapılmasını,

çalışan sistemlerin sebepsiz bozulmasını,

eksik işlerin tamamlanmış gösterilmesini

ve ana hedeften sapılmasını önleyen bir çalışma düzeni oluştur.

BU DENETİM VE VERİMLİLİK PRENSİBİNİN ALT KURALLARINI KENDİN TASARLA.

Biz sana alt maddelerini vermiyoruz.

Sistem kendi çalışma yöntemini oluşturmalı fakat kendi kendini de denetlemelidir.

# ================================================== 5. ANA YÖNETİCİ SINIRLARI

Özgür çalış fakat başıboş çalışma.

Ana hedef dışına çıkma.

Facebook benzeri AnaBeyin Sosyal'i oluşturmak için doğal olarak gereken fakat bizim tek tek söylemediğimiz özellikleri kendin araştır, keşfet ve ekle.

Kendi çalışma, denetim, kalite, ajan kullanımı, kod verimliliği ve tekrar önleme prensiplerini kendin geliştir.

Gereksiz ajan çalıştırma.

Gereksiz kod üretme.

Ama bunları engelleyecek ayrıntılı kuralları ve çalışma yöntemini kendin belirle.

Eksik işi tamamlandı gösterme.

Gerçekten doğrulanmamış özelliği çalışıyor kabul etme.

Kritik hataları gizleme.

Ana hedef tamamlanana kadar işi planlı biçimde sürdür.

Her küçük görevden sonra kullanıcıdan yeni emir bekleyerek sistemi gereksiz yere durdurma.

Güvenli ve geri alınabilir geliştirme kararlarını kendin ver.

Bir görev başarısız olduğunda analiz et, uygun alternatif yöntemi belirle ve devam et.

Yalnızca geri döndürülemez veri kaybı, sunucu erişimi kaybı veya korunan yedeklerin zarar görmesi gibi kritik bir durum oluşursa dur ve bildir.

# ================================================== 6. KOTA, KAYNAK VE AJAN VERİMLİLİĞİ

HEDEF KESİNLİKLE TAMAMLANACAKTIR.

Fakat hedefe ulaşırken mümkün olan EN AZ gereksiz kota ve EN AZ gereksiz kaynak tüketimiyle ilerle.

Gereksiz:

- ajan çağrısı
- tekrar araştırma
- tekrar dosya okuma
- aynı kodu tekrar üretme
- aynı görevi tekrar yaptırma
- gereksiz uzun analiz
- gereksiz test tekrarı
- gereksiz işlem
- gereksiz bellek kullanımı

oluşturma.

Bir işi güvenli ve doğru biçimde daha az ajanla tamamlayabiliyorsan gereksiz fazladan ajan oluşturma.

Ancak KOTA VE KAYNAK TASARRUFU hiçbir zaman:

- özelliği eksik bırakmak
- gerekli araştırmayı yapmamak
- gerekli testi atlamak
- kaliteyi düşürmek
- güvenliği azaltmak
- çalışmayan sistemi çalışıyor göstermek
- hedefi küçültmek

anlamına GELMEZ.

Öncelik:

ÖNCE SONUCA KESİN ULAŞ.

SONRA BU SONUCA MÜMKÜN OLAN EN VERİMLİ VE EN AZ GEREKSİZ KOTA TÜKETEN YÖNTEMLE ULAŞ.

Bu prensibin ayrıntılı alt kurallarını ve en verimli çalışma yöntemini SEN belirle.

# ================================================== 7. FACEBOOK BENZERİ SOSYAL PLATFORM ARAŞTIRMASI

Biz sana Facebook'un özelliklerini manuel liste halinde vermeyeceğiz.

Facebook benzeri sosyal platformun özellik kapsamını SEN çıkaracaksın.

Facebook'un erişilebilir sosyal medya ürününde bulunan:

- ana kullanıcı alanlarını
- sayfa türlerini
- profil yapısını
- sosyal ilişkileri
- içerik türlerini
- medya sistemlerini
- kullanıcı etkileşimlerini
- iletişim sistemlerini
- topluluk sistemlerini
- gizlilik davranışlarını
- güvenlik ve moderasyon gereksinimlerini
- kullanıcı ayarlarını
- sosyal keşif mekanizmalarını
- içerik üretim ve tüketim akışlarını
- platformun ana omurgasını oluşturan diğer sosyal fonksiyonları

kapsamlı biçimde araştır.

BUNLAR DA SANA KAPALI BİR ÖZELLİK LİSTESİ DEĞİLDİR.

Facebook benzeri ürünün gerekli kapsamını kendin genişlet ve çıkar.

Facebook'un erişebildiğin tüm kullanıcı alanlarını, tüm gerekli sayfalarını ve sosyal akışlarını SAYFA SAYFA sistematik biçimde incele.

Facebook'un ana sosyal medya omurgasını oluşturan özellikleri kapsamlı biçimde taramadan ve AnaBeyin'deki karşılıklarını belirlemeden kapsamı tamamlanmış kabul etme.

Bir özelliği yalnızca adını görüp geçme.

O özelliğin AnaBeyin içerisinde nasıl gerçek bir ürün özelliği olarak çalışması gerektiğini analiz et.

Gerekli fonksiyonları AnaBeyin'e sıfırdan uygula.

Ana hedef:

Facebook'un sosyal medya platformu olarak sunduğu ana fonksiyon kapsamının AnaBeyin Sosyal içerisinde işlevsel karşılıklarının bulunmasıdır.

Fotoğraf yükleme gerçekten çalışmalıdır.

Video yükleme ve oynatma gerçekten çalışmalıdır.

Kısa video sistemi gerçekten çalışmalıdır.

Hikâyeler gerçekten çalışmalıdır.

Gönderiler gerçekten çalışmalıdır.

Yorumlar gerçekten çalışmalıdır.

Beğeniler/reaksiyonlar gerçekten çalışmalıdır.

Sosyal bağlantılar gerçekten çalışmalıdır.

Mesajlaşma gibi geliştirilen iletişim özellikleri gerçekten çalışmalıdır.

Bunlar yalnızca örnektir.

Gerçek kapsamı SEN araştırıp tamamlayacaksın.

# ================================================== 8. HER ÖZELLİĞİN GEREKTİRDİĞİ ALT SİSTEMLERİ KENDİN BUL

Biz sana bir özelliğin yapılabilmesi için gereken bütün teknik ve fonksiyonel alt parçaları tek tek anlatmayacağız.

Bir özellik geliştirildiğinde, o özelliğin TAM VE GERÇEK ÇALIŞABİLMESİ için gereken diğer bütün parçaları SEN araştıracak, keşfedecek ve geliştireceksin.

Örneğin video bölümü geliştiriyorsan:

Video bölümünün gerçekten çalışması için ne gerekiyorsa SEN belirle ve tamamla.

Bu yalnızca video için verilen bir örnektir.

Aynı prensip geliştirdiğin HER özellik için geçerlidir.

Bir özelliğin:

- kullanıcı tarafında
- backend tarafında
- veri tarafında
- medya/dosya tarafında
- güvenlik tarafında
- yetkilendirme tarafında
- yönetim tarafında
- hata yönetiminde
- test tarafında
- diğer özelliklerle entegrasyonunda

çalışması için ne gerekiyorsa kendin bul.

Burada bizim ismini bile söylemediğimiz fakat o özelliğin düzgün çalışabilmesi için doğal olarak gerekli olan parçaları da SEN keşfet.

"Bana ayrıca söylenmedi" diyerek doğal olarak gerekli hiçbir parçayı eksik bırakma.

Biz sana TEK TEK NASIL YAPACAĞINI anlatmıyoruz.

Biz sana SONUCU söylüyoruz:

GELİŞTİRİLEN ÖZELLİK TAM ÇALIŞACAK.

Bunu sağlamak için gereken kapsamı SEN tamamlayacaksın.

# ================================================== 9. ANABEYIN TASARIM KİMLİĞİ

Yeni AnaBeyin temasını sıfırdan tasarla.

Ana ürün:

FACEBOOK BENZERİ SOSYAL MEDYA PLATFORMU

olduğu için kullanıcı deneyimi ve sosyal medya yerleşim mantığı bu tür büyük sosyal platformlardan ilham alabilir.

Ancak birebir Facebook tasarımını kopyalama.

AnaBeyin'in kendi görsel kimliğini oluştur.

ANA RENK:

Türk bayrağı kırmızısının dijital kullanım karşılığı:

HEX: `#E30A17`

RGB: `227, 10, 23`

Facebook'taki karakteristik ana mavi rengin AnaBeyin tasarımındaki karşılığı bu kırmızı olacaktır.

Yani:

Facebook benzeri sosyal medya görsel mantığında mavinin üstlendiği ana marka/vurgu rolünü AnaBeyin'de `#E30A17` kırmızısı üstlenecektir.

Bunu bütün ekranı kırmızıya boyamak şeklinde yorumlama.

Profesyonel tasarım sistemi oluştur.

Ana renk:

`#E30A17`

olacak ve tasarımda marka/vurgu rengi olarak tutarlı şekilde kullanılacaktır.

Gerekli:

- nötr renkleri
- arka planları
- metin renklerini
- durum renklerini
- açık/koyu varyasyonları
- erişilebilir kontrastları

tasarım sisteminin ihtiyacına göre kendin oluştur.

# ================================================== 10. SOSYAL YÖNETİM ANA MERKEZLERİ

AnaBeyin Yönetim içerisinde Sosyal bölümü için aşağıdaki ANA YÖNETİM MERKEZLERİ zorunlu olacaktır:

1. Sosyal Genel Yönetim / Komuta Merkezi
2. Üst Yönetim Merkezi
3. Personel, Departman ve Yetki Yönetimi
4. Operasyon Yönetimi
5. Kullanıcı & Hesap Yönetimi
6. Sosyal İlişkiler Yönetimi
7. İçerik Yönetimi
8. Medya & Canlı Yayın Yönetimi
9. Gruplar, Sayfalar & Topluluklar Yönetimi
10. Mesajlaşma & İletişim Yönetimi
11. Akış, Keşfet, Arama & Öneri Sistemleri Yönetimi
12. Bildirim & Kullanıcı İletişimleri Yönetimi
13. Moderasyon Merkezi
14. Güven, Emniyet & Kötüye Kullanım Merkezi
15. Çağrı Merkezi
16. Müşteri Hizmetleri / CRM Merkezi
17. Hukuk, KVKK, Gizlilik & Uyum Merkezi
18. Reklam, Profesyonel Hesaplar & İçerik Üreticileri Yönetimi
19. Analitik & Raporlama Merkezi
20. Güvenlik Merkezi
21. Teknik Sistem & Altyapı Yönetimi
22. Geliştirme, Test & Sürüm Yönetimi
23. Log, Denetim & Kayıt Merkezi
24. Yedekleme, Felaket Kurtarma & Kriz Merkezi
25. Yapay Zeka & Otomasyon Yönetim Merkezi

BUNLAR SADECE ANA MERKEZLERDİR.

Bu merkezlerin:

- alt sayfalarını
- sekmelerini
- iş akışlarını
- tablolarını
- araçlarını
- yönetim fonksiyonlarını
- raporlarını
- müdür/yönetici ekranlarını
- gerekli diğer alt yönetim alanlarını

BİZ TEK TEK TARİF ETMİYORUZ.

Bunları AnaBeyin Sosyal'in gerçek ihtiyaçlarını analiz ederek KENDİN oluştur.

Bu 25 merkez seni sınırlayan maksimum liste değildir.

Gerçekten gerekli yeni bir ana yönetim alanı keşfedersen ekleyebilirsin.

Ancak gereksiz yönetim merkezi üretme.

# ================================================== 11. KURUMSAL FİRMA MANTIĞI

AnaBeyin küçük bir demo sitesi gibi düşünülmeyecek.

Gerçek bir teknoloji şirketinin işlettiği büyük sosyal platform mantığıyla tasarlanacaktır.

Yönetim sistemi yalnızca basit bir admin paneli olmayacaktır.

Gerektiği yerlerde:

- üst yönetim
- departman yönetimleri
- müdürlükler
- personel
- operasyon
- çağrı merkezi
- müşteri hizmetleri
- moderasyon
- güvenlik
- hukuk
- teknik operasyon
- kalite
- denetim

gibi gerçek kurumsal işleyiş ihtiyaçlarını kendin tespit et.

Bunların detaylarını biz sana vermiyoruz.

# ================================================== 12. YÖNETİM SİSTEMİ TASARIM PRENSİBİ

Tek bir devasa admin.html yapma.

Gerçek ölçeklenebilir yönetim uygulaması oluştur.

Ana yönetim ekranından Sosyal'e girildiğinde gerekli yönetim merkezlerine ulaşılabilsin.

Yetkisi olmayan personel görememesi gereken bölümlere erişemesin.

Yönetim uygulaması:

MASAÜSTÜNDE TAM ÇALIŞIR,

TABLETTE TAM ÇALIŞIR,

MOBİL TELEFONDA TAM ÇALIŞIR

olacak şekilde hedeflenmelidir.

Mobil/tablet ikincil veya eksik yönetim deneyimi değildir.

Hedef:

Yetkili yönetici/personelin gerekli yönetim işlemlerini masaüstü, tablet ve mobil cihazlardan gerçek şekilde yapabilmesidir.

Responsive tasarım yalnızca ekranın küçülmesi anlamına gelmez.

Kullanım, navigasyon, tablolar, formlar, kontroller, raporlar ve gerekli yönetim fonksiyonları cihazlara uygun şekilde erişilebilir ve kullanılabilir olmalıdır.

Yapılabilecek en yüksek seviyede tam mobil/tablet yönetim deneyimi oluştur.

# ================================================== 13. KULLANICI TARAFI RESPONSIVE HEDEF

AnaBeyin Sosyal kullanıcı tarafı da:

- masaüstü
- dizüstü
- tablet
- mobil telefon

ekranlarında gerçek kullanılabilir ürün olacaktır.

Mobil sürüm masaüstünün bozuk veya eksik küçültülmüş hali olmayacaktır.

Ana sosyal özelliklerin cihazlar arasında çalışması hedeflenecektir.

Tasarımsal sunum cihaza göre değişebilir fakat temel sosyal fonksiyonların cihaz nedeniyle kaybolması hedeflenmeyecektir.

# ================================================== 14. GERÇEK TEST / DEMO TOPLULUĞU

AnaBeyin Sosyal'in geliştirilmesi sırasında ve teslim edilmeden önce siteyi yalnızca boş ekranlarla veya birkaç manuel kayıtla test etme.

Gerçek sosyal medya kullanımını simüle etmek için kontrollü TEST/DEMO kullanıcıları ve içerikleri oluştur.

EN AZ:

- 20 test kullanıcısı
- 20 test sayfası
- 20 test grubu

oluştur.

Test gereksinimi için daha fazlası gerçekten gerekiyorsa gerekli miktarı kendin belirleyebilirsin.

Ancak gereksiz yüzlerce kullanıcı, sayfa veya grup oluşturarak sistem kaynaklarını ve belleği boş yere tüketme.

Mümkün olan EN KÜÇÜK VE EN VERİMLİ test topluluğuyla mümkün olan EN GENİŞ gerçek kullanım kapsamını test et.

Bu test kullanıcıları gerçek insanlar değildir.

Sistemin gerçekten çalıştığını sınamak için oluşturulan test/demo kullanıcılardır.

Test kullanıcılarını gerçek kullanıcı davranışlarını sınayabilecek şekilde kullan.

Gerekli olduğu ölçüde bunların:

- profil oluşturmasını
- profil resmi yüklemesini
- kapak resmi yüklemesini
- arkadaşlık kurmasını
- takip etmesini
- gönderi paylaşmasını
- resim paylaşmasını
- video paylaşmasını
- kısa video paylaşmasını
- hikâye oluşturmasını
- sayfa oluşturmasını/kullanmasını
- grup oluşturmasını/kullanmasını
- birbirlerinin gönderilerini görmesini
- birbirlerini beğenmesini
- reaksiyon vermesini
- yorum yapmasını
- yorumlara cevap vermesini
- içerik paylaşmasını
- sayfaları takip etmesini
- gruplara katılmasını
- mesajlaşmasını
- bildirim oluşturmasını

ve geliştirilen diğer sosyal özellikleri GERÇEKTEN kullanmasını sağla.

BU DA KAPALI BİR TEST LİSTESİ DEĞİLDİR.

AnaBeyin Sosyal içerisinde hangi özellikleri geliştiriyorsan o özelliklerin gerçek kullanıcılar arasında nasıl çalışması gerekiyorsa gerekli test senaryolarını SEN oluştur.

# ================================================== 15. TEST İÇERİKLERİ VE MEDYA

Test kullanıcılarını, sayfalarını ve gruplarını boş bırakma.

Sitenin gerçek çalışmasını gösterecek kadar örnek içerik oluştur.

Gerekli yerlere:

- örnek profil fotoğrafları
- örnek kapak fotoğrafları
- örnek gönderi resimleri
- küçük boyutlu test videoları
- kısa video/Reels testleri
- hikâye test içerikleri
- sayfa içerikleri
- grup içerikleri
- yorumlar
- reaksiyonlar
- sosyal etkileşimler

yerleştir.

Ancak test amacıyla gereksiz büyük dosyalar oluşturma.

Belleği, depolamayı, işlemciyi, bant genişliğini ve kotayı gereksiz tüketme.

Test görselleri ve videoları özelliğin GERÇEKTEN çalıştığını test edecek kadar gerçek fakat mümkün olan en küçük uygun boyutta olsun.

Özellikle videolarda yalnızca ekranda sahte bir video kartı gösterme.

GERÇEK DOSYA YÜKLEME AKIŞINI TEST ET.

GERÇEK VİDEO OYNATMA AKIŞINI TEST ET.

Fotoğraflarda da gerçek yükleme ve görüntüleme akışını test et.

# ================================================== 16. TESTLER SADECE GÖRÜNTÜ DOLDURMAK İÇİN DEĞİLDİR

Test kullanıcıları, test sayfaları, test grupları ve test içerikleri yalnızca siteyi dolu göstermek amacıyla oluşturulmayacaktır.

Bunlarla sistemin gerçekten çalıştığını uçtan uca doğrula.

Örneğin:

TEST KULLANICI A bir işlem yaptığında,

TEST KULLANICI B'nin görmesi gereken sonuç gerçekten oluşuyor mu?

Bir kullanıcı diğerine yorum yaptığında gerçekten görünüyor mu?

Beğeni/reaksiyon sayıları gerçekten değişiyor mu?

Arkadaşlık gerçekten iki kullanıcı arasında oluşuyor mu?

Takip ilişkisi gerçekten çalışıyor mu?

Bildirim gerçekten doğru kullanıcıya gidiyor mu?

Sayfa gerçekten kullanıcı tarafından oluşturulup yönetilebiliyor mu?

Grup gerçekten oluşturulup üyelik/etkileşim sistemiyle çalışıyor mu?

Video gerçekten yükleniyor ve başka kullanıcı tarafından oynatılabiliyor mu?

Yönetim tarafında görülmesi gereken işlem gerçekten görünüyor mu?

Bu yalnızca örnektir.

Hangi kullanıcılar arası, özellikler arası ve yönetim tarafı testlerinin gerekli olduğuna SEN karar ver.

Geliştirdiğin her önemli sosyal özelliği gerçek test/demo kullanıcılarıyla doğrula.

# ================================================== 17. TEST VERİSİNİ VERİMLİ OLUŞTUR

Test kullanıcılarını, sayfaları, grupları ve örnek içerikleri mümkün olduğunca tekrar kullanılabilir otomasyon/seed/test düzeniyle oluştur.

Aynı test verisini oluşturmak için her seferinde gereksiz yapay zekâ ajanı çalıştırma.

Mümkün olan yerde uygun script, seed ve test otomasyonlarını kullan.

Test verileri gerçek kullanıcı verilerinden ayırt edilebilir olsun.

Gerektiğinde test/demo verilerinin hangileri olduğu anlaşılabilsin.

Gerektiğinde sistemin gerçek kullanıcı verilerine zarar vermeden yalnızca test/demo verileri yönetilebilsin.

# ================================================== 18. TESLİM EDİLDİĞİNDE BİZ DE ÇALIŞTIĞINI GÖRECEĞİZ

Proje bize teslim edildiğinde yalnızca:

"kod yazıldı"

veya

"otomatik testler geçti"

şeklinde bir sonuç istemiyoruz.

Siteyi açtığımızda geliştirilmiş sosyal özellikleri GÖZÜMÜZLE GÖREBİLMELİ ve deneyebilmeliyiz.

Teslim edilen sistemde test/demo topluluğu sayesinde:

- profiller
- kullanıcılar
- gerçek yüklenmiş fotoğraflar
- gerçek yüklenmiş ve oynatılabilir test videoları
- gönderiler
- hikâyeler
- kısa videolar
- beğeniler
- reaksiyonlar
- yorumlar
- sosyal bağlantılar
- gruplar
- sayfalar
- geliştirilen diğer sosyal özellikler

görülebilir ve çalışır durumda olsun.

Sadece dummy kartlardan veya görsel maketlerden oluşan bir sistem teslim etme.

Gösterilen sosyal içerikler gerçek backend/veritabanı ve gerçek ürün fonksiyonları üzerinden çalışmalıdır.

# ================================================== 19. BU İLK GÖREVDE YAPILACAK

Bu aşamada:

A) Yeni projenin teknik temelini oluştur.

B) AnaBeyin Core için gerekli temel mimariyi oluştur.

C) Yönetim uygulamasının temelini oluştur.

D) Yukarıdaki 25 Sosyal Yönetim Ana Merkezi için gerçek navigasyon/ana yönetim iskeletini oluştur.

E) Yönetim merkezlerinin gerekli iç yapısını analiz etmeye ve oluşturmaya başlayabilecek sistem mimarisini hazırla.

F) Ana Yönetici çalışma düzenini ve kendi alt ajanlarını kendisinin yönetebilmesi için gerekli proje/yönetim altyapısını oluştur.

G) Projenin durumunu, yapılan işleri, bekleyen işleri, hataları ve doğrulama sonuçlarını kalıcı şekilde takip edebilecek düzen kur.

H) Test ve doğrulama temelini oluştur.

I) Denetim mekanizmasını geliştirme başlamadan devreye al.

J) Yeni sistemi production ortamına güvenli şekilde bağla.

K) Ana sayfanın geçici "hazırlanıyor" ekranı yerine yeni AnaBeyin'in gerçek başlangıç yapısını yayına al.

Bu ilk görev gelecekteki tam Sosyal sistemin sağlam çalışma temelidir.

# ================================================== 20. BU AŞAMADA YAPILMAYACAK

ŞU ANDA SOSYAL DIŞINDA HİÇBİR ANA ÜRÜN GELİŞTİRME.

Özellikle eski referans tasarımında gördüğün:

- ilan
- emlak
- araç
- eşleşme
- ikinci el/pazar
- mağaza
- blog
- forum
- sözlük
- hizmet
- yemek
- ulaşım
- personel
- oyun
- AI
- mail

ve benzeri diğer AnaBeyin bölümlerine çalışma.

Sayfalarının eski referansta bulunması onları yeni sisteme taşıman gerektiği anlamına GELMEZ.

Bunları oluşturma.

Bunları tamamlamaya çalışma.

Bunların backend'ini yazma.

Bunların ajan görevlerini başlatma.

ŞU AN TEK HEDEF:

ANABEYIN CORE

-

FACEBOOK BENZERİ ANABEYIN SOSYAL

# ================================================== 21. GÜVENLİK

Şunlara dokunma:

`/root/anabeyin-yedekler/`

`/root/anabeyin-eski-referans-20260812-192751`

`/etc/letsencrypt` içindeki mevcut sertifikalar

SSH yapılandırması

Eski referans salt referanstır.

# ================================================== 22. ÇALIŞMA ŞEKLİ — DURMADAN İLERLE

Bu görevi aldıktan sonra önce sistemi incele.

Gerekli teknik kararları kendin ver.

Gerekli ajanları kendin oluştur ve yönet.

Gerekli denetim organizasyonunu kendin oluştur.

Her küçük karar için bana soru sorma.

Güvenli ve geri alınabilir kararları kendin al.

Bir yöntem başarısız olursa problemi analiz et ve uygun alternatif yöntemi dene.

Ana hedef doğrultusunda sıradaki işi kendin belirleyerek ilerle.

Bir alt görev tamamlandığında kullanıcıdan yeni komut bekleyip DURMA.

Belirlenmiş ana hedef kapsamında sıradaki gerekli göreve kendin geç.

Ana hedef tamamlanana kadar planlı şekilde ilerlemeye DEVAM ET.

Bir ajan görevi bitirdiğinde gerekiyorsa sonraki görevi planla.

Bir ajan başarısız olduğunda gerekiyorsa yöntemi değiştir veya uygun çözümü oluştur.

Bir özellik için başka bir şey gerekiyorsa onun bize ayrıca söylenmesini bekleme; kendin tespit et ve devam et.

Bir sayfanın başka bir backend, veri yapısı, servis, medya sistemi, test veya bağlantıya ihtiyacı varsa bunu kendin bul ve tamamla.

Her küçük aşamada kullanıcı komutu bekleyerek projeyi durdurma.

Gereksiz rapor vererek geliştirmeyi bölme.

Gereksiz ajan ve kota kullanmadan, fakat HEDEFİ EKSİLTMEDEN devam et.

Yalnızca:

- geri döndürülemez veri kaybı
- korunan yedeklerin zarar görmesi
- sunucu erişiminin kaybedilmesi
- devam etmek için gerçekten zorunlu ve kullanıcı tarafından verilmesi gereken kritik bilgi

gibi ilerlemeyi güvenli biçimde imkânsız hale getiren kritik bir durum oluşursa dur ve bildir.

Çalışma düzeninin:

- süreklilik
- denetim
- kalite
- gereksiz ajan/kod kullanımını önleme
- kota verimliliği
- görev takibi
- başarısızlıktan toparlanma

kurallarının ayrıntılarını KENDİN oluştur.

Biz bu alt kuralları sana yazmıyoruz.

# ================================================== 23. TAMAMLANDI KRİTERİ

Bu ilk aşama ancak:

- yeni proje gerçekten kurulmuş
- eski projeden bağımsız
- HTTPS üzerinden çalışıyor
- yönetim uygulaması açılıyor
- 25 ana Sosyal yönetim merkezi yönetim navigasyonunda mevcut
- yönetim yapısı ölçeklenebilir
- kullanıcı/yönetici yetki sisteminin temeli mevcut
- denetim mekanizması mevcut
- proje durum/denetim sistemi mevcut
- test altyapısı mevcut
- tasarım sistemi `#E30A17` AnaBeyin ana marka rengiyle oluşturulmuş
- masaüstü/tablet/mobil temel kullanım doğrulanmış
- kritik hatalar yok
- yeniden başlatma sonrası sistem çalışıyor
- Ajan Canlı İzleme ve Yönetim Merkezi gerçek proje ajanlarını/görevlerini canlı gösteriyor
- Ajan Canlı İzleme ve Yönetim Merkezi kullanıcıya görünen arayüzde tamamen Türkçe çalışıyor
- Ajan Canlı İzleme ve Yönetim Merkezi yalnızca yetkili erişime açık
- desteklenen manuel ajan/görev yönetim kontrolleri gerçek çalışma sırasında kullanılabiliyor

ise tamamlandı kabul edilebilir.

Geliştirilen önemli sosyal özelliklerde yalnızca kodun mevcut olması TAMAMLANMIŞ anlamına gelmez.

Özellik gerçekten çalışmalı ve gerekli test/demo kullanıcılarıyla gerçek akışta doğrulanmalıdır.

Geliştirilmiş önemli bir özellik için gerekli olduğu ölçüde:

- frontend çalışmalı
- backend çalışmalı
- gerçek veri akışı çalışmalı
- kullanıcılar arasında çalışmalı
- medya varsa gerçek dosyayla çalışmalı
- gerekli yönetim karşılığı çalışmalı
- masaüstü/tablet/mobil hedefleri çalışmalı
- hata senaryoları kontrol edilmiş olmalı

ve ancak bundan sonra tamamlandı kabul edilmelidir.

# ================================================== 24. BİTİNCE RAPOR

BİTİNCE:

1. Hangi teknik mimariyi seçtiğini,
2. Neden seçtiğini,
3. Oluşturduğun ana klasör yapısını,
4. Yönetim sisteminin URL'sini,
5. Ajan Canlı İzleme ve Yönetim Merkezi'nin URL'sini,
6. Ajan merkezinin gerçek Kimi Code ajan/görev akışına canlı bağlantı durumunu,
7. Ajan merkezinde çalışan Türkçe manuel yönetim kontrollerini ve erişim korumasını,
8. 25 merkezin durumunu,
9. Ana Yönetici çalışma sisteminin nasıl kurulduğunu,
10. Kendi oluşturduğun/kullandığın ajan organizasyonunu,
11. Denetim sistemini nasıl oluşturduğunu,
12. Gereksiz ajan, gereksiz kod ve gereksiz kota kullanımını nasıl denetlediğini,
13. Servislerin durumunu,
14. Nginx durumunu,
15. Test sonuçlarını,
16. Oluşturulan test kullanıcıları, test sayfaları ve test gruplarının durumunu,
17. Fotoğraf/video ve diğer gerçek medya testlerinin sonucunu,
18. Kullanıcılar arası uçtan uca sosyal testlerin sonucunu,
19. Masaüstü/tablet/mobil doğrulama sonuçlarını,
20. Henüz yapılmamış işleri,
21. Bir sonraki mantıklı geliştirme aşamasını

dürüst şekilde raporla.

Ayrıca raporda:

- şu anda toplam kaç ajan oluşturduğunu
- kaçının aktif olduğunu
- kaçının işi bittiği için kapatıldığını
- ajanların hangi ana amaçlarla kullanıldığını

özetle.

Eksik işi tamamlanmış gösterme.

Bu rapor bir sonraki geliştirme aşamasına geçip geçmeyeceğimizi belirlemek için kullanılacaktır.

ANA HEDEFİ UNUTMA:

SEN BU PROJENİN ANA YÖNETİCİ/PATRON YAPAY ZEKASISIN.

FACEBOOK BENZERİ ANABEYIN SOSYAL'İ SIFIRDAN SEN OLUŞTURACAKSIN.

BİZ SANA FACEBOOK'UN BÜTÜN ÖZELLİKLERİNİ TEK TEK SAYMAYACAĞIZ.

GEREKLİ TÜM SOSYAL ÖZELLİKLERİ, SAYFALARI, ALT SİSTEMLERİ, BAĞIMLILIKLARI VE TESTLERİ SEN ARAŞTIRIP BELİRLEYECEKSİN.

GEREKSİZ AJAN VE KOTA TÜKETMEYECEKSİN.

FAKAT KOTA TASARRUFU UĞRUNA HEDEFTEN, ÇALIŞIRLIKTAN, TESTTEN VE TAMLIKTAN ÖDÜN VERMEYECEKSİN.

ANA HEDEF TAMAMLANANA KADAR GEREKSİZ YERE DURMAYACAKSIN.