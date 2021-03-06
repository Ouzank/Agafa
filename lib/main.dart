// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Controllers/UserController.dart';
import 'package:agafa/View/Age_Screen.dart';
import 'package:agafa/View/Effectif_Screen.dart';
import 'package:agafa/View/GetStarted_Screen.dart';
import 'package:agafa/View/PopulationType_Screen.dart';
import 'package:agafa/View/Splash_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'View/SignIn_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(UserController());
  });
    prefs = await SharedPreferences.getInstance();
  showHome = prefs.getBool('showHome') ?? false;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Agafa',
      home:Splash(showHome: showHome,),
      debugShowCheckedModeBanner: false,
    );
  }
}
// je suis la junior pour causer on ecris de commentaire 
//on commence par gerer  la responsiviter 