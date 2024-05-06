import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(TabBarDemoApp());
}

class TabBarDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarDemo(key: Key("text2"),),
    );
  }
}

class ExampleCubit extends Cubit<String> {
  ExampleCubit() : super("Initial cubit data");

  load() async {
    emit("Loading cubit data");
    await Future.delayed(const Duration(seconds: 10));
    emit("Loaded cubit data");
  }
}

class TabBarDemo extends StatefulWidget  {
  const TabBarDemo({required Key key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ExampleCubit()..load(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              CarPage(),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class CarPage extends StatefulWidget {
  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  final _controller = TextEditingController(text: "Initial widget data");

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExampleCubit, String>(
      listener: (context, state) {
        _controller.text = state;
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: TextFormField(
            controller: _controller,
          ),
        ),
      ),
    );
  }
}