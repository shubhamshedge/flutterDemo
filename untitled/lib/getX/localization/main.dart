import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/e_commerce/views/home_screen/home_screen.dart';
import 'package:untitled/getX/localization/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Demo",
      locale: const Locale("en",'US'),
      fallbackLocale: const Locale('en', 'US'),
      translations: Languages(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Localization"),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text('name'.tr),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(const Locale('en', "US"));
                    },
                    child: const Text("English")),
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(const Locale('hi', "IN"));
                    },
                    child: const Text("Hindi")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
