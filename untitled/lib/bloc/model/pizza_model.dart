import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Pizza extends Equatable {
  final int id;
  final String name;
  final Image image;

  const Pizza(this.id, this.name, this.image);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  static List<Pizza> pizzas = [
    Pizza(0, "pizza", Image.asset("images/download.jpeg")),
    Pizza(1, "pizza", Image.asset("images/download.jpeg")),
    Pizza(2, "pizza", Image.asset("images/download.jpeg")),
    Pizza(3, "pizza", Image.asset("images/download.jpeg")),
    Pizza(4, "pizza", Image.asset("images/download.jpeg"))
  ];
}
