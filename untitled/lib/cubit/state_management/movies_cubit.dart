import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled/cubit/di/service_locator.dart';

import 'movie_repository.dart';
import 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit() : super(InitialState()) {
    getTrendingMovies();
  }

  // final MovieRepository repository;

  void getTrendingMovies() async {
    try {
      emit(LoadingState());
      final movies = await locator.get<MovieRepository>().getMovies();
      emit(LoadedState(movies));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
