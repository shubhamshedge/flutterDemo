import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/service_locator.dart';
import 'movie_page.dart';
import 'movie_repository.dart';
import 'movies_cubit.dart';


void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider<MoviesCubit>(
        create: (context) => MoviesCubit(), // create property create one cubit or bloc for you,
        child: MoviesPage(), //cubit create and pass to this widget
      ),
    );
  }
}