// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'GossipPage.dart';
import 'HomePage.dart';

class FoodVoucherPage extends StatefulWidget {
  const FoodVoucherPage({Key? key}) : super(key: key);

  @override
  State<FoodVoucherPage> createState() => _FoodVoucherPageState();
}

class _FoodVoucherPageState extends State<FoodVoucherPage> {
  int foodRightCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Yemek Kuponu", style: TextStyle(fontSize: 30)),
                    SizedBox(width:10),
                    Image.asset("images/hamburger.png", fit: BoxFit.contain, height: 100),
                  ],
                ),
                SizedBox(height: 10),

                // kalan yemek hakkı kısmı da backend aracılığıyla halledilebilir, aşağıdaki qr kod okutulunca gidilen linkle yemeğin alındığı anlaşılır ve hak sayısı 1 azaltılır gibi

                Text("Kalan yemek hakkın: 1",
                    style: TextStyle(
                      fontSize: 25,
                    )),
                Text("Kupon barkodunu aşağıda görebilirsin",
                    style: TextStyle(
                      fontSize: 15,
                    )),
                SizedBox(height: 50),

                //qr görseli "qr_flutter" aracılığıyla oluşturuluyor, her ne kadar şu anlık manuel olarak girilmiş bir string olsa da backend ile otomatik hale getirilebilir

                QrImage(
                  data: "jarc.robcol.k12.tr/yemekkuponu/kaanakan/day1/1",
                  version: QrVersions.auto,
                  size: 300.0,
                ),
              ]),
        ),
      ),
    );
  }
}
