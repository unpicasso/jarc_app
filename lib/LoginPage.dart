// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: <Widget>[
            Column(children: <Widget>[
              SizedBox(height: 35),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text("Hoş Geldiniz!", style: TextStyle(fontSize: 35)),
                    SizedBox(
                      width: 10
                    ),
                    Image.asset("images/casual-life-3d-reward-badge-with-star-and-ribbon.png", fit: BoxFit.contain, height: 80),
                  ]
              ),

              SizedBox(
                height: 10
              ),

              Text("Lütfen gerekli bilgileri girin.",
                  style: TextStyle(fontSize: 20)),
            ]),
            SizedBox(height: 30),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(
                    height:15
                  ),

                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Text("Ad, Soyad",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(
                      height:15
                  ),

                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Text("Email",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(
                      height:15
                  ),

                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Text("Okul Adı",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: TextField(
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                child: Text('Giriş')),
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
