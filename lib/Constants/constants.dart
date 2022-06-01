import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

const Color inputColor = Color.fromARGB(255, 227, 224, 224);
Color mainColor = Color.fromARGB(255, 3, 131, 33);
GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
GlobalKey<FormState> formKeyRegister = GlobalKey<FormState>();
const SizedBox inputsizebox = SizedBox(
  height: 20,
);
dynamic uId;
RxBool signInLoading = false.obs;
RxBool signOutLoading = false.obs;
RxBool signUpLoading = false.obs;
RxString errortext = "".obs;
dynamic showHome;
dynamic prefs;
