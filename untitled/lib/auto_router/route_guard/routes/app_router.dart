import 'package:auto_route/auto_route.dart';
import '../../route_guard/routes/app_router.gr.dart';
import 'guard/auth_guard.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// Initial Route
        AutoRoute(page: HomeRoute.page, initial: true),

        /// Login Route
        AutoRoute(page: LoginRoute.page),

        /// Protected Route
        AutoRoute(page: ProfileRoute.page, guards: [AuthGuard()]),
        // want some extra line od code OR conditional code use AuthGuard

        /// Normal Route
        AutoRoute(page: AboutRoute.page),
      ];
}
