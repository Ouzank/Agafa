// ignore_for_file: prefer_const_constructors

import 'package:agafa/Constants/Firebase.dart';
import 'package:agafa/Widgets/Loading_Widget.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
              future: getData(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }
          
                if (snapshot.hasData && !snapshot.data!.exists) {
                  return Text("Document does not exist");
                }
          
                if (snapshot.connectionState == ConnectionState.done) {
                      return Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: ListView.builder(
                       itemCount: snapshot.data.length,
                        itemBuilder: (_, index) {
                          return ListTile(title: Text(
                                snapshot.data[index].data()['Nom']),);
                        },
                       ),
                  );
                }
                return Loading();
              }),
        ),
      ),
    );
  }
}
