part of 'pizza_bloc.dart';

abstract class PizzaState extends Equatable {
  @override
  List<Object> get props => [];
}

class PizzaInitial extends PizzaState {}

class PizzaLoaded extends PizzaState {
  final List<Pizza> pizzaList;

  PizzaLoaded(this.pizzaList);

  @override
  List<Object> get props => [pizzaList];
}

