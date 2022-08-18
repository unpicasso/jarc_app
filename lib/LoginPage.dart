// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {

  // text field'da girilen değerleri alabilmek için controller oluşturmak gerekiyor, bunu aynen "GossipPage.dart" üzerinden implemente ettim
  final nameSurnameController = TextEditingController();
  final emailController = TextEditingController();
  final schoolNameController = TextEditingController();

  //değişkenleri başlatıyoruz

  String nameSurnameString = "";
  String emailString = "";
  String schoolNameString = "";
  int i = 0;

  // görevde verilen isimler ve bu isimlerle ilişkilendirilmiş verileri burada tutuyoruz
  final credentials = [
    ["Kaan Akan","Robert Kolej","akakaa.25@robcol.k12.tr"],
    ["Ufuk Çetiner","Robert Kolej", "cetufu.24@robcol.k12.tr"],
    ["Gökçe Çiçek Arslan","Robert Kolej", "arsgok.24@robcol.k12.tr"],
    ["Oguz Kurt","Robert Kolej", "kurogu.24@robcol.k12.tr"],
    ["Melih Mahmutoğlu","Basket Lisesi", "melmahmutoglu@gmail.com"],
    ["Eda Erdem","Voleybol Lisesi", "eerdem@gmail.com"],
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: <Widget>[
            Column(children: <Widget>[
              // ilk SizedBox yüksekliklerini mümkün olduğunca aynı tutmaya çalıştım, sayfa değiştirirken garip durmaması amacıyla
              SizedBox(height: 35),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /*
                     her zamanki büyük başlık yanına görsel mantığı yine var, güzel bir merhaba görseli bulamadım
                   bir tane el sallayan illüstrasyon vardı, kesmişler gibi korkunç duruyordu random bir madalya görseli koydum
                    ,hoş duruyor zannımca
                    */

                    Text("Hoş Geldiniz!", style: TextStyle(fontSize: 35)),
                    SizedBox(width: 10),

                    // assetleri genelde, icons8.com"dan alıyorum, güzel illüstrasyonları var

                    //dosya isimleri biraz uzun farkındayım, burda bir de görselin boyunu ayarlıyoruz
                    Image.asset(
                        "images/casual-life-3d-reward-badge-with-star-and-ribbon.png",
                        fit: BoxFit.contain,
                        height: 80),
                  ]),

              SizedBox(height: 10),

              Text("Lütfen gerekli bilgileri girin.",
                  style: TextStyle(fontSize: 20)),
            ]),
            SizedBox(height: 30),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15),

                  /*
                  burda ilk SizedBox kısmına kadar olan kısım diğer iki tane text ve TextField için de tekrar ediyor
                  sadece text değişiyor, işte "Email" yerine "Okul Adı" vs
                   */

                  // daha güzel gözükmesi için sağdan ve soldan 15'lik padding koyuyoruz

                  Row(children: <Widget>[
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 5, 0),
                      child: Text("Ad, Soyad",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    Text(
                      "(Kimlikte yazan şekliyle)",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ]),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: TextField(
                      controller: nameSurnameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Row(children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 5, 0),
                      child: Text("Email",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    Text("(Örnek: excalibur@gmail.com)", style: TextStyle(
                      fontSize: 10
                    )
                    )
                  ]),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 5, 0),
                        child: Text("Okul Adı",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      Text(
                        "(Okulunuzun yasal adını giriniz)",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: TextField(

                      /*
                    text field'dan gelen veriler için yukarıda tanımladığımız controllerla ilişkilendirmek gerekiyor,
                    bir tanesini yaptıktan sonra hepsi aynı mantıkla ileriliyor
                       */
                      controller: schoolNameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    i = 0;

                    nameSurnameString = nameSurnameController.text;
                    emailString = emailController.text;
                    schoolNameString = schoolNameController.text;

                    print(nameSurnameString);
                    print(emailString);
                    print(schoolNameString);

                    print(credentials[i][0]);
                    print(credentials[i][1]);
                    print(credentials[i][2]);

                    print(credentials.length);
                  });


                  while (i < credentials.length) {


                    if (nameSurnameString == (credentials[i][0])) {
                      print("Name: OK");

                      if (schoolNameString == (credentials[i][1])) {
                        print("Corresponding School: OK");

                        if (emailString == (credentials[i][2])) {
                          print("Corresponding Email: OK");

                          Navigator.pushReplacement(context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()));
                          break;


                        }//girilen isim ve okul doğru ama email verisiyle eşleşmiyorsa sonsuza kadar çalışmasın diye programı durduruyoruz
                        else {
                          break;
                        }

                        //girilen isim doğru ama diğer verilerle eşleşmiyorsa sonsuza kadar çalışmasın diye programı durduruyoruz
                      } else {
                        break;
                      }

                    } else {

                      //isim listede var mı kontrol etmek için sırasıyla i değerini artırıyoruz
                      //yukarıda while statement kısmını listenin uzunluğuyla sınırladığımız için döngüye girmesi engellenmiş oluyor

                      print("Input data wasn't found, increasing range...");
                      i = i + 1;
                    }

                  }
                },


                child: Text('Giriş')),


            // rahat girilsin diye bir buton koydum sonradan silinecek
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                child: Text('Geliştirme Süreci')),



          ]),
        ),
      ),


      appBar: AppBar(
        title: Row(children: [
          Image.asset("images/JARC-Logo.jpg", fit: BoxFit.contain, height: 32)
        ]),
      ),
    );
  }
}
