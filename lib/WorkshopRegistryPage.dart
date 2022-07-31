// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'HomePage.dart';

class WorkshopRegistryPage extends StatefulWidget {
  const WorkshopRegistryPage({Key? key}) : super(key: key);

  @override
  State<WorkshopRegistryPage> createState() => _WorkshopRegistryPageState();
}

class _WorkshopRegistryPageState extends State<WorkshopRegistryPage> {
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
                      Text("Atölye Kayıt", style: TextStyle(fontSize: 30)),
                      SizedBox(
                        width: 30
                      ),

                      Image.asset("images/fabulous-easel.png", fit: BoxFit.contain, height: 100),

                    ]),
                SizedBox(height: 10),
                Text("İstediğiniz atölyeyi aşağıdan seçin.",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text('Kaydet'))
              ]),
        ),
      ),
    );
  }
}
