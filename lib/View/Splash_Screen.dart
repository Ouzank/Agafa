// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/View/Home_Screen.dart';
import 'package:agafa/View/IntroSlider_Screen.dart';
import 'package:agafa/View/SignIn_Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  Splash({required this.showHome});
  bool showHome;
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    User? user = userController.auth.currentUser;
    _navigatetohome(user);
    print(user?.uid);
  }

  void _navigatetohome(User? user) async {
    await Future.delayed(Duration(seconds: 5), () {
      if (user != null) {
        Get.offAll(Home());
      } else {
        Get.offAll(showHome ? SignIn() : IntroductionSlider());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/chicken5.svg',
                  height: 200,
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text('AGAFA',
                        style: GoogleFonts.comicNeue(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                            color: Colors.black)),
                    SizedBox(
                      width: 5,
                    ),
                    SpinKitFoldingCube(
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
