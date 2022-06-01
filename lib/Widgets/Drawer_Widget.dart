// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/Firebase.dart';
import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/Widgets/BuidMenuItem_Widget.dart';
import 'package:agafa/Widgets/Loading_Widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/BuildDrawerHeader_Widget.dart';

class MyDrawer extends StatelessWidget {
  Future getData() async {
    var query = await firebaseFirestore.collection('users').get();
    return query.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            
            child: ListView(children: [
              FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection('users')
                      .doc(userController.findUser())
                      .get(),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Text("Document does not exist");
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return buildHeader(
                          data['nom'], data['email'], data['logoUrl'], () {});
                    }
                    return Loading();
                  }),
              buildMenuItem('Liste des formules', Icons.home_outlined, () {
                Get.back();
              }),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection('users')
                      .doc(userController.findUser())
                      .get(),
                  builder:
                      (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Text("Document does not exist");
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return buildMenuItem('Partagez', Icons.share, () async {
                        // Share.share(
                        //     'check out my website https://' + data['website']);
                      });
                    }
                    return buildMenuItem('Partagez', Icons.share, () async {});
                  }),
              SizedBox(
                height: 10,
              ),
              buildMenuItem('Note', Icons.star_outline_rounded, () {
                //  Get.to(PaymentHistory());
              }),
              SizedBox(
                height: 10,
              ),
              buildMenuItem('A propos', Icons.info_outline_rounded, () {
                //  Get.to(AproPos());
              }),
              SizedBox(
                height: 10,
              ),
              buildMenuItem('Déconnexion', Icons.logout_outlined, () {
                Get.defaultDialog(
                    title: "Êtes-vous sûr de ces informations ?",
                    content: Obx(() => signOutLoading.value
                        ? CircularProgressIndicator(
                            backgroundColor: Colors.black,
                            color: mainColor,
                          )
                        : Text("")),
                    buttonColor: mainColor,
                    textConfirm: 'Oui',
                    textCancel: 'Non',
                    middleText: '',
                    cancelTextColor: mainColor,
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                       userController.signOut();
                    });
               
              }),
            ])));
  }
}
