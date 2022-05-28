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
      body: SafeArea(
          child: Column(
        children: [
          SafeArea(
              child: Container(
                  height: 90,
                  child: Center(
                    child: Text(
                      'AGAFA',
                      style: 
                         GoogleFonts.comicNeue(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900
                    ),
                    ),
                  ),
                  ),
                  ),
          
            Expanded( child: Container(
              
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.white),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                    child: Text("Selectionner l'âge de  votre population",
                    style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: mainColor,
                          )),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Card(
                    elevation: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Image.asset('assets/chickendemarrage.png',
                          fit:BoxFit.cover,
                             height: 100,
                        ),
                        ),
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                'Poussin Demarrage',
                                style: TextStyle(
                                    fontSize:16, fontWeight: FontWeight.w900),
                              ),
                            ),
                            Text('un poulet croquette',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ), )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Card(
                    elevation:10,
                    
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
                          children: const [
                            Center(
                              child: Text(
                                'Poussin Croissance',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w900),
                              ),
                            ),
                            Text('un mini poulet',
                            style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Card(
                    elevation:10,
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
                          children: const [
                            Center(
                              child: Text(
                                'Poulette Finission',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                            ),
                            Text('Poulet adulte',
                            style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(children: [
                    TextButton(
                      onPressed: (() =>
                          Get.back()), //la page de selection de du type),
                      child: Text("Précédent",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: mainColor,
                          )),
                    ),
                    SizedBox(width: 100),
                    ElevatedButton(
                      onPressed: (() => Get.to(SelectEffectif())),
                      child: Text("Suivant",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900)),
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
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
