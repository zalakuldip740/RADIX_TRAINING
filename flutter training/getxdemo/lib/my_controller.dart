import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var num = 0.obs;
  var isDarkMode = false.obs;

  increment() {
    num.value++;
  }

  decrement() {
    if (num.value > 0) {
      num.value--;
    } else {
      Get.snackbar("Alert", "Can't decrement",
          icon: const Icon(
            Icons.add_alert,
            color: Colors.redAccent,
          ),
          isDismissible: true,
          barBlur: 25,
          duration: const Duration(seconds: 3),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.greenAccent,
          colorText: Colors.white);
    }
  }

  changeTheme() {
    if (isDarkMode.value) {
      isDarkMode.value = false;
      Get.changeTheme(ThemeData.light());
    } else {
      Get.changeTheme(ThemeData.dark());
      isDarkMode.value = true;
    }
  }
}
