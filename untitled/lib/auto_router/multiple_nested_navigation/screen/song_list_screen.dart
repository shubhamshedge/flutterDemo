import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:untitled/auto_router/multiple_nested_navigation/routes/app_router.gr.dart';
@RoutePage()
class SongListScreen extends StatelessWidget {
  const SongListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Song list'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: List.generate(20, (index) {
          return ListTile(
            title: Text('Song $index'),
            subtitle: Text('Description $index'),
            onTap: () {
              AutoRouter.of(context).push(const SongDetailRoute());
            },
          );
        }),
      ),
    );
  }
}
