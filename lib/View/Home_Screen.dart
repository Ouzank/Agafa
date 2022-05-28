import 'package:agafa/Constants/constants.dart';
import 'package:agafa/View/PopulationType_Screen.dart';
import 'package:agafa/Widgets/BuildButton_Widget.dart';
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
      body: Column(
        children: [
          ClipPath(
           // clipper: MyClipper(),
            child: Container(
                height: currentSize.height,
                color: mainColor,
                child: Center(
                    child: ElevatedButton(
                  onPressed: () {
                    Get.to(PopulationType());
                  },
                  child: Text('Type de population',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double?>(15),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                          EdgeInsets.symmetric(vertical: 10, horizontal: 45)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 3, 131, 33)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)))),
                ))
                // Text(
                //   'Container 1',
                //   style: GoogleFonts.comicNeue(
                //       color: Colors.white,
                //       fontSize: 35,
                //       fontWeight: FontWeight.w900),
                // ),
                ),
          ),
        ],
      ),
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
