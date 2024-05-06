import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:untitled/auto_router/multiple_nested_navigation/routes/app_router.gr.dart';

@RoutePage()
class SongCommentListScreen extends StatelessWidget {
  const SongCommentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: List.generate(
        5,
        (index) {
          return ListTile(
            title: Text('Comment $index'),
            trailing: TextButton(
              child: const Text('Read'),
              onPressed: () {
                AutoRouter.of(context).push(const SongCommentDetailRoute());
              },
            ),
          );
        },
      ),
    );
  }
}
