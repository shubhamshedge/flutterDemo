import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/Dataclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Dataclass(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          height: 100,
          width: 100,
          color: Colors.amber,
          child: Column(
            children: [
              GestureDetector(
                child: const Icon(Icons.add),
                onTap: () {
                  // context.read<Dataclass>().incrementX(); //we can also use this to call increament()
                  Provider.of<Dataclass>(context, listen: false)
                      .incrementX();
                },
              ),
              Consumer<Dataclass>(
                builder:
                    (BuildContext context, Dataclass value, Widget? child) {
                  //can consume data from ChangeNotifier
                  return Text(value.x.toString());
                },
              )
            ],
          ),
        ));
  }
}
