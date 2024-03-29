import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repository/game_repository.dart';
import '../../../repository/service/game_service.dart';
import '../widgets/all_games_widget/bloc/all_games_bloc.dart';
import '../widgets/category_widget/bloc/category_bloc.dart';
import '../widgets/games_by_category_widget/bloc/games_by_category_bloc.dart';
import 'home_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: RepositoryProvider(
        create: (context) => GameRepository(service: GameService()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AllGamesBloc>(
              create: (context) => AllGamesBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(GetGames()),
            ),
            BlocProvider<CategoryBloc>(
              create: (context) => CategoryBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(GetCategories()),
            ),
            BlocProvider<GamesByCategoryBloc>(
              create: (context) => GamesByCategoryBloc(
                gameRepository: context.read<GameRepository>(),
              ),
            ),
          ],
          child: HomeLayout(),
        ),
      ),
    );
  }
}
