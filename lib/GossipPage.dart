// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'HomePage.dart';

class GossipPage extends StatefulWidget {
  const GossipPage({Key? key}) : super(key: key);

  @override
  State<GossipPage> createState() => _GossipPageState();
}

class _GossipPageState extends State<GossipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text("Gossip Box", style: TextStyle(fontSize: 30)),
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
                      "Merak etme, kimin söylediği bilinmeyecek!",
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
                        decoration: InputDecoration(filled: true,
                        fillColor: Colors.white12,
                          border: OutlineInputBorder(),
                        ),
                        minLines: 6,
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
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text('Gönder')),


              ]),
        ),
      ),
    );
  }
}
