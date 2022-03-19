import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final appdata = GetStorage("UserThemeData");
  final RxBool isDarkTheme = true.obs;

  void updateTheme(val) {
    isDarkTheme.value = val;
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
    //get_storage implementation
    appdata.write('darkmode', val);
  }

  bool isDarkMode() {
    return appdata.read('darkmode');
  }

  void userTheme() {
    isDarkTheme.value = isDarkMode();
  }

  ThemeController() {
    userTheme();
  }
}
