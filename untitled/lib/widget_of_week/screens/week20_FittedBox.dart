import 'package:flutter/material.dart';

class Week20FittedBox extends StatefulWidget {
  Week20FittedBox({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _Week20FittedBoxState createState() => _Week20FittedBoxState();
}

class _Week20FittedBoxState extends State<Week20FittedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Without FittedBox Image',
          ),
          Image.network(
              'https://cdn.iconscout.com/icon/free/png-256/apple-881-722676.png'),
          Text(
            'With FittedBox Image Below',
          ),
          Container(
            width: 300.0,
            height: 200.0,
            color: Colors.amber,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.network(
                  'https://cdn.iconscout.com/icon/free/png-256/apple-881-722676.png'),
            ),
          ),
        ],
      ),
    );
  }
}
