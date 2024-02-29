import 'package:flutter/material.dart';

class Week79AnimatedWidget extends StatefulWidget {
  final String title;

  const Week79AnimatedWidget({required Key key, required this.title}) : super(key: key);

  @override
  _Week79AnimatedWidgetState createState() => _Week79AnimatedWidgetState();
}

class _Week79AnimatedWidgetState extends State<Week79AnimatedWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Stop'),
        onPressed: () {
          setState(() {
            _controller.stop();
          });
        },
      ),
    );
  }
}
