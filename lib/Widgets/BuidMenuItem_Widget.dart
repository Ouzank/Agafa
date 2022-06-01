import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



Widget buildMenuItem(String title, IconData icon, VoidCallback? onClicked) {
  return ListTile(
    leading: Icon(icon,size: 25,),
    dense: true,
    title: Text(title,style: GoogleFonts.comicNeue(fontSize: 14,fontWeight: FontWeight.bold),),
    hoverColor: Colors.black,
    onTap: onClicked,
  );
}
