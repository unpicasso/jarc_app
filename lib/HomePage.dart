// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'WorkshopRegistryPage.dart';

class HomePage extends StatefulWidget {

  final String firstDayDropdownValuePassedtoHomePage;
  final Color passedColor;

  const HomePage({Key? key, required this.passedColor, required  this.firstDayDropdownValuePassedtoHomePage}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dayCount = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),

                  Text("Remixopolis'e Hoş Geldiniz!", style: TextStyle(fontSize: 27)),
                  SizedBox(height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Aşağıda programı görebilirsiniz",
                          style: TextStyle(fontSize: 16)),
                      SizedBox(width: 10),
                      Image.asset(
                          "images/casual-life-3d-blue-desk-calendar-1.png",
                          fit: BoxFit.contain,
                          height: 72),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gün:  ",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        dayCount.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                  children: [



                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                      child: Text(
                        "Atölye: ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text('${widget.firstDayDropdownValuePassedtoHomePage}', style: TextStyle(
                      color: widget.passedColor,
                      fontSize: 12,
                    ),),

                  ]),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Row(
                            children: [
                            Text(
                              "Zaman",
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),

                              SizedBox(
                                width: 5
                              ),

                              Image.asset(
                                  "images/casual-life-3d-pink-alarm-clock-on-ground.png",
                                  fit: BoxFit.contain,
                                  height: 25),
                            ]
                          ),

                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "08.00-09.30",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "09.30-10.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "10.00-11.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "11.00-12.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "12.00-13.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "13.00-14.30",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "14.30-15.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "15.00-16.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "16.00-17.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "17.00-18.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "18.00-21.00",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ]),
                        Column(children: [
                          Row(
                              children: [
                                Text(
                                  "Etkinlik",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),

                                SizedBox(
                                    width: 5
                                ),

                                Image.asset(
                                    "images/3d-fluency-two-tickets.png",
                                    fit: BoxFit.contain,
                                    height: 24),
                              ]
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kayıt",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Açılış Konuşması ",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Elevator Pitch",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Case Sunumları",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Öğle Yemeği",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Ice Breaking",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Konuşma",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(children: [

                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                              child: Text(
                                "Atölye: ",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text("Seçim", style: TextStyle(
                              color: widget.passedColor,
                              fontSize: 16,
                            ),),

                          ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Case Study",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Konuşma",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kapanış Yemeği",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ]),
                        Column(children: [
                          Row(
                              children: [
                                Text(
                                  "Mekan",
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),

                                SizedBox(
                                    width: 5
                                ),

                                Image.asset(
                                    "images/casual-life-3d-close-up-of-pink-location-marker.png",
                                    fit: BoxFit.contain,
                                    height: 24),
                              ]
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Forum",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Forum",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Maze ",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Plato",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Forum",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Forum",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro ",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro ",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                        ]),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
