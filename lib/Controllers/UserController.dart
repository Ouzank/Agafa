// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:agafa/Constants/Firebase.dart';
import 'package:agafa/Constants/constants.dart';
import 'package:agafa/Constants/controllers.dart';
import 'package:agafa/View/Home_Screen.dart';
import 'package:agafa/View/IntroSlider_Screen.dart';
import 'package:agafa/View/SignIn_Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  FirebaseAuth auth = FirebaseAuth.instance;

  late Rx<User?> firebaseUser;
  TextEditingController nom = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();

  String usersCollection = "users";

  @override
  Future<void> onReady() async {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());
  }

  signIn(String email, String password) async {
    try {
      await auth
          .signInWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((result) async {
        Get.offAll(Home());
        //    formKeyLogin.currentState!.reset();
        uId = result.user!.uid;

        errortext.value = '';
        signInLoading.toggle();
        print(signInLoading.value);
        print(uId);
      });
    } on FirebaseAuthException catch (e) {
      String error = '';
      print(e.message);
      signInLoading.toggle();
      if (e.message == 'The email address is badly formatted.') {
        error = " Format de l'e-mail incorrect";
      } else if (e.message ==
          'The password is invalid or the user does not have a password.') {
        error = "Mot de passe incorrect";
      } else if (e.message ==
          'There is no user record corresponding to this identifier. The user may have been deleted.') {
        error = "Cet utilisateur n'existe pas";
      }
      print(error);
      errortext.value = error;
    }
  }

  signUp(
    String email,
    String password,
    String? nom,
    String? phone,
  ) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((result) {
        String userId = result.user!.uid;
        print(userId);
        Get.offAll(Home());
        _addUserToFirestore(userId, nom, email, phone);
        //  _clearControllers();
      });
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar("Erreur d'inscription", "Veuillez reessayer");
    }
  }

  _clearControllers() {
    nom.clear();
    email.clear();
    password.clear();
    phone.clear();
  }

  _addUserToFirestore(
      String userId, String? nom, String email, String? phone) async {
    try {
      await firebaseFirestore
          .collection(usersCollection)
          .doc(userId)
          .set({"id": userId, "nom": nom, "email": email, "phone": phone});
    } catch (e) {
      print(e.toString());
    }
  }

  findUser() {
    User? fUser = userController.auth.currentUser;
    if (fUser == null) {
      return "User doesn't exist";
    } else {
      return uId = fUser.uid;
    }
  }

  void signOut() async {
    try {
      formKeyLogin.currentState?.reset();

      await auth.signOut().then((value) {
        Get.off(SignIn());
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
