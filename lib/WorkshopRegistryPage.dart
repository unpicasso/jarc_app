// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jarc_app/WelcomeScreen.dart';
import 'HomePage.dart';

// dropdown menu için bu videoyu kullandım: https://www.youtube.com/watch?v=K8Y7sWZ7Q3s

final workshopProviderText = StateProvider((ref) => "Seçilmedi"); //burası sonradan seçim yapılan atölyenin adına dönecek
final workshopProviderStatus = StateProvider((ref) => "Seçilmedi"); //burası da sonradan seçim yapıldığında seçildi yazacak
final workshopProviderColor = StateProvider((ref) => Colors.red); //seçim yapıldığında yeşil renge dönecek


class WorkshopRegistryPage extends ConsumerStatefulWidget {
  const WorkshopRegistryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<WorkshopRegistryPage> createState() => _WorkshopRegistryPageState();
}

class _WorkshopRegistryPageState extends ConsumerState<WorkshopRegistryPage> {
/*
 dropdownlarda kullanacağımız workshop listesini burada hallediyoruz, liste uygulama çalışmaya başladıktan sonra
 değişmeyeceği için tanımlarken final kullanabiliriz
 */

  final items = [
    'Turkcell/Sessizlikte Diyalog',
    'Dans Workshop: Dans Stüdyosu',
    'Webtures/Dijital Pazarlama',
    'Bedia Ceylan Güzelce/Radyoculuk Hakkında',
    'WSA/Girişimcilikte Cinsiyet Eşitliği Workshop',
    'RC Makers/Makers ile İlk Adımlar',
    'Spotlighter/ Yıldız Olma Potansiyelini Keşfet!',
    'RC SEC/Design Thinking 101',
    'Kampüs Turu',
  ];

  String firstDayDropdownValue = 'Turkcell/Sessizlikte Diyalog';
  String secondDayDropdownValue = 'Turkcell/Sessizlikte Diyalog';

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
                      SizedBox(width: 30),
                      Image.asset("images/fabulous-easel.png",
                          fit: BoxFit.contain, height: 100),
                    ]),
                SizedBox(height: 10),
                Text("İstediğiniz atölyeyi aşağıdan seçin.",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 80, 10, 0),
                    ),
                    Text("İlk Gün Tercihi: ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: DropdownButton(
                          value: firstDayDropdownValue,

                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              firstDayDropdownValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    Text("İkinci Gün Tercihi: ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: DropdownButton(
                          value: secondDayDropdownValue,

                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              secondDayDropdownValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],

                ),
                SizedBox(
                  height: 35,
                ),

                Text(firstDayDropdownValue),
                Text(secondDayDropdownValue),

                ElevatedButton(
                    onPressed: () {

                      print(firstDayDropdownValue);
                      print(secondDayDropdownValue);





                    },
                    child: Text('Kaydet'))
              ]),
        ),
      ),
    );
  }
}
