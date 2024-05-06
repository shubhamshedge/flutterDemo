import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:untitled/auto_router/multiple_nested_navigation/routes/app_router.gr.dart';

@RoutePage()
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          ListTile(
            title: const Text('Setting 1'),
            onTap: () {
              AutoRouter.of(context).push(const SettingDetailRoute());
            },
          ),
          ListTile(
            title: const Text('Setting 2'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Setting 3'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
