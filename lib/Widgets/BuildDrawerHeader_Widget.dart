// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/Firebase.dart';
import 'package:agafa/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildHeader(
    String name, String email, picprofil, VoidCallback onClicked) {
  Future getData() async {
    var query = await firebaseFirestore.collection('users').get();
    return query.docs;
  }
  return Container(
    color: mainColor,
    padding: EdgeInsets.only(left: 15, bottom: 50, top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style:
                      GoogleFonts.comicNeue(fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  email,
                  style:
                      GoogleFonts.comicNeue(fontSize: 15, color: Colors.white),
                ),
                //inputsizebox,
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
         
          },
          child: Text("Modifier",
              style: GoogleFonts.comicNeue(color: Colors.white)),
          style: ButtonStyle(
              elevation: MaterialStateProperty.all<double?>(15),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
              backgroundColor: MaterialStateProperty.all<Color?>(mainColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)))),
        )
      ],
    ),
  );
}

