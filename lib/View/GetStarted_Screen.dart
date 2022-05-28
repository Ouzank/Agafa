import 'package:agafa/Constants/constants.dart';
import 'package:agafa/View/SignIn_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mainColor,
        body: SafeArea(
            child: Column(children: [
          SafeArea(
            child: Container(
                alignment: AlignmentDirectional.center,
                decoration: BoxDecoration(color: mainColor),
                height: 150,
                child: Text('AGAFA',
                    style: GoogleFonts.comicNeue(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900))),
          ),
          
          Expanded(
            child: Container(
              width: currentSize.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                      CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.grey,
                      child: SvgPicture.asset(
                        'assets/chicken.svg',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Bienvenue sur AGFA, l'application par exellence pour les éleveurs de volaille",
                        style: GoogleFonts.comicNeue(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(SignIn());
                      },
                      child: Text('Commencer',
                          style: GoogleFonts.comicNeue(
                              fontSize: 25, fontWeight: FontWeight.w900)),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double?>(15),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry?>(
                                  EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 45)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 3, 131, 33)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder?>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)))),
                    )
                  ]),
            ),
          )
        ])));
  }
}
