// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:untitled/auto_router/route_guard/screen/home_screen.dart'
    as _i2;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/main_screen.dart'
    as _i4;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/setting_detail_screen.dart'
    as _i9;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/setting_internal_detail_screen.dart'
    as _i10;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/setting_navigation_screen.dart'
    as _i11;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/setting_screen.dart'
    as _i12;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/song_comment_detail_screen.dart'
    as _i13;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/song_comment_list_screen.dart'
    as _i14;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/song_detail_screen.dart'
    as _i15;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/song_list_screen.dart'
    as _i16;
import 'package:untitled/auto_router/multiple_nested_navigation/screen/song_navigation_screen.dart'
    as _i17;
import 'package:untitled/auto_router/route_guard/screen/about_screen.dart'
    as _i1;
import 'package:untitled/auto_router/route_guard/screen/login_screen.dart'
    as _i3;
import 'package:untitled/auto_router/route_guard/screen/profile_screen.dart'
    as _i5;
import 'package:untitled/auto_router/route_guard_navigation/screen/screen_a.dart'
    as _i6;
import 'package:untitled/auto_router/route_guard_navigation/screen/screen_b.dart'
    as _i7;
import 'package:untitled/auto_router/route_guard_navigation/screen/screen_c.dart'
    as _i8;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginScreen(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
    RouteA.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ScreenA(),
      );
    },
    RouteB.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ScreenB(),
      );
    },
    RouteC.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ScreenC(),
      );
    },
    SettingDetailRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingDetailScreen(),
      );
    },
    SettingInternalDetailRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SettingInternalDetailScreen(),
      );
    },
    SettingNavigationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SettingNavigationScreen(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SettingScreen(),
      );
    },
    SongCommentDetailRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SongCommentDetailScreen(),
      );
    },
    SongCommentListRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SongCommentListScreen(),
      );
    },
    SongDetailRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SongDetailScreen(),
      );
    },
    SongListRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SongListScreen(),
      );
    },
    SongNavigationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SongNavigationScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i18.PageRouteInfo<void> {
  const AboutRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i18.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i19.Key? key,
    required dynamic Function(bool?) onResult,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i18.PageInfo<LoginRouteArgs> page =
      _i18.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i19.Key? key;

  final dynamic Function(bool?) onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i4.MainScreen]
class MainRoute extends _i18.PageRouteInfo<void> {
  const MainRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ScreenA]
class RouteA extends _i18.PageRouteInfo<void> {
  const RouteA({List<_i18.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ScreenB]
class RouteB extends _i18.PageRouteInfo<void> {
  const RouteB({List<_i18.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ScreenC]
class RouteC extends _i18.PageRouteInfo<void> {
  const RouteC({List<_i18.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SettingDetailScreen]
class SettingDetailRoute extends _i18.PageRouteInfo<void> {
  const SettingDetailRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SettingDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingDetailRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SettingInternalDetailScreen]
class SettingInternalDetailRoute extends _i18.PageRouteInfo<void> {
  const SettingInternalDetailRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SettingInternalDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingInternalDetailRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SettingNavigationScreen]
class SettingNavigationRoute extends _i18.PageRouteInfo<void> {
  const SettingNavigationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SettingNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingNavigationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SettingScreen]
class SettingRoute extends _i18.PageRouteInfo<void> {
  const SettingRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SongCommentDetailScreen]
class SongCommentDetailRoute extends _i18.PageRouteInfo<void> {
  const SongCommentDetailRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SongCommentDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongCommentDetailRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SongCommentListScreen]
class SongCommentListRoute extends _i18.PageRouteInfo<void> {
  const SongCommentListRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SongCommentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongCommentListRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SongDetailScreen]
class SongDetailRoute extends _i18.PageRouteInfo<void> {
  const SongDetailRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SongDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongDetailRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SongListScreen]
class SongListRoute extends _i18.PageRouteInfo<void> {
  const SongListRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SongListRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongListRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SongNavigationScreen]
class SongNavigationRoute extends _i18.PageRouteInfo<void> {
  const SongNavigationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SongNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SongNavigationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}
