import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IngredientController extends GetxController{

static IngredientController instance  = Get.find();

  TextEditingController price = TextEditingController();
  TextEditingController quantity= TextEditingController();
}