import 'package:flutter/cupertino.dart';

const Color inputColor = Color.fromARGB(255, 227, 224, 224);
 Color mainColor = Color.fromARGB(255, 5, 105, 56);
GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
GlobalKey<FormState> formKeyRegister = GlobalKey<FormState>();
const SizedBox inputsizebox = SizedBox(
  height: 20,
);
dynamic uId;
dynamic signInLoading = true;
dynamic errortext = "";
