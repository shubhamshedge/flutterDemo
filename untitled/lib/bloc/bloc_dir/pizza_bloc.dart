import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/pizza_model.dart';

part 'pizza_event.dart';

part 'pizza_state.dart';

class PizzaBloc extends Bloc<PizzaEvent, PizzaState> {
  PizzaBloc() : super(PizzaInitial()) {
    on<LoadPizzaCounter>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1));
      emit(PizzaLoaded(const <Pizza>[]));
    });
    on<AddPizza>((event, emit) {
      print("shubham state -> " + state.toString());
      if (state is PizzaLoaded) {
        final state = this.state as PizzaLoaded;
        print("shubham PizzaLoaded list add -> ${state.pizzaList}");
        print("shubham PizzaLoaded  -> ${event.toString()}");
        emit(PizzaLoaded(List.from(state.pizzaList)..add(event.pizza))); //already PizzaLoaded state madhe je list aahe ti access karayachi and then add karayach
      }
    });
    on<RemovePizza>((event, emit) {
      if (state is PizzaLoaded) {
        final state = this.state as PizzaLoaded;
        print("shubham PizzaLoaded list remove -> ${state.pizzaList}");
        emit(PizzaLoaded(List.from(state.pizzaList)..remove(event.pizza)));
      }
    });
  }
}
