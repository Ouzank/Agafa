import 'package:agafa/Constants/constants.dart';
import 'package:agafa/View/SignIn_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants/Constants.dart';

Widget buildButton(String title, GlobalKey<FormState> onClick) {
  return ElevatedButton(
    onPressed: () {
      validator(onClick);
    },
    child: Text(title,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double?>(15),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            EdgeInsets.symmetric(vertical: 10, horizontal: 45)),
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 5, 105, 56)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
  );
}

