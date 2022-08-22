// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

/*
gerekli dosyaların hepsi import ediliyor, bu dosya pratik anlamda yalnızca navigasyon barı olduğu için bütün dosyalara route oluşturmak için
bütün classları da importlamak gerekiyor haliyle
 */

/*
 navigation kodu yazmak için bu videoyu kullandım genellikle: https://www.youtube.com/watch?v=4c36HNckh8A
 baya iyi, işimi fazlasıyla gördü
 */

import 'package:flutter/material.dart';
import 'package:jarc_app/FoodVoucherPage.dart';
import 'package:jarc_app/GossipPage.dart';
import 'package:jarc_app/ProfilePage.dart';
import 'package:jarc_app/WorkshopRegistryPage.dart';
import 'HomePage.dart';
import 'AnnouncementsPage.dart';

class WelcomeScreen extends StatefulWidget {


  const WelcomeScreen({Key? key,}) : super(key: key);


  @override
  //yine state oluşturuyoruz

  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  /* hangi sayfanın seçilmiş olduğunu takip edeceğimiz bir değişken atıyoruz
  öncelikle ikinci sayfadan başlamasını istiyoruz, burda bir problem oluyor aslında
  her ne kadar navigasyonda 3. sekmeden başlasa da ekranda "GossipPage.dart"ın widgetları oluyor
  her ne kadar farklı bir yere geçiş yapıp anasayfaya geri gelince düzelse de çözülmesi gereken bir sorun
  şimdilik halledemedim ileriki sürümlerde düzeltebilirim umarım
   */

  int _pageIndex = 0;


  // pageController burada atanıyor

  PageController pageController = PageController();

  // buradaki fonskiyon butona her basıldığında çalışıyor

  void onTapped(int index) {
    // ***geliştirme süreci printleri, silinmesi lazım bunların***
    print(index);
    print(_pageIndex);

    /*
     burda da aynı index sayılı sayfaya tıklarsa değişmesin diye hafif gereksiz bir kod yazmışım, kalsın yine cool
     bunu aslında navigasyon kodu "HomePage.dart" dosyasının içindeyken her seferinde anasayfaya basınca üst üste yeni controllerlar gelmesin diye koymuştum
     pratik olarak işe yarasa da navigasyon için yeni bir .dart dosyması açmak daha çok işime geldi açıkçası
     */

    if (_pageIndex != index) {
      // çalışıyor mu çalışmıyor mu diye yine print, ***silinmesi lazım***
      print("main executed");

      // anlık olarak değişmesi için setState() kullanıyoruz

      setState(() {
        _pageIndex = index;
      });

      // bunun aracılığıyla da istediğimiz index'teki sayfaya gidiyor

      pageController.jumpToPage(index);
    }
  }


  @override
  Widget build(BuildContext context) {
    // her zamanki olaylar, burda sadece SafeArea body'si yok
    return Scaffold(

      body: PageView(
        controller: pageController,

        onPageChanged: (page) {
          setState(() {
            _pageIndex = page;
          });
        },

        children: [

          /*
           burda da children olarak gerekli dart dosyaları aracılığıyla classları bağlıyoruz index sistemi
            de burda çalışıyor; bilgisayarlar saymaya sıfırdan başladığı için sıfır olunca GossipPage açılıyor, sırasıyla takip ediyor işte
           */


          GossipPage(),
          FoodVoucherPage(),
          HomePage(),
          WorkshopRegistryPage(),
          AnnouncementsPage(),

        ],

      ),


      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[

          // navigasyondaki routeları iconlara ve labellara bağlıyouruz, böylece kullanıcı gitmek istediği yeri seçebiliyor

          BottomNavigationBarItem(
              icon: Icon(Icons.inbox_rounded), label: 'Gossip '),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_rounded), label: 'Yemek'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Anasayfa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.work_rounded), label: 'Atölye'),
          BottomNavigationBarItem(
              icon: Icon(Icons.markunread_rounded), label: 'Duyurular'),

        ],
        currentIndex: _pageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: onTapped,

      ),

      /*
       uygulamanın geri kalanında da kullanacağımız appbar, teker teker her dosyada eskisini silip yenisini oluşturmaya gerek yok
       logolu logolu takılıyoruz işte
       appbara aynı aynda hem görsel hem text koymayı bulamadım, normalde yanında Remixopolis  yazar diye hayal etmiştim
       sanırım basılamayan butonlar kullanılarak yapılıyor görsel işini, yanında da düz title: "Remixo" diye yapıyorlar da geç oldu artık
       */


      appBar: AppBar(


          title: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children:
                [Image.asset("images/JARC-Logo.jpg", fit: BoxFit.contain,
                height: 32),
            SizedBox(width: 35),
            Text("Remixopolis'23 "),
            SizedBox(width: 45),

                  IconButton(

                    icon: Icon(Icons.account_circle_rounded,
                        size:36),
                    onPressed: () {

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProfilePage()));

                    },

                  ),
          ]),
    ),

    ),
    );
  }
}

