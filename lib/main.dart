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

        primarySwatch: Colors.lightBlue,
        fontFamily: "Poppins",
        
      ),
      home: LoginPage(),
    );
  }
}
