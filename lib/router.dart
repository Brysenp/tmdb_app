import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:net_flix/home_screen.dart';
import 'package:net_flix/movie/screens/movie_detail.screen.dart';
import 'package:net_flix/screens/test_screen.dart';

import 'movie/models/movie.dart';
import 'screens/base_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return BaseScreen(child: child,);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'movie_detail',
              builder: (BuildContext context, GoRouterState state) {
                return MovieDetailScreen(
                  selectedMovie: state.extra as Movie,
                  heroUUID: state.uri.queryParameters['heroId']!,);
              },
            )
          ],
        ),
        GoRoute(
          path: '/game',
          builder: (BuildContext context, GoRouterState state) {
            return const TestScreen(text: 'Game');
          },
        ),
        GoRoute(
          path: '/new_hot',
          builder: (BuildContext context, GoRouterState state) {
            return const TestScreen(text: 'New Hot');
          },
        ),
        GoRoute(
          path: '/download',
          builder: (BuildContext context, GoRouterState state) {
            return const TestScreen(text: 'Download');
          },
        )
      ],
    )
  ],
);
