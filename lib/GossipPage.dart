// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

/*
 bu kodu yazarken herhalde bir tek TextField'fan input almayla ilgili yardım almışımdır, diğer widgetlar her zamanki şeyler
 inputu alırken kullanığım flutter dokümantasyon linki: https://docs.flutter.dev/cookbook/forms/retrieve-input
 */

import 'package:flutter/material.dart';


class GossipPage extends StatefulWidget {
  const GossipPage({Key? key}) : super(key: key);

  // zaten normal stateful widget oluşturma işlemleri
  @override
  State<GossipPage> createState() => _GossipPageState();
}

// gelen girdiye göre anlık olarak tekrar renderlamak istediğimiz için stateful widget oluşturuyoruz

class _GossipPageState extends State<GossipPage> {

  final mytextFieldController = TextEditingController(); //textField'a girdi yapıldığında değişkene atayabilmemize yarayan controller

  /* herhangi bir girdi olmadan ekranda çalıştığı anlaşılsın diye "null" diye bir değer atadım, istenilen başka bir şey ya da boşluk da olabilir fark etmez
   bu değer sonrasında textfield'dan gelen input sonrası güncellenecek ve anlık olarak ekrana yansıyacak
   */

  String gossipMes = "null"; // textField'dan gelen girdinin atandığı değişkenin başlangıç değeri

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(

              // column içerisindeki widgetlar telefon dik dururken yere yatay olacak şekilde ortalanıyor
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[

                      // başlık kısmı font büyüklüğü vb. ayarlıyoruz, sonrasında da küçük bir posta fotosu koydum boş durmasın o kadar
                      // her seferine "Poppins" diye fontu ayarlamaya da gerek yok onu main dosyasına themeData içine koymuştum

                      Text("Gossip Box ", style: TextStyle(fontSize: 30)), // metin ve görsel aynı row içinde aralarında ufak bir boşluk olacak şekilde gösteriliyor
                      SizedBox(width: 20),
                      Image.asset("images/white-envelope-with-blue-letter-inside.png", fit: BoxFit.contain, height: 70),

            ]
                  ),

                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Merak etme, kimin yazdığı bilinmeyecek!",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),


                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextField(
                            controller: mytextFieldController, // oluşturduğumuz controller'ı bu textField ile ilişkilendiriyoruz
                          decoration: InputDecoration(filled: true,
                          fillColor: Colors.white12,
                            border: OutlineInputBorder(), // hoş gözükmesi için etrafına ufak bir çizgi koydum
                          ),

                          // yazı yazılırken yana kaymaması, direkt olarak tüm yazı gözükecek şekilde
                            // yeni satıra geçmesi için minLines değeri ekledim
                          minLines: 4,
                          maxLines:10
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  ElevatedButton(
                      onPressed: () {

                        // anlık olarak aşağıdaki text değişiyor

                        setState(() {
                          gossipMes = mytextFieldController.text; // butona basıldığında controller ile ilişkilendirilmiş olan textField'daki
                          // yazıyı alarak değişkene atıyor
                        });

                      },
                      // buton için olan yazı
                      child: Text('Gönder')),
                  Row(

                    /*
                     row kullandığımız için ekran dikken aşağıya paralel olacak şekilde ortalamak yerine column'da kullanığımız
                     cross yerine main kullanıyoruz
                     */

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Mesajınız: "),
                      // ekranda değişkeni gösteriyoruz
                      Text(gossipMes),
                    ]
                  ),



                ]),
          ),
        ),
      ),
    );
  }
}
