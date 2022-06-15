# 3d-Printer-Pancake

2D Pancake Yazılımı Kullanım Kılavuzu

1.Adım: Processing ve Inkscape programlarını indirmek için linkler aşağıdadır:

Processing:https://processing.org/download (4.0beta7 sürümü)
Inkscape: https://inkscape.org/release/inkscape-0.92



2. ADIM:
Arduino IDE üzerinden “AFMotor.h” kütüphanesi ide üzerine eklenir:

Kütüphaneleri yönete tıklayıp

Adafruit Motor Shield Library’i aratıp “Kur” ‘ a basıp indirilir:


Böylelikle AFMotor.h kütüphanesi Arduino IDE’ye eklenmiş olur.


3. Adım:

Arduino UNO kartına kod yüklü değil ise CNC_code klasörü içerisindeki dosyayı



Arduino IDE içerisinde Dosya/Aç.. seçeneğinden CNC_code.ino dosyası seçilip açılır.



















Sonrasında tik işareti olan derle butonuyla AFMotor.h kütüphanesi düzgün yüklenmiş mi diye kontrol edilir.


Arduino UNO kartı bilgisayara USB girişinden bağlı iken port’un seçili olup olmadığı kontrol edilir ve port ismi yani “COM3” bir yere not edilir.(Fakat her farklı USB girişinde farklı COM isimleri alabilir her farklı yere takıldığında tekrar kontrol edilmesi gerekir):


Sol üstte "->" işareti olan “Yükle” butonu ile mikroişlemciye kod yüklenir ve processing ile çalıştırılmaya hazır hale gelir:





4. Adım:

Processing ile GCTRL işlemleri yapılması:

İndirilmiş olan processing uygulaması processing-4.0b7/processing.exe yolundaki dosya ile açılır.


Gelen ekranda Dosya/Aç.. seçeneği seçilir.




İndirilmiş olan GCTRL kodu açılır






















Önceden Arduino IDE üzerinden baktığınız port numarasını buradaki portname=”COM4” kısmına sizinki kaç ise onunla değiştirilir ve sol üstte kalan çalıştır butonuna tıklayıp çalıştırılır:












Açılan bu programda g’ye basarak gcode seçme ekranına geçebilirsiniz

	

Dosyalar içersinde bulunan “New_gcode” klasörünün altında olan gcode’lardan birini seçip aç dediğinizde printer çalışmaya başlayacaktır.





Şekil oluşturma:

İncscape programını kullanabilmek için unicorn extension kurmalıyız.
https://github.com/martymcguire/inkscape-unicorn
Githubdan indirdiğimiz dosyalardaki src dosyasının içeriğini \Inkscape\share\extensions içine yapıştırarak kurmuş oluyoruz.



Incscape programına girdiğimizde birkaç ayar yapmamız gerekli.
Isıtıcı tablamızın boyunları 214-214 mm olduğundan dolayı File/Document Properties
açıyoruz. 

Çizmiş olduğumuz yıldızımızın içini “Fill and Stroke” Tool’ u ile içini boşaltıyoruz.
(Eğer yıldız gözükmüyorsa sağdaki panelden Stroke paint’ e tıklayıp flat color üzerindeki çarpı”x” işaretini bir sağındaki kutucukla değiştirin )
Yıldızın üzerine tıklayıp Object to Path’ e tıklıyoruz.

File’ dan Save as e tıklayarak kaydetme işlemine başlıyoruz.
Extension olarak eklediğimiz MakerBot Uniorn G-Code formatında dosyamızı kaydediyoruz.







GRBL CONTROLLER ile şekili inceleme:

https://grbl-controller.software.informer.com/%C4%B0ndir/ (3.6.1)

Bu program ile çizdiğimiz şekilin nereye çizileceğini ve şekilini düzgün olup olmadığını anlayabiliyoruz.





Choose File butonundan çizdiğimiz şekli açıyoruz.

Çizdiğimiz şekil Orjinin sağ üst tarafında olmalı. Yoksa şekilin tamamı çizilemiyor. (Gcode tarafında “-” olan eksenler çalışmıyor.)









ReplicatorG:

http://replicat.org/download

Gcode üzerinde ayarlamalar yapabilmemizi sağlayan program.
Kodun nasıl çalıştığını anlayabilmemiz için gereklidir.




File/Open’ dan çizdiğimiz yıldız şeklini seçiyoruz. Yıldızımızın Gcode halini görebilmemizi sağlıyor.
