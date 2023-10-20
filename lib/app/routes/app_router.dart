import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:suranect/app/di/injector.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/app/routes/screens/not_found_page.dart';
import 'package:suranect/features/activity/presentation/pages/activity_screen.dart';
import 'package:suranect/features/auth/presentation/controller/login/login_cubit.dart';
import 'package:suranect/features/auth/presentation/controller/register/register_cubit.dart';
import 'package:suranect/features/auth/presentation/controller/verify_otp/verify_otp_cubit.dart';
import 'package:suranect/features/auth/presentation/pages/verify_otp_screen.dart';
import 'package:suranect/features/berita/presentation/pages/berita_screen.dart';
import 'package:suranect/features/home/presentation/pages/home_screen.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';
import 'package:suranect/features/introduction/presentation/pages/introduction_screen.dart';
import 'package:suranect/features/auth/presentation/pages/login_screen.dart';
import 'package:suranect/features/auth/presentation/pages/register_screen.dart';
import 'package:suranect/features/layanan_publik/presentation/pages/layanan_publik_screen.dart';
import 'package:suranect/features/main_tab/presentation/controller/main_tab_bloc.dart';
import 'package:suranect/features/main_tab/presentation/pages/main_tab.dart';
import 'package:suranect/features/notification/presentation/pages/notification_screen.dart';
import 'package:suranect/features/profile/presentation/pages/profile_screen.dart';
import 'package:suranect/features/splash/presentation/pages/splash_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

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
          create: (context) => injector<IntroductionBloc>()
            ..add(const IntroductionEvent.isIntro()),
          child: const IntroductionsScreen(),
        ),
      ),
      GoRoute(
        path: PAGES.register.screenPath,
        name: PAGES.register.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) => injector<RegisterCubit>(),
          child: const RegisterScreen(),
        ),
      ),
      GoRoute(
        path: PAGES.login.screenPath,
        name: PAGES.login.screenName,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => injector<LoginCubit>(),
            ),
          ],
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: PAGES.verifyOTP.screenPath,
        name: PAGES.verifyOTP.screenName,
        builder: (context, state) => BlocProvider(
            create: (context) => injector<VerifyOtpCubit>(),
            child: const VerifyOtpScreen()),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return NoTransitionPage(
              child: BlocProvider(
            create: (context) => injector<MainTabBloc>(),
            child: MainTab(
              path: state.path ?? PAGES.home.screenPath,
              child: child,
            ),
          ));
        },
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: PAGES.home.screenPath,
            name: PAGES.home.screenName,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomeScreen()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: PAGES.activity.screenPath,
            name: PAGES.activity.screenName,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ActivityScreen()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: PAGES.notification.screenPath,
            name: PAGES.notification.screenName,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: NotificationScreen()),
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: PAGES.profile.screenPath,
            name: PAGES.profile.screenName,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfileScreen()),
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.layananPublik.screenPath,
        name: PAGES.layananPublik.screenName,
        builder: (context, state) => const LayananPublikScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.berita.screenPath,
        name: PAGES.berita.screenName,
        builder: (context, state) => const BeritaScreen(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRouter get router => _router;
}
