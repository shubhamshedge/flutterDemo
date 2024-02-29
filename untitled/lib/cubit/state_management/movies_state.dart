//1 — Representing the movies states:
// Write an abstract class called MoviesState that extends Equatable.

import 'package:equatable/equatable.dart';

import 'movie_model.dart';

abstract class MoviesState extends Equatable {}

// Equatable is a package to
// compare Objects by values instead reference but you can override hashcode and == to make a value equity too.

class InitialState extends MoviesState {
  @override
  List<Object> get props => [];
}
class LoadingState extends MoviesState {
  @override
  List<Object> get props => [];
}
class LoadedState extends MoviesState {
  LoadedState(this.movies);

  final List<MovieModel> movies;

  @override
  List<Object> get props => [movies];
}
class ErrorState extends MoviesState {
  @override
  List<Object> get props => [];
}