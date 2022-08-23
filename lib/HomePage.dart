// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'WorkshopRegistryPage.dart';


class HomePage extends ConsumerStatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  // gün sayacını 1 olarak başlatıyoruz

  int dayCount = 1;

  @override
  Widget build(BuildContext context) {

    // diğer dosyalardan kullanacağımız değişkenlere erişirken bu dosyada ne adla kullılacaklarına erişiyoruz
    // bu yöntem sayesinde başka bir dosyada bir değişken değiştiğinde de bu dosyadan erişebiliyor olacağız
    // bunun için riverpod kullandım, tüm providerlar "WorkshopRegistryPage"den geliyor, tavsiyesi için Oğuz Kurt'a tekrar teşekkürler

    final workshopString = ref.watch(workshopProviderText.notifier).state;
    final caseSunumString = ref.watch(caseSunumProviderText.notifier).state;
    final caseStudyString = ref.watch(caseStudyProviderText.notifier).state;
    final caseSunumLocation = ref.watch(caseSunumProviderLocationString.notifier).state;
    final caseStudyLocation = ref.watch(caseStudyProviderLocationString.notifier).state;
    final workshopLocation = ref.watch(workshopProviderLocationString.notifier).state;
    final workshopColorWarn = ref.watch(workshopPageChoiceProviderColorWarning.notifier).state;
    final workshopColorSimple = ref.watch(workshopPageChoiceProviderColorSimple.notifier).state;


    return Scaffold(
      body: SingleChildScrollView( // ekranda çok fazla yazı olduğu için sığmadığı durumlarda hala erişilebilir olması için kaydırma mekaniği ekliyoruz
        child: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),

                  Text("Remixopolis'e\n Hoş Geldiniz!", style: TextStyle(fontSize: 27)), // merhaba yazısı gösteriliyor
                  SizedBox(height: 10),
                  Row( // fotoğraf ve yazının aynı yükseklikte olması için row içine yerleştirdim
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Aşağıda programı görebilirsiniz",
                          style: TextStyle(fontSize: 20)),
                      //SizedBox(width: 10),
                      /*Image.asset(
                          "images/casual-life-3d-blue-desk-calendar-1.png", // takvimin alındığı asset
                          fit: BoxFit.contain,
                          height: 72),

                       */
                    ],
                  ),

                  SizedBox(height:20),

                  Row( // başlangıçta başlatılan gün değişkeni burada ekranda gösteriliyor
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gün:  ",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        dayCount.toString(), // int olduğundan text içine koymak için .toString() kullanmak gerekiyor
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 8), // gerekli padding veriliyor
                      child: Text(
                        "Atölye: ",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),

                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(workshopString,
                      style: TextStyle(
                        fontSize: 15,
                        color: workshopColorWarn,
                      ),),
                    ),



                  ]),
                  SizedBox(height: 20),
                  Container( // buradaki ana mantıkla başlangıçta üç tane yan yana olacak şekilde column açarak bunların içine sonradan gerekli verileri girmek
                    // böylece verilerin aynı row içinde olmasalar dahi hizalanmış olmaları garanti ediliyor
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Row(
                            children: [
                            Text( // zaman text'inin gösterildiği alan sonrasında tekrardan ufak bir görsel var, **buradan sonrasında her column için aynı işlemler yapılıyor,
                              // o sebeple hepsi için, yaklaşık 340 satır, anlatmaya gerek olduğunu düşünmüyorum
                              // yukarıda anlattığım şekliyle yaptım hepsini (container yanı)
                              "Zaman",
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),

                              SizedBox(
                                width: 5
                              ),

                              /*
                              Image.asset(
                                  "images/3d-fluency-clock.png",
                                  fit: BoxFit.contain,
                                  height: 25),

                               */
                            ]
                          ),

                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "08.00-09.30",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "09.30-10.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "10.00-11.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "11.00-12.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "12.00-13.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "13.00-14.30",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "14.30-15.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "15.00-14.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "14.00-17.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "17.00-18.00",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "18.00-21.00",
                              style: TextStyle(
                                fontSize: 14,
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

                                /*
                                SizedBox(
                                    width: 5
                                ),

                                Image.asset(
                                    "images/3d-fluency-two-tickets.png",
                                    fit: BoxFit.contain,
                                    height: 24),

                                 */
                              ]
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kayıt",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Açılış",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Elevator Pitch",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              caseSunumString,
                              style: TextStyle(
                                fontSize: 14,
                                color: workshopColorSimple,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Öğle Yemeği",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Ice Breaking",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Konuşma",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Row(children: [

                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                              child: Text(
                                "Atölye",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: workshopColorSimple,
                                ),
                              ),
                            ),

                          ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              caseStudyString,
                              style: TextStyle(
                                fontSize: 14,
                                color: workshopColorSimple,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Konuşma",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Kapanış Yemeği",
                              style: TextStyle(
                                fontSize: 14,
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

                                /*
                                Image.asset(
                                    "images/casual-life-3d-close-up-of-pink-location-marker.png",
                                    fit: BoxFit.contain,
                                    height: 24),

                                 */
                              ]
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Forum",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                             caseSunumLocation,
                              style: TextStyle(
                                fontSize: 14,
                                color: workshopColorWarn,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Maze ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Plato",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              workshopLocation,
                              style: TextStyle(
                                fontSize: 14,
                                color: workshopColorWarn,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              caseStudyLocation,
                              style: TextStyle(
                                fontSize: 14,
                                color: workshopColorWarn,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tiyatro ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Maze ",
                              style: TextStyle(
                                fontSize: 14,
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
