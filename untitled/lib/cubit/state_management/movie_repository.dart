import 'package:dio/dio.dart';

import '../di/service_locator.dart';
import 'movie_model.dart';

class MovieRepository {

  Future<List<MovieModel>> getMovies() async {
    try {
      const url =
          'https://api.themoviedb.org/3/trending/movie/week?api_key=060e7c76aff06a20ca4a875981216f3f';

      final response = await locator.get<Dio>().get(url);

      final movies = List<MovieModel>.of(
        response.data['results'].map<MovieModel>(
          (json) => MovieModel(
            title: json['title'],
            urlImage: 'https://image.tmdb.org/t/p/w185${json['poster_path']}',
          ),
        ),
      );

      return movies;
    } catch (e) {
      rethrow;
    }
  }
}
