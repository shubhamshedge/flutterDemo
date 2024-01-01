import 'package:flutter/material.dart';

class FittedBoxExample extends StatefulWidget {
  @override
  _FittedBoxExampleState createState() => _FittedBoxExampleState();
}

//automatically resize text size.
class _FittedBoxExampleState extends State<FittedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            FittedBox(
              child: Text("Flutter is Awesome"),
            ),
            FittedBox(
              child: Text("Flutter"),
            ),
            FittedBox(
              child: Text("in flutter everything is a widget"),
            ),
          ],
        ),
      ),
    );
  }
}
