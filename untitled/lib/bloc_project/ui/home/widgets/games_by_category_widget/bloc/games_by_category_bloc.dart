
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repository/game_repository.dart';
import '../../../../../repository/models/result.dart';

part 'games_by_category_event.dart';
part 'games_by_category_state.dart';

class GamesByCategoryBloc
    extends Bloc<GamesByCategoryEvent, GamesByCategoryState> {
  GamesByCategoryBloc({
    required this.gameRepository,
  }) : super(const GamesByCategoryState()) {
    on<GetGamesByCategory>(_mapGetGamesByCategoryEventToState);
  }
  final GameRepository gameRepository;

  void _mapGetGamesByCategoryEventToState(
      GetGamesByCategory event, Emitter<GamesByCategoryState> emit) async {
    try {
      emit(state.copyWith(status: GamesByCategoryStatus.loading));

      print("shubham -> event bloc event.categoryName = ${event.categoryName}");
      print("shubham -> event bloc event.idSelected = ${event.idSelected}");

      final gamesByCategory =
          await gameRepository.getGamesByCategory(event.idSelected);
      emit(
        state.copyWith(
          status: GamesByCategoryStatus.success,
          games: gamesByCategory,
          categoryName: event.categoryName,
        ),
      );
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(status: GamesByCategoryStatus.error));
    }
  }
}
