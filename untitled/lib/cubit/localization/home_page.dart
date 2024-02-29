import 'package:flutter/material.dart';
import 'app_localizations.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("home".tr(context)),
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const SettingsPage())),
                icon: const Icon(Icons.settings))
          ],
        ),
      
        body: Center(
          child: Text(
            "hello_msg".tr(context),
            style: const TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
