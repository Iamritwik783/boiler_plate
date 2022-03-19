import '../theme/themepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
        child: const Text("Theme Page"),
        onPressed: () {
          Get.to(ThemePage());
        },
      )),
    );
  }
}
