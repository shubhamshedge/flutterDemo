import 'package:flutter/material.dart';

class Week74ProgressIndicator extends StatefulWidget {
  Week74ProgressIndicator({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _Week74ProgressIndicatorState createState() =>
      _Week74ProgressIndicatorState();
}

class _Week74ProgressIndicatorState extends State<Week74ProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color> _colorTween;

  void initState() {
    _animationController = AnimationController(
      duration: Duration(milliseconds: 1800),
      vsync: this,
    );

    _colorTween = _animationController.drive(
      ColorTween(
        begin: Colors.red,
        end: Colors.blue,
      ) as Animatable<Color>,
    );

    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(42.0),
              child: CircularProgressIndicator(valueColor: _colorTween),
            ),
            Padding(
              padding: const EdgeInsets.all(42.0),
              child: LinearProgressIndicator(valueColor: _colorTween),
            ),
          ],
        ),
      ),
    );
  }
}
