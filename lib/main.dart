// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'GossipPage.dart';
import 'LoginPage.dart';

void main() {
  runApp(const jarc_app());
}

class jarc_app extends StatelessWidget {
  const jarc_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        /* uygulama boyunca sürekli kullanacağımız değerleri tekrar tekrar girmemek için ThemeData kısmına yazıyoruz, daha büyük çaplı
         bir uygulama için doğrudan "constants" diye de bir dart dosyası oluşturabilir */

        // kulüp logosunda açık mavi bolca var, ana tema o yüzden

        primarySwatch: Colors.lightBlue,

        // bu fontun boldu baya iyi gözüküyor, bence en azından. Bold Poppins fetişim var diyebiliriz
        fontFamily: "Poppins",
        
      ),

      // başlangıç yeri olarak giriş sayfası kullanıcının önüne geliyor, bakarken "WelcomeScreen.dart"ı hiçbir yerde kullanmamışsın diyebilirsiniz onu orada açıklarım
      home: LoginPage(),
    );
  }
}
