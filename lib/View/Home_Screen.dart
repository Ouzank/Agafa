import 'package:agafa/Constants/constants.dart';
import 'package:agafa/View/PopulationType_Screen.dart';
import 'package:agafa/Widgets/BuildButton_Widget.dart';
import 'package:agafa/Widgets/Drawer_Widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text('Accueil', style: GoogleFonts.comicNeue(fontSize: 20)),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          'Aucune formule n\'a encore été ajoutée',
          style: GoogleFonts.comicNeue(fontSize: 20),
        ),
      ),
      floatingActionButton: CircleAvatar(
          radius: 35,
          backgroundColor: mainColor,
          child: IconButton(
            onPressed: () {
              Get.to(PopulationType());
            },
            icon: Icon(Icons.add),
            iconSize: 30,
            tooltip: 'Ajouter une formule',
          )),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);

    // path.lineTo(200, 200);
    var startPoint = Offset(size.width, size.height);
    var endPoint = Offset(size.width / 3, size.height);
    //path.(endPoint);

    // path.quadraticBezierTo(
    //     startPoint.dx, startPoint.dy, endPoint.dx, endPoint.dy);
    //   path.lineTo(1000, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
