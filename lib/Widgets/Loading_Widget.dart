import 'package:agafa/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
   Loading() ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child:  Center(
        child:SpinKitFoldingCube(
          color: Colors.black,
          size: 40,
        ) 
        ),
    );
  }
}