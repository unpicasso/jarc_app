// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jarc_app/WelcomeScreen.dart';
import 'HomePage.dart';

// dropdown menu için bu videoyu kullandım: https://www.youtube.com/watch?v=K8Y7sWZ7Q3s

//burası sonradan seçim yapılan atölyenin adına dönecek
final workshopProviderText = StateProvider((ref) => "Seçilmedi");
final caseSunumProviderText = StateProvider((ref) =>
    "Case Sunumları"); //burası sonradan seçim yapılan case'in adına dönecek
final caseStudyProviderText = StateProvider((ref) =>
    "Case Study"); //burası sonradan seçim yapılan case'in adına dönecek
final caseSunumProviderLocationString = StateProvider((ref) => "Seçilmedi");
final caseStudyProviderLocationString = StateProvider((ref) => "Seçilmedi");
final workshopProviderLocationString = StateProvider((ref) => "Seçilmedi");

final workshopPageChoiceProviderColorWarning = StateProvider((ref) => Colors
    .red); //seçim yapıldığında ikisi de yeşil renge dönecek, ortak kullanılıyor
final workshopPageChoiceProviderColorSimple = StateProvider((ref) => Colors
    .black);


class WorkshopRegistryPage extends ConsumerStatefulWidget {
  const WorkshopRegistryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<WorkshopRegistryPage> createState() =>
      _WorkshopRegistryPageState();
}

class _WorkshopRegistryPageState extends ConsumerState<WorkshopRegistryPage> {
/*
 dropdownlarda kullanacağımız workshop ve case listesini burada hallediyoruz, liste uygulama çalışmaya başladıktan sonra
 değişmeyeceği için tanımlarken final kullanabiliriz
 */

  final workshopItems = [
    'Turkcell/Sessizlikte Diyalog',
    'Dans Workshop',
    'Webtures/Dijital Pazarlama',
    'Bedia Ceylan Güzelce/Radyoculuk Hakkında',
    'WSA/Girişimcilikte Cinsiyet Eşitliği Workshop',
    'RC Makers/Makers ile İlk Adımlar',
    'Spotlighter/ Yıldız Olma Potansiyelini Keşfet!',
    'RC SEC/Design Thinking 101',
    'Kampüs Turu',
  ];

  final workshopItemLocations = [
    'Bingham 1',
    'Dans Stüdyosu',
    'Amfitiyatro',
    'Tiyatro',
    'Woods 01',
    'Woods 02',
    'Woods 10',
    'Woods 11',
    'Kampüs',
  ];

  final caseItems = [
    'Yenibirlider',
    'Coca Cola',
    'Vestel Ventures',
  ];

  final caseSunumLocations = [
    'Bingham 1',
    'Tiyatro',
    'Heritage',
  ];

  final caseStudyLocations = [
    'Woods',
    'Sage',
    'Gould',
  ];



// başlangıçta bir değer seçilebilmesi için listelerdeki ilk değerleri atıyoruz
  String firstDayDropdownValue = 'Turkcell/Sessizlikte Diyalog';
  String caseDropdownValue = 'Yenibirlider';
  int indexDropdownWorkshop = 0;
  int indexDropdownCase = 0;

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
                    Text("İlk Gün Atölye Tercihi: ",
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

                          items: workshopItems.map((String items) {
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
                          //
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
                    Text("Case Tercihi: ",
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
                          value: caseDropdownValue,

                          items: caseItems.map((String items) {
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
                              caseDropdownValue = newValue!;


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
                ElevatedButton(
                    onPressed: () {
                      //görevde öyle istendiği için yalnızca ilk günün değerlerini göderiyoruz ana sayfaya
                      //butona bastıktan sonra değerleri yalnızca bir kere okumasını istiyoruz

                      ref.read(workshopProviderText.state).state =
                          firstDayDropdownValue;
                      ref.read(workshopPageChoiceProviderColorWarning.state).state =
                          Colors.green;

                      ref.read(workshopPageChoiceProviderColorSimple.state).state = Colors.green;
                      ref.read(workshopPageChoiceProviderColorWarning.state).state = Colors.green;
                      ref.read(caseSunumProviderText.state).state = caseDropdownValue;
                      ref.read(caseStudyProviderText.state).state = caseDropdownValue;

                      indexDropdownWorkshop = workshopItems.indexOf(firstDayDropdownValue);

                      indexDropdownCase = caseItems.indexOf(caseDropdownValue);


                      ref.read(caseSunumProviderLocationString.state).state = caseSunumLocations[indexDropdownCase];
                      ref.read(caseStudyProviderLocationString.state).state = caseStudyLocations[indexDropdownCase];
                      ref.read(workshopProviderLocationString.state).state = workshopItemLocations[indexDropdownWorkshop];










                    },
                    child: Text('Kaydet'))
              ]),
        ),
      ),
    );
  }
}
