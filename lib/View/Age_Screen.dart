// ignore_for_file: prefer_const_constructors

import 'package:agafa/View/Effectif_Screen.dart';
import 'package:flutter/material.dart';
import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAge extends StatefulWidget {
  const SelectAge({Key? key}) : super(key: key);

  @override
  State<SelectAge> createState() => _SelectAgeState();
}

class _SelectAgeState extends State<SelectAge> {
  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainColor,
      appBar: (AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        title: Text(
          'Select population age',
          style: GoogleFonts.dancingScript(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      )),
      body: SafeArea(
        // children: [
        //   SafeArea(
        //       child: Container(
        //           height: 90,
        //           child: Center(
        //             child: Text(
        //               'AGAFA',
        //               style:
        //                  GoogleFonts.comicNeue(
        //                 fontSize: 40,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.w900
        //             ),
        //             ),
        //           ),
        //           ),
        //           ),

        child: Expanded(
          child: Container(
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(30),
                //   topRight: Radius.circular(30),
                // ),
                color: Colors.white),
            padding: EdgeInsets.all(10.0),
            child: ListView(
              children: [
                // Center(
                //   child: Text("Sélectionner l'âge de  votre population",
                //   style: GoogleFonts.comicNeue(
                //           fontSize: 20,
                //           fontWeight: FontWeight.w500,
                //           color: mainColor,
                //         )),
                // ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    Get.to(SelectEffectif());
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    shadowColor: mainColor,
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Image.asset(
                            'assets/chickendemarrage.png',
                            fit: BoxFit.cover,
                            height: 90,
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                              child: Text(
                                'Poussin Démarrage',
                                style: GoogleFonts.comicNeue(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'Le poussin de  la 1ère à\n la 4ème semaine \n après sa naissance',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.comicNeue(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                InkWell(
                  onTap: () {
                    Get.to(SelectEffectif());
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    shadowColor: mainColor,
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 02),
                          child: Image.asset(
                            'assets/chickencroissance.png',
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                              child: Text(
                                'Poussin Croissance',
                                style: GoogleFonts.comicNeue(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                                'Le poussin de la 5ème à\n la 8ème semaine \n après sa naissance',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.comicNeue(
                                  fontSize: 16,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                InkWell(
                  onTap: () {
                    Get.to(SelectEffectif());
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    shadowColor: mainColor,
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 02),
                          child: Image.asset(
                            'assets/chickenfinission.png',
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                              child: Text(
                                'Poulette Finition',
                                style: GoogleFonts.comicNeue(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'La poulette de la 9ème à\n la 20ème semaine \n après sa naissance',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.comicNeue(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),

                InkWell(
                  onTap: () {
                    Get.to(SelectEffectif());
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    shadowColor: mainColor,
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 02),
                          child: Image.asset(
                            'assets/chickenfinission.png',
                            fit: BoxFit.cover,
                            height: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                              child: Text(
                                'Poule',
                                style: GoogleFonts.comicNeue(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              'La poule a l\'âge \n adulte au dela  \n de la 20ème semaine ',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.comicNeue(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                // Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       OutlinedButton(
                //           style: ButtonStyle(
                //               elevation: MaterialStateProperty.all<double?>(15),
                //               padding: MaterialStateProperty.all<
                //                       EdgeInsetsGeometry?>(
                //                   EdgeInsets.symmetric(
                //                       vertical: 10, horizontal: 45)),
                //               shape: MaterialStateProperty.all<
                //                       RoundedRectangleBorder?>(
                //                   RoundedRectangleBorder(
                //                       borderRadius:
                //                           BorderRadius.circular(40)))),
                //           onPressed: (() => Get.back()),
                //           child: Text(
                //             'Retour',
                //             style: GoogleFonts.comicNeue(
                //                 fontSize: 20,
                //                 fontWeight: FontWeight.w500,
                //                 color: mainColor),
                //           )),

                      /*   ElevatedButton(
                      onPressed: (() => Get.to(SelectEffectif())),
                      child: Text("Suivant",
                          style: GoogleFonts.comicNeue(
                              fontSize: 20, fontWeight: FontWeight.bold)),
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
                    ),*/
                    ]),
            ),
          ),
        ),
    );
  }
}
