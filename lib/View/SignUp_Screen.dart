import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/View/SignIn_Screen.dart';
import 'package:agafa/Widgets/BuildButton_Widget.dart';
import 'package:agafa/Widgets/Loading_Widget.dart';
import 'package:agafa/Widgets/TextFormField._Widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Constants/constants.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  RxBool show = false.obs;

  @override
  Widget build(BuildContext context) {
    final currentSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mainColor,
        body: Obx(() => signUpLoading.value ? Loading():SafeArea(
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
                  Expanded(
                    child: Container(
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
                                Center(
                                  heightFactor: 2,
                                  child: Text('Inscrivez-vous',style:GoogleFonts.comicNeue(fontSize: 30,fontWeight:FontWeight.w900))),
                                myTextFormField(
                                    "Nom",
                                    Icons.person,
                                    userController.nom,
                                    "Entrez le nom"),
                                inputsizebox,
                                myTextFormField(
                                    "Email",
                                    Icons.email,
                                    userController.email,
                                    "Entrez nom l'email"),
                                inputsizebox,
                              IntlPhoneField(
                          dropdownTextStyle: TextStyle(
                              fontSize: 10, height: 1),
                          style: TextStyle(fontSize: 10, height: 1),

                          searchText: 'Rechercher',
                          invalidNumberMessage:
                              'Numéro de téléphone obligatoire',
                          controller: userController.phone,
                          onSaved: (value) {
                            userController.phone.text = value!.number;
                          },
                          decoration: InputDecoration(
                              fillColor: inputColor,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          initialCountryCode: 'BJ',
                        ),    
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
                               ElevatedButton(
    onPressed: () {
      validator(formKeyRegister);
    },
    child: Text('S\'inscrire',
        style:GoogleFonts.comicNeue(fontSize: 25, fontWeight: FontWeight.w900)),
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double?>(15),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            EdgeInsets.symmetric(vertical: 10, horizontal: 45)),
        backgroundColor:
            MaterialStateProperty.all<Color>(Color.fromARGB(255, 3, 131, 33)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
  ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'J\'ai déja un compte',
                                      style: GoogleFonts.comicNeue(),
                                    ),
                                    TextButton(
                                        onPressed: () => Get.off(SignIn()),
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
          ),
        ]))));
  }
}

void validator (GlobalKey<FormState>  formState) {
  if (formState.currentState!.validate()) {
    userController.signUp(
        userController.email.text,
        userController.password.text,
        userController.nom.text,
        userController.phone.text);
    print(userController.email);
  }
}
