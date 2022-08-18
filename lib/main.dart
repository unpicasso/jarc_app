// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




void main() {
  runApp(ProviderScope(
      child: const jarc_app()
  )
  );
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

        // bu fontun boldu baya iyi gözüküyor. Bold Poppins fetişim var diyebiliriz
        fontFamily: "Poppins",
        
      ),

      // başlangıç yeri olarak giriş sayfası kullanıcının önüne geliyor, bakarken "WelcomeScreen.dart"ı hiçbir yerde kullanmamışsın diyebilirsiniz onu orada açıklarım
      home: LoginPage(),
    );
  }
}
