// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jarc_app/FoodVoucherPage.dart';
import 'package:jarc_app/GossipPage.dart';
import 'package:jarc_app/WorkshopRegistryPage.dart';
import 'HomePage.dart';
import 'AnnouncementsPage.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  //hangi sayfanın seçilmiş olduğunu takip edeceğimiz bir değişken atıyoruz

  int _pageIndex = 2;
  PageController pageController = PageController();

  void onTapped(int index) {

    print(index);
    print(_pageIndex);



    if (_pageIndex != index) {
      print("main executed");
      setState(() {
        _pageIndex = index;
      });
      pageController.jumpToPage(index);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: pageController,

        onPageChanged: (page) {
          setState(() {
            _pageIndex=page;
          });
        },

        children: [

          GossipPage(),
          FoodVoucherPage(),
          HomePage(),
          WorkshopRegistryPage(),
          AnnouncementsPage(),


        ],

      ),


      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.inbox_rounded), label: 'Gossip '),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood_rounded), label: 'Yemek'),
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.work_rounded), label: 'Atölye'),
          BottomNavigationBarItem(icon: Icon(Icons.markunread_rounded), label: 'Duyurular'),

        ],
        currentIndex: _pageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: onTapped,

      ),


      appBar: AppBar(
        title: Row(children: [Image.asset("images/JARC-Logo.jpg", fit: BoxFit.contain, height: 32)]),

      ),
    );
  }
}

