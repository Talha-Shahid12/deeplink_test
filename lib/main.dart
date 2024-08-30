import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'package:go_router/go_router.dart';

import 'help.dart';

void main() {
  runApp(MyApp());
}

GoRouter _appRoute = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: "/",
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: "/profile",
    builder: (BuildContext context, GoRouterState state) {
      return const Profile();
    },
  ),
  GoRoute(
    path: "/help",
    builder: (BuildContext context, GoRouterState state) {
      return const Help();
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRoute,
    );
  }
}
