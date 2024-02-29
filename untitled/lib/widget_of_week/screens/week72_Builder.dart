import 'package:flutter/material.dart';

class Week72Builder extends StatelessWidget {
  final String title;
  const Week72Builder({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Builder(
          builder: (context) => TextButton(
            child: Text('Click me'),
            onPressed: () {
              /*Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Test Builder Widget!'),
                ),
              );*/
              SnackBar(
                content: Text('Test Builder Widget!'),
              );
            },
          ),
        ),
      ),
    );
  }
}
