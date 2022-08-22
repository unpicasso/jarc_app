// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'LoginPage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'WorkshopRegistryPage.dart';




class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    // "HomePage" dosyasında yaptığımız şekilde başka dosyalarda değişime uğrayacak değişkenleri Riverpod sayesinde izliyoruz
    // ve değiştiklerinde bu değişiklikleri ekrana yansıtıyoruz

    final nameSurnameString = ref.watch(nameProviderText.notifier).state;
    final schoolNameString = ref.watch(schoolNameProviderText.notifier).state;
    final emailString = ref.watch(emailProviderText.notifier).state;
    final workshopString = ref.watch(workshopProviderText.notifier).state;
    final caseString = ref.watch(caseSunumProviderText.notifier).state;


    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(



                children: <Widget>[

                  SizedBox(height: 35),
                  Text("Profilim", style: TextStyle(
                      fontSize: 35
                  )),
                  SizedBox(height: 10),
                  Image.asset(
                      "images/3d-profile-picture.png",
                      fit: BoxFit.contain,
                      height: 150),
                  SizedBox(height: 10),
                  Text("Kişisel Bilgiler", style: TextStyle(
                    fontSize: 28,

                    // zaman kalırsa login sayfasından, workshop ve case verileriyle basit bir sayfa oluşturulacak
                    // appbar'ın sağ tarafından ufak bir profil butonuyla açılması planlanıyor
                  )),

                  SizedBox(height: 20),

                  Card(
                    color: Colors.white10,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

                    child: ListTile(

                      leading: Icon(
                          Icons.perm_identity_rounded,
                          color: Colors.black,
                          size: 35),
                      title: Text(nameSurnameString, style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70)
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.white10,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

                    child: ListTile(

                      leading: Icon(
                          Icons.alternate_email_rounded,
                          color: Colors.black,
                          size: 35),
                      title: Text(emailString, style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70)
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.white10,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

                    child: ListTile(

                      leading: Icon(
                          Icons.school_rounded,
                          color: Colors.black,
                          size: 35),
                      title: Text(schoolNameString, style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70)
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white10,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

                    child: ListTile(

                      leading: Icon(
                          Icons.collections_bookmark_rounded,
                          color: Colors.black,
                          size: 35),
                      title: Text(workshopString, style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70)
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.white10,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),

                    child: ListTile(

                      leading: Icon(
                          Icons.cases_rounded,
                          color: Colors.black,
                          size: 35),
                      title: Text(caseString, style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70)
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // buton uygulamayı kapatmayı sağlıyor
                  // Android ve IOS platformlarda farklı kod gerektiğinden böyle bir yöntemin daha
                  // mantıklı olduğunu düşünüyorum

                  ElevatedButton(

                      onPressed: () {
                        if (Platform.isAndroid) {

                          SystemNavigator.pop();
                        }else if (Platform.isIOS) {

                          exit(0);
                        }

                      },
                      // buton için olan yazı ve icon
                      child: Wrap(
                        children: <Widget>[
                          Icon(
                            Icons.logout_rounded,
                            color: Colors.black,
                            size: 30,

                          ),
                        ],
                      ),
                  ),
                ]),

          ),
        ),
      ),
      appBar: AppBar(
        title: Row(children: [
          Image.asset("images/JARC-Logo.jpg", fit: BoxFit.contain, height: 32),
          SizedBox(width: 10),
          Text("Remixopolis'23 "),
        ]),
      ),
    );
  }
}
