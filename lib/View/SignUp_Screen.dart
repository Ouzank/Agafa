import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/View/SignIn_Screen.dart';
import 'package:agafa/Widgets/BuildButton_Widget.dart';
import 'package:agafa/Widgets/TextFormField._Widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/constants.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  RxBool show = false.obs;

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mainColor,
        body: SafeArea(
            child: Column(children: [
          SafeArea(
            child: Container(
              child: Center(
                child: Text(
                  "Bienvenue",
                  style: GoogleFonts.comicNeue(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w900),
                ),
              ),
              height: 75,
              decoration: BoxDecoration(color: mainColor),
            ),
          ),
          Container(
            height: currentSize.height - (100),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                          key: formKeyRegister,
                          child: Column(
                            children: [
                              myTextFormField(
                                  "Nom",
                                  Icons.person,
                                  userController.nom,
                                  "Entrez le nom le l'association"),
                              inputsizebox,
                              myTextFormField(
                                  "Email",
                                  Icons.email,
                                  userController.email,
                                  "Entrez nom l'email de  l'association"),
                              inputsizebox,
                              myTextFormField(
                                  "Telephone",
                                  Icons.phone,
                                  userController.phone,
                                  "Entrez votre  numero de telephone"),
                              inputsizebox,
                              Obx(() => TextFormField(
                                    controller: userController.password,
                                    validator: (value) => value!.length < 6
                                        ? "Doit contenir au moins 6 caracteres"
                                        : null,
                                    onSaved: (value) {
                                      userController.password.text = value!;
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
                                                : Icon(
                                                    FontAwesomeIcons.eyeSlash,
                                                    color: mainColor)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide.none)),
                                  )),
                              inputsizebox,
                              Obx(() => TextFormField(
                                    validator: (value) => value !=
                                            userController.password.text
                                        ? "Les mots de passe ne sont pas identiques"
                                        : null,
                                    onSaved: (value) {
                                      userController.password.text = value!;
                                    },
                                    obscureText: show.value,
                                    decoration: InputDecoration(
                                        hintText: 'Confirmez Mot de passe',
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
                                                ? Icon(FontAwesomeIcons.eye,
                                                    color: mainColor)
                                                : Icon(
                                                    FontAwesomeIcons.eyeSlash,
                                                    color: mainColor)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide.none)),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              buildButton(
                                "S'inscrire",
                                formKeyRegister,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'J\'ai deja un compte',
                                    style: GoogleFonts.comicNeue(),
                                  ),
                                  TextButton(
                                      onPressed: () => Get.to(SignIn()),
                                      child: Text('Se connecter',
                                          style: GoogleFonts.comicNeue(
                                              color: mainColor,
                                              fontWeight: FontWeight.bold)))
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}

void validator(formState) {
  if (formState.currentState!.validate()) {
    userController.signUp(
        userController.email.text,
        userController.password.text,
        userController.nom.text,
        userController.phone.text);
    print(userController.email);
  }
}
