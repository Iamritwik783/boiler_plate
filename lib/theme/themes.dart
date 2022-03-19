import 'package:flutter/material.dart';

class CustomThemes {
  final darkTheme = ThemeData(
      accentColor: Colors.red,
      brightness: Brightness.dark,
      primaryColor: Colors.amber,
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.amber,
        disabledColor: Colors.grey,
      ));

  final lightTheme = ThemeData(
      accentColor: Colors.pink,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        disabledColor: Colors.grey,
      ));
}
