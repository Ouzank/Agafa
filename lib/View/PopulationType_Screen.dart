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
      appBar: (AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        title: Text(
          "Population",
          textAlign: TextAlign.center,
          style: GoogleFonts.comicNeue(
              fontSize: 20, fontWeight: FontWeight.w600),
        ),
      )),
      body:SafeArea( 
      //Column(
        // children: [
        //   Container(
        //       alignment: AlignmentDirectional.center,
        //       width: currentSize.width,
        //       height: 150,
        //       decoration: BoxDecoration(color: mainColor),
        //       child: Text('AGAFA',
        //           style: GoogleFonts.comicNeue(
        //               fontSize: 40,
        //               color: Colors.white,
        //               fontWeight: FontWeight.w900))),

          child:Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                alignment: AlignmentDirectional.center,
                height: currentSize.height,
                decoration: BoxDecoration(
                    color: Colors.white,),
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(30),
                    //     topRight: Radius.circular(30))
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sélectionner le type de la population',style:GoogleFonts.comicNeue(fontSize: 20)),
                    InkWell(
                      onTap: (() {
                        Get.to(SelectAge());
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
                              Image.asset('assets/chickenpondeuse.png',
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
                                  Text('Poule domestique élevée\ndans le but de\nproduire des oeufs\nutilisés dans\nl\'alimentation humaine',
                                      textAlign: TextAlign.left,
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
                    inputsizebox,
                    InkWell(
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
                              Image.asset(
                                'assets/chickenpouletchair.png',
                                height: 100,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text('Poulet de Chair',
                                      style: GoogleFonts.comicNeue(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  inputsizebox,
                                  Text('Poule domestique élevée\nspécifiquement pour la production\nde viande',
                                      textAlign: TextAlign.left,
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
                //      OutlinedButton(
                //         style: ButtonStyle(
                //             elevation: MaterialStateProperty.all<double?>(15),
                //             padding:
                //                 MaterialStateProperty.all<EdgeInsetsGeometry?>(
                //                     EdgeInsets.symmetric(
                //                         vertical: 10, horizontal: 45)),
                       
                //             shape: MaterialStateProperty.all<
                //                     RoundedRectangleBorder?>(
                //                 RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(40)))),
                //         onPressed: (() => Get.back()),
                //         child: Text(
                //           'Retour',
                //           style: GoogleFonts.comicNeue(
                //               fontSize: 20,
                //               fontWeight: FontWeight.w500,
                //               color: mainColor),
                //         )),
                //   ],
                // )),
                  ],)  )
          )
      ),
    );
  }
}
