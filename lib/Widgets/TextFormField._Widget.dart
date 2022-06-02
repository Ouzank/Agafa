import 'package:agafa/Constants/constants.dart';
import 'package:flutter/material.dart';

Widget myTextFormField(String title, IconData icon,
    TextEditingController controller, String validationText) {
  return TextFormField(
    controller: controller,
    validator: (value) => value!.isEmpty ? validationText : null,
    onSaved: (value) {
      controller.text = value!;
    },
    cursorColor: mainColor,
    decoration: InputDecoration(
        hintText: title,
        filled: true,
        fillColor: inputColor,
        prefixIcon: Icon(
          icon,
          color: mainColor,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none)),
  );
}
