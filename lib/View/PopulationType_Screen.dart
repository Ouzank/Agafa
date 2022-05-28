// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/constants.dart';
import 'package:agafa/View/Age_Screen.dart';
import 'package:agafa/View/Effectif_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PopulationType extends StatelessWidget {
  const PopulationType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          Container(
              alignment: AlignmentDirectional.center,
              width: currentSize.width,
              height: 150,
              decoration: BoxDecoration(color: mainColor),
              child: Text('AGAFA',
                  style: GoogleFonts.comicNeue(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w900))),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                alignment: AlignmentDirectional.center,
                height: currentSize.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      surfaceTintColor: mainColor,
                      color: mainColor,
                      shadowColor: mainColor,
                      type: MaterialType.card,
                      child: InkWell(
                        onTap: (() {
                          Get.to(SelectEffectif());
                        }),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          shadowColor: mainColor,
                          elevation: 15,
                          child: Container(
                            height: 200,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset('assets/rooster.svg',
                                    height: 100),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text('Pondeuse',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.comicNeue(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    inputsizebox,
                                    Text('omoqsoq',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.comicNeue(
                                          fontSize: 16,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    inputsizebox,
                    Material(
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      surfaceTintColor: mainColor,
                      color: mainColor,
                      shadowColor: mainColor,
                      type: MaterialType.card,
                      child: InkWell(
                        onTap: () {
                            Get.to(SelectAge());
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          shadowColor: mainColor,
                          elevation: 15,
                          child: Container(
                            height: 200,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  'assets/rooster.svg',
                                  height: 100,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text('Pondeuse',
                                        style: GoogleFonts.comicNeue(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    inputsizebox,
                                    Text('Lui c\'est un poulet mouton',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.comicNeue(
                                          fontSize: 16,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
