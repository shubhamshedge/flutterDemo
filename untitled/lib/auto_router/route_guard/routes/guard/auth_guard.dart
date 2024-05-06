import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool loggedIn = pref.getBool('logged_in') ?? false;
    if (loggedIn) {
      resolver.next(true);  // resolver.route = profileScreen
    } else {
      router.push(LoginRoute(onResult: (result) async {
        // if true then go to desired route
        if (result == true) {
          // goto specified route
          resolver.next(true);
          // remove login screen from route
          router.removeLast();
        }
        // else stay at login route
      }));
    }
  }
}
