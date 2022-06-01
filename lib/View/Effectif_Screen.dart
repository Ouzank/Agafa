// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Controllers/UserController.dart';
import 'package:agafa/View/Age_Screen.dart';
import 'package:agafa/View/FormulePoulet.dart';
import 'package:agafa/View/Ingredients_Screen.dart';
import 'package:agafa/Widgets/TextFormField._Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/onboarding.dart';

class SelectEffectif extends StatefulWidget {
  const SelectEffectif({Key? key}) : super(key: key);

  @override
  State<SelectEffectif> createState() => _SelectEffectifState();
}

class _SelectEffectifState extends State<SelectEffectif> {
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
                alignment: AlignmentDirectional.center,
                height: 90.0,
                child: Text('AGAFA',
                    style: GoogleFonts.comicNeue(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900))),
          ),
<<<<<<< HEAD
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(10),
                  height: 559,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Entrez l'effectif de votre popullation",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Form(
                            child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Effectif',
                              hintText:
                                  "Entrez l'effectif de votre population ",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        )),
                      ),
                      Container(
                        height: 300,
                        child: Image.asset('assets/chickeneffectif.jpeg',
                            fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        TextButton(
                            onPressed: (() => Get.to(SelectAge())),
                            child: Text(
                              'Précedent',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: mainColor),
                            )),
                        SizedBox(
                          width: 60,
                        ),
                        Center(
                            child: ElevatedButton(
                          onPressed: () => Get.to(FormulePoulet),
                          child: Text('Suivant',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w900)),
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
                                      borderRadius:
                                          BorderRadius.circular(40)))),
                        ))
                      ])
                    ],
                  ))),
        ],
=======
          Expanded(child: 
          Container(
              padding: EdgeInsets.all(10),
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Entrez l'effectif de votre population",
                        style: GoogleFonts.comicNeue(fontSize: 20.0,fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Form(
                          child: Center(
                        child: TextFormField(
                          cursorColor: mainColor,
                          cursorRadius: Radius.circular(20),
                          decoration: InputDecoration(

                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:BorderSide(color: mainColor)),
                            labelText: 'Effectif',
                            labelStyle: GoogleFonts.comicNeue(color: mainColor),
                          
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      )),
                    ),
                   Container(
                     height: 370,
                      child: Image.asset('assets/chickeneffectif.jpeg',
                          fit: BoxFit.cover),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      OutlinedButton(
                         style: ButtonStyle(
                                  elevation:
                                      MaterialStateProperty.all<double?>(15),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsetsGeometry?>(
                                          EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 45)),
                                   shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder?>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40)))),
                          onPressed: (() => Get.back()),
                          child: Text(
                            'Précédent',
                            style: GoogleFonts.comicNeue(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: mainColor),
                          )),
                    
                      Center(
                          child: ElevatedButton(
                        onPressed: () => Get.to(Ingredient()),
                        child: Text('Suivant',
                            style: GoogleFonts.comicNeue(
                                fontSize: 22, fontWeight: FontWeight.w900)),
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double?>(5),
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
                      ))
                    ])
                  ],
                ),
              ))
                  ),
                  ],
>>>>>>> f9a9fc11a853bf476e49af159dc9d30bf3082379
      )),
    );
  }
}
