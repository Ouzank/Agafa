// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:agafa/Constants/Firebase.dart';
import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/Controllers/IngredientController.dart';
import 'package:agafa/Widgets/Loading_Widget.dart';
import 'package:agafa/Widgets/TextFormField._Widget.dart';
import 'package:agafa/main.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Ingredient extends StatefulWidget {
  Ingredient({Key? key}) : super(key: key);

  @override
  State<Ingredient> createState() => _IngredientState();
}

class _IngredientState extends State<Ingredient> {
  Future getData() async {
    var query = await firebaseFirestore.collection('Matieres Premieres').get();
    return query.docs;
  }

  IngredientController controller = Get.put(IngredientController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: mainColor, title: Text('Liste des ingrédients')),
      body: SafeArea(
        child: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Loading();
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, index) {
                    return Container(
                      color: mainColor.withOpacity(0.03),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Get.defaultDialog(
                                content: Form(
                                  child: Column(
                                    children: [
                                      Text('Information'),
                                      myTextFormField(
                                          "Prix en fr",
                                          Icons.monetization_on,
                                          ingredientController.price,
                                          "Entrez le lien vers la plateforme"),
                                          inputsizebox,
                               ]       ),
                                ),
                              );
                            },
                          //  trailing:Counter(name, description),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 10),
                            selectedColor: mainColor.withOpacity(0.2),
                            selectedTileColor: mainColor.withOpacity(0.4),
                            dense: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            title: Text(
                                snapshot.data[index].data()['Nom'].trim(),
                                style: GoogleFonts.comicNeue(fontSize: 16)),
                          ),
                          Divider(
                            height: 0,
                            color: mainColor.withOpacity(0.5),
                          )
                        ],
                      ),
                    );
                  },
                );
              }
            }),
      ),
    );
  }
}
