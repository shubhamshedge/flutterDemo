import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled/cubit/state_management/movie_repository.dart';

final locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => MovieRepository());
}