import 'package:flutter/material.dart';

import '../widgets/Week15_Widgets.dart';

class Week15InheritedModel extends StatefulWidget {
  Week15InheritedModel({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _Week15InheritedModelState createState() => _Week15InheritedModelState();
}

class _Week15InheritedModelState extends State<Week15InheritedModel> {
  late int firstTick, secondTick, thirdTick;

  @override
  void initState() {
    super.initState();
    firstTick = secondTick = thirdTick = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FrogColor(
              child: const MyWidget(),
              color: Colors.amber, key: widget.key!,
            ),
            NumberManagerWidget(
              key: widget.key!,
              child: AsInheritedModel(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget();

  Widget build(BuildContext context) {
    return const MyOtherWidget();
  }
}

class MyOtherWidget extends StatelessWidget {
  const MyOtherWidget();

  Widget build(BuildContext context) {
    final frogColor = FrogColor.of(context);
    return Container(
      width: 200,
      height: 100,
      child: Center(
        child: Text('color propertie is from Inherited Widget FrogColor'),
      ),
      color: frogColor?.color,
    );
  }
}

class FrogColor extends InheritedWidget {
  const FrogColor({
    required Key key,
    required this.color,
    required Widget child,
  })  : assert(color != null),
        assert(child != null),
        super(key: key, child: child);

  final Color color; //noticed it final here

  static FrogColor? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FrogColor>();
  }

  @override
  bool updateShouldNotify(FrogColor old) => color != old.color;
}

class AsInheritedModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NumberModel? model =
        NumberModel.of(context, aspect: NUMBER_TYPE.FIRST);
    return Text(
        "Values: ${model?.firstValue}, ${model?.secondValue}, ${model?.thirdValue}");
  }
}

class AsInheritedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NumberModel? model = NumberModel.of(context, aspect: NUMBER_TYPE.FIRST);
    return Text(
        "Values: ${model?.firstValue}, ${model?.secondValue}, ${model?.thirdValue}");
  }
}
