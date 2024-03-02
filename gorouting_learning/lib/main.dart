import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouting_learning/error_screen.dart';
import 'package:gorouting_learning/page1.dart';
import 'package:gorouting_learning/page2.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[
        GoRoute(
          path: 'page2',
          builder: (BuildContext context, GoRouterState state) =>
              const SecondPage(),
        ),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const FirstPage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'GoRouter Routes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
