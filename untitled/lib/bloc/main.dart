import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/bloc_dir/pizza_bloc.dart';
import 'package:untitled/bloc/model/pizza_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => PizzaBloc()..add(LoadPizzaCounter()))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        ));
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.home_max),
              onPressed: () {
                context.read<PizzaBloc>().add(AddPizza(Pizza.pizzas[0]));
              }),
          FloatingActionButton(
              child: const Icon(Icons.access_alarm),
              onPressed: () {
                context.read<PizzaBloc>().add(RemovePizza(Pizza.pizzas[0]));
              })
        ],
      ),
      body: BlocBuilder<PizzaBloc, PizzaState>(
        builder: (context, state) {
          if (state is PizzaInitial) {
            return const CircularProgressIndicator(
              color: Colors.black,
            );
          }
          if (state is PizzaLoaded) {
            return Column(
              children: [
                Text(
                  '${state.pizzaList.length}',
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      for (int index = 0;
                          index < state.pizzaList.length;
                          index++)
                        Positioned(
                          left: Random().nextInt(250).toDouble(),
                          right: Random().nextInt(250).toDouble(),
                          child: SizedBox(
                            height: 500,
                            width: 500,
                            child: state.pizzaList[index].image,
                          ),
                        ),
                    ],
                  ),
                )
              ],
            );
          } else {
            return Text("Somethig went wrong");
          }
        },
      ),
    );
  }
}
