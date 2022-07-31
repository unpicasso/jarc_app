// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[

                SizedBox(height: 35),
                Text("Duyurular", style: TextStyle(
                    fontSize: 22
                )),
                SizedBox(height: 10),
                Text("Mevcutsa aşağıda gözükür", style: TextStyle(
                  fontSize: 18,
                )),

              ]),
        ),
      ),

    );
  }
}
