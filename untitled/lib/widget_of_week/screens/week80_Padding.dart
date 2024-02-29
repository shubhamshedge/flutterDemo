import 'package:flutter/material.dart';

class Week80Padding extends StatelessWidget {
  final String title;
  const Week80Padding({required Key key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlexContainer(color: Colors.yellow, padding: 5.0,key: key!,),
            Flexible(
              child: Row(
                children: <Widget>[
                  FlexContainer(color: Colors.green, padding: 10.0,key: key!),
                  FlexContainer(color: Colors.blue, padding: 15.0,key: key!),
                  FlexContainer(color: Colors.green, padding: 20.0,key: key!),
                ],
              ),
            ),
            FlexContainer(color: Colors.red, padding: 5.0,key: key!),
          ],
        ),
      ),
    );
  }
}

class FlexContainer extends StatelessWidget {
  final color;
  final double padding;

  const FlexContainer({required Key key, this.color, required this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          color: color,
          child: Center(
            child: Text('Padding $padding'),
          ),
        ),
      ),
    );
  }
}
