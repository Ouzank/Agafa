// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';




class FormulePoulet extends StatefulWidget {
  FormulePoulet({Key? key}) : super(key: key);

  @override
  State<FormulePoulet> createState() => _FormulePouletState();
}

class _FormulePouletState extends State<FormulePoulet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:Container(
      child: Text("Voila votre resultat"),
    ));
  }
}