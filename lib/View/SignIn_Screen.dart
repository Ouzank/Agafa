// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/Controllers/UserController.dart';
import 'package:agafa/View/GetStarted_Screen.dart';
import 'package:agafa/View/SignUp_Screen.dart';
import 'package:agafa/Widgets/BuildButton_Widget.dart';
import 'package:agafa/Widgets/TextFormField._Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  RxBool show = false.obs;
  UserController signInController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mainColor,
        body: SafeArea(
            child: Column(children: [
          SafeArea(
            child: Container(
              decoration: BoxDecoration(color: mainColor),
              height: 60,
            ),
          ),
          // inputsizebox,
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(children: [
               const SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child:SvgPicture.asset(
                      'assets/chicken.svg',
                     height: 70,
                    ), 
                ),
               
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Connectez-vous",
                    style: GoogleFonts.comicNeue(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    //  key: formKeyLogin,
                      child: Column(
                        children: [
                          myTextFormField("Email", Icons.email,
                              userController.email, "Entrez l'e-mail"),
                          const SizedBox(
                            height: 10,
                          ),
                          Obx(() => TextFormField(
                                controller: userController.password,
                                validator: (value) {
                                  if (value!.length < 6) {
                                    return "Doit contenir au moins 6 caracteres";
                                  } else if (value.isEmpty &&
                                      userController.email.text.isEmpty) {
                                    errortext.value = '';
                                  }
                                },
                                onSaved: (value) {
                                  userController.password.text = value!;
                                  errortext.value = '';
                                },
                                obscureText: show.value,
                                cursorColor: mainColor,
                                decoration: InputDecoration(
                                    focusColor: mainColor,
                                    hintText: 'Mot de passe',
                                    filled: true,
                                    fillColor: inputColor,
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: mainColor,
                                    ),
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          show.toggle();
                                        },
                                        icon: show.value
                                            ? Icon(
                                                FontAwesomeIcons.eye,
                                                  color: mainColor,
                                              )
                                            : Icon(FontAwesomeIcons.eyeSlash,
                                                color: mainColor)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none)),
                              )),

                          // Obx(() => Center(
                          //       child: errortext.value == ''
                          //           ? null
                          //           : Text(
                          //               errortext.value,
                          //               textAlign: TextAlign.center,
                          //               style: GoogleFonts.comicNeue(
                          //                   color: mainColor, fontSize: 20),
                          //             ),
                          //     )),
                          Padding(
                            padding: const EdgeInsets.only(left: 170, top: 10),
                            child: TextButton(
                                onPressed: () {},
                                child: Text("Mot de passe oublie ?",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: mainColor,
                                        fontSize: 15))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          buildButton(
                            "Se connecter",
                            formKeyLogin,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Pas de compte ?',
                                  style: GoogleFonts.comicNeue()),
                              TextButton(
                                child: Text('S\'inscrire',
                                    style: GoogleFonts.comicNeue(
                                        color: mainColor)),
                                onPressed: () => Get.to(SignUp()),
                              ),
                            ],
                          )
                        ],
                      )),
                )
              ]),
            ),
          )
        ])));
  }
}

Future<void> validator(GlobalKey<FormState> formState) async {
  Get.to(GetStarted());
  // if (formState.currentState!.validate()) {
  //   signInLoading.toggle();
  //   userController.signIn(
  //       userController.email.text, userController.password.text);
  // }
}
