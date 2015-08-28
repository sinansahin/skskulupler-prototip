Bu depo UZEM Akademi Yazılım Kampı 2015'de verilmiş bir proje deposudur. Bu proje bir MobilAçık proje yarışması adayıdır.

#Yazılım Kampı Nedir?

Yazılım Kampı teknoloji dünyasına meraklı yazılımcıları bir araya toplamayı amaçladığımız bir etkinliktir. 2014 yılında birincisi düzenlenen bu etkinliğin eğitimden çok daha fazlası olduğuna inanıyoruz.

UZEM Akademi Yazılım Kampı'nın bu yıl ikincisini düzenledik. Bu kampı eğitim ve yazılım dünyasına katkıda bulunacak bir sorumluluk projesi olarak görmekteyiz. Kamp süresince birçok konu hakkında eğitimler verdik. Sonuna yaklaştığımız bu süreçte yoğun bir uygulama haftasına adım atmış bulunmaktayız. Bu uygulama haftasında katılımcılarla MobilAçık proje yarışmasını düzenliyoruz.

#MobilAçık Nedir?

Günümüzde herkesin kullandığı mobil cihazlar (akıllı telefonlar, tabletler, akıllı bileklikler, akıllı saatler vs) için özel olarak geliştirilen uygulamalara "Mobil Uygulama" denilmektedir. Bizler mobil uygulamayı açık kaynak kodlu yazılım felsefesi ile harmanlayarak MobilAçık isimli bir düşünce ortaya koyduk.

#Proje: SksKulupler

#Açiklama

  19 Mayis üniversitesi için Uzem kamp tarafindan oluşturulmuş bir Website projesidir.Bütün kluplerin birarada olduğu ,haberlerin , etkinliklerin, ve duyurularin bulunduğu bir ortamdir.
  
#Teknik Bilgi
Ana temel olarak Ruby on Rails kullanilmiş olup yaninda;
HTML,CSS,JAVASCRIPT, ve çeşitli Rails gemleri;
Devise,Paperclip ve pundit gibi elementler kullanilip oluşturulmuştur.

#Özellikler
  Eklenecek
  
#Genel Kurulum Bilgisi
  Ruby kurulumu, Rails kurulumu ve gemfile daki gemlerin kurulumu gereklidir.

#Detayli Kurulum Bilgisi
    
  Ruby Bağımlılıkları

$ sudo apt-get update
$ sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

Ruby Kurulumu

$ sudo apt-get install ruby1.9.1-full

Kurulumun başarılı olup olmadığını kontrol edin.
$ ruby -v

Başarılı olduysa şöyle bir çıktı verecektir.
ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-linux]

Rails Kurulumu

$ sudo gem install rails

Kurulumun başarılı olup olmadığını kontrol edin.
$ rails -v

Başarılı olduysa şöyle bir çıktı verecektir.

Rails 4.2.3

Bundan sonra proje dizimine gelinir.

$cd skskulupler

Gemlerin kurulumu için bundle yapilmalidir.

$bundle install

daha sonra server çaliştirilir.

$rails s

