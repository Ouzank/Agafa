// ignore_for_file: prefer_const_constructors

import 'package:agafa/Controllers/UserController.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'View/SignIn_Screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(UserController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Agafa',
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// je suis la junior pour causer on ecris de commentaire 
//on commence par gerer  la responsiviter 