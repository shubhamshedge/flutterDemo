import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => MyBloc(),
      child: MaterialApp(
        home: Router(routerDelegate: MyRouterDelegate()),
      ),
    ),
  );
}

@immutable
abstract class MyEvent {}

class EventA extends MyEvent {}

class EventB extends MyEvent {}

@immutable
abstract class MyState {}

class StateA extends MyState {}

class StateB extends MyState {}

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateA()) {
    on<EventA>((event, emit) => emit(StateA()));
    on<EventB>((event, emit) => emit(StateB()));
  }
}

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to PageB'),
          onPressed: () {
            context.read<MyBloc>().add(EventB());
          },
        ),
      ),
    );
  }
}

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page B'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to PageA'),
          onPressed: () {
            context.read<MyBloc>().add(EventA());
          },
        ),
      ),
    );
  }
}

class MyRouterDelegate extends RouterDelegate with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBloc, MyState>(builder: (context, state) {
      return Navigator(
        key: navigatorKey,
        pages: [
          const MaterialPage(child: PageA()),
          if (state is StateB) const MaterialPage(child: PageB()),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) return false;
          BlocProvider.of<MyBloc>(context).add(EventA());
          return true;
        },
      );
    });
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(configuration) => Future.value();
}