
// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                SizedBox(height: 35),
                Text("Remixopolis'e Hoş Geldiniz!", style: TextStyle(
                    fontSize: 25
                )),
                Text("Aşağıda programı görebilirsiniz.", style: TextStyle(
                    fontSize: 16
                )),





              ]),
        ),
      ),

    );
  }
}


