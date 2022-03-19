import './themeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemePage extends StatelessWidget {
  ThemePage({Key? key}) : super(key: key);

  final ThemeController tc = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Mode Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dark Mode"),
            Obx(() => CupertinoSwitch(
                  value: tc.isDarkTheme.value,
                  onChanged: (val) {
                    tc.updateTheme(val);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
