
import 'package:untitled/bloc_project/repository/service/game_service.dart';

import 'models/game.dart';
import 'models/genre.dart';
import 'models/result.dart';

class GameRepository {
  const GameRepository({
    required this.service,
  });
  final GameService service;

  Future<Game> getGames() async => service.getGames();

  Future<List<Genre>> getGenres() async => service.getGenres();

  Future<List<Result>> getGamesByCategory(int genreId) async =>
      service.getGamesByCategory(genreId);
}
