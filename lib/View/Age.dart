// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:flutter_svg/svg.dart';
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
return Scaffold(
  backgroundColor: mainColor,
  body: SafeArea(child: Column(
    children: [
      SafeArea(child:Container( 
        height: 12,
        child: Center( 
        child: Text('Agfa',style: TextStyle(color: Colors.white ,fontSize: 29,),),
      )
      )
      ),
      SafeArea(child: 
      Container(decoration: const BoxDecoration( 
        borderRadius: BorderRadius.only( 
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),

        child: Column(
          children: [
            Center(
              child: Text("Selectionner l'âge de  votre population"),
            ),

             SizedBox(height: 12.0,),
            Card( child:
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 02),
                  child: SvgPicture.asset(
                    'assets/chickendemarrage.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: const [
                    Center(
                      child: Text('Poussin Demarrage',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
                    ),
                    Text('Loreziazbdzbcuibcvzeicuczebubcebcuizevcuzevczecvuevcze')
                  ],
                )
              ],
            ),
            ),
            SizedBox(height: 12.0,),
             Card( child:
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 02),
                  child: SvgPicture.asset(
                    'assets/chickencroissance.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: const [
                    Center(
                      child: Text('Poussin Croissance',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
                    ),
                    Text('Loreziazbdzbcuibcvzeicuczebubcebcuizevcuzevczecvuevcze')
                  ],
                )
              ],
            ),
            ),
             SizedBox(height: 12.0,),
             Card( child:
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 02),
                  child: SvgPicture.asset(
                    'assets/Chickenfinission.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: const [
                    Center(
                      child: Text('Poulette Finission',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
                    ),
                    Text('Loreziazbdzbcuibcvzeicuczebubcebcuizevcuzevczecvuevcze')
                  ],
                )
              ],
            ),
            ),
            SizedBox(height:10.0 ,),

            Row( children :[
              TextButton(onPressed: (() => Get),//la page de selection de du type), 
              
              child: Text("Précedant", style: GoogleFonts.comicNeue(color: mainColor),) ),
            ]
            ),
          ],
        ),
        ),
        ),
    ],
  )),
);    
  }
}