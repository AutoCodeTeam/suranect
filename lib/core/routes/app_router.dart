import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:suranect/core/di/injector.dart';
import 'package:suranect/core/routes/route_utils.dart';
import 'package:suranect/core/routes/screens/not_found_page.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';
import 'package:suranect/features/introduction/presentation/pages/introduction_screen.dart';
import 'package:suranect/features/splash/presentation/pages/splash_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: PAGES.splash.screenPath,
        name: PAGES.splash.screenName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: PAGES.introduction.screenPath,
        name: PAGES.introduction.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) => injector<IntroductionBloc>()..add(const IntroductionEvent.changedPage(0)),
          child: const IntroductionsScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRouter get router => _router;
}
