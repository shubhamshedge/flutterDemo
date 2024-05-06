import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.gr.dart';

@RoutePage()
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            child: const Text(
              'Goto Screen B',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            onPressed: () {
              AutoRouter.of(context).push(const RouteB());
            },
          ),
        ],
      ),
    );
  }
}
