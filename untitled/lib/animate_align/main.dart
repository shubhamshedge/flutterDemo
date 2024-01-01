import 'package:flutter/material.dart';
import 'animated_builder.dart';
import 'animated_container.dart';
import 'animated_list.dart';
import 'animated_position.dart';
import 'decoration_box_transition.dart';
import 'fade_transition.dart';

/// Flutter code sample for [AnimatedAlign].

/*void main() => runApp(const AnimatedAlignExampleApp());*/

/*void main() => runApp(const AnimatedBuilderExampleApp());*/

/*void main() => runApp(const AnimatedContainerExampleApp());*/

/*void main() => runApp(const AnimatedListSample());*/

/*void main() => runApp(const AnimatedPositionedExampleApp());*/

/*void main() => runApp(const DecoratedBoxTransitionExampleApp());*/

void main() => runApp(const FadeTransitionExampleApp());



class AnimatedAlignExampleApp extends StatelessWidget {
  const AnimatedAlignExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedAlign Sample')),
        body: const AnimatedAlignExample(),
      ),
    );
  }
}

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
