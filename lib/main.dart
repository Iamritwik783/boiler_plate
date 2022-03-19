import './screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'theme/themes.dart';

void main() async {
  await GetStorage.init("UserThemeData");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode() {
      final appdata = GetStorage("UserThemeData");
      appdata.writeIfNull("darkmode", false);
      var isDark = appdata.read("darkmode");
      return isDark;
    }

    return GetMaterialApp(
        theme: CustomThemes().lightTheme,
        darkTheme: CustomThemes().darkTheme,
        themeMode: isDarkMode() ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
