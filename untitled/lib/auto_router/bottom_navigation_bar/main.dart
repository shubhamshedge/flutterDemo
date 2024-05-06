import 'package:flutter/material.dart';
import 'package:untitled/auto_router/bottom_navigation_bar/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

//bottom Navigation + nested route
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
