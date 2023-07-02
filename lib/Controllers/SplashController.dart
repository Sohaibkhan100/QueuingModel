import 'dart:async';

import 'package:get/get.dart';
import 'package:simulation_model/Routes/Routes.dart';

class SplashController extends GetxController{

  splashMethod() {
    Timer(Duration(seconds: 6), () {
      Get.offAndToNamed(AppRoutes.homeScreen);
    });
  }
  @override
  void onInit() {
splashMethod();
super.onInit();
  }
}