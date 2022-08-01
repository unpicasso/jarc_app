// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'GossipPage.dart';
import 'HomePage.dart';

class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({Key? key}) : super(key: key);

  @override
  State<AnnouncementsPage> createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Duyurular", style: TextStyle(fontSize: 30)),

                    SizedBox(

                      width:20
                    ),

                    Image.asset("images/business-3d-red-and-white-megaphone.png", fit: BoxFit.contain, height: 65),
                  ],
                ),
                SizedBox(height: 15),
                Text("Mevcutsa aşağıda gözükür",
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ]),
        ),
      ),
    );
  }
}
