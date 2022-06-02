// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/Firebase.dart';
import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/View/SignIn_Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionSlider extends StatefulWidget {
  IntroductionSlider({Key? key}) : super(key: key);

  @override
  State<IntroductionSlider> createState() => _IntroductionSliderState();
}

class _IntroductionSliderState extends State<IntroductionSlider> {
  final pageViewController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    // TODO: implement dispose
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: PageView(
          controller: pageViewController,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            Container(
                    color: mainColor,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                         // Image.asset('',height: 200),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dancingScript(fontSize: 20),
                            ),
                          )
                        ]),
                  ),
            Container(
              color: mainColor,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //Image.asset('', height: 200),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dancingScript(fontSize: 20),
                      ),
                    )
                  ]),
            ),
            Container(
              color: mainColor,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                   // Image.asset('', height: 200),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dancingScript(fontSize: 20),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              child: Text(
                'Commencer',
                style: GoogleFonts.dancingScript(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
                Get.to(SignIn());
              },
              style: TextButton.styleFrom(
                  backgroundColor: mainColor,
                  padding: EdgeInsets.all(10),
                  primary: Colors.black,
                  minimumSize: Size.fromHeight(70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
            )
          : Container(
              color: mainColor,
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => pageViewController.jumpToPage(2),
                    child: Text('Passer',
                        style: GoogleFonts.comicNeue(
                            fontSize: 20, color: Colors.white)),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: pageViewController,
                      count: 3,
                      effect: WormEffect(
                        spacing: 15,
                        dotColor: Colors.black,
                        activeDotColor: Colors.red,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () => pageViewController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCubic),
                      child: Text('Suivant',
                          style: GoogleFonts.comicNeue(
                              fontSize: 20, color: Colors.white)))
                ],
              ),
            ),
    );
  }
}
