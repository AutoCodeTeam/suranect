import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:suranect/app/di/injector.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/app/routes/screens/not_found_page.dart';
import 'package:suranect/features/about/presentation/pages/about_screen.dart';
import 'package:suranect/features/add_laporan/presentation/controller/camera_bloc.dart';
import 'package:suranect/features/activity/presentation/pages/activity_screen.dart';
import 'package:suranect/features/add_laporan/presentation/controller/lapor_cubit.dart';
import 'package:suranect/features/add_laporan/presentation/pages/review_laporan_screen.dart';
import 'package:suranect/features/add_laporan/presentation/pages/review_photo_screen.dart';
import 'package:suranect/features/add_laporan/presentation/pages/take_photo_screen.dart';
import 'package:suranect/features/auth/presentation/controller/login/login_cubit.dart';
import 'package:suranect/features/auth/presentation/controller/register/register_cubit.dart';
import 'package:suranect/features/auth/presentation/controller/verify_otp/verify_otp_cubit.dart';
import 'package:suranect/features/auth/presentation/pages/verify_otp_screen.dart';
import 'package:suranect/features/berita/presentation/controller/berita_bloc.dart';
import 'package:suranect/features/berita/presentation/pages/berita_screen.dart';
import 'package:suranect/features/berita/presentation/pages/berita_detail_screen.dart';
import 'package:suranect/features/event/presentation/controller/event_bloc.dart';
import 'package:suranect/features/event/presentation/pages/event_detail_screen.dart';
import 'package:suranect/features/event/presentation/pages/event_screen.dart';
import 'package:suranect/features/facilities/presentation/pages/facilities_screen.dart';
import 'package:suranect/features/home/presentation/controller/home_bloc.dart';
import 'package:suranect/features/home/presentation/pages/home_screen.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';
import 'package:suranect/features/introduction/presentation/pages/introduction_screen.dart';
import 'package:suranect/features/auth/presentation/pages/login_screen.dart';
import 'package:suranect/features/auth/presentation/pages/register_screen.dart';
import 'package:suranect/features/laporan/presentation/pages/laporan_screen.dart';
import 'package:suranect/features/layanan_publik/presentation/pages/layanan_publik_screen.dart';
import 'package:suranect/features/main_tab/presentation/controller/main_tab_bloc.dart';
import 'package:suranect/features/main_tab/presentation/pages/main_tab.dart';
import 'package:suranect/features/notification/presentation/pages/notification_screen.dart';
import 'package:suranect/features/pajak_kendaraan/presentation/controller/pajak_kendaraan_bloc.dart';
import 'package:suranect/features/pajak_kendaraan/presentation/pages/pajak_kendaraan_screen.dart';
import 'package:suranect/features/pajak_kendaraan/presentation/pages/plat_screen.dart';
import 'package:suranect/features/pbb/presentation/controller/pajak_pbb_bloc.dart';
import 'package:suranect/features/pbb/presentation/pages/nop_screen.dart';
import 'package:suranect/features/pbb/presentation/pages/pajak_pbb_screen.dart';
import 'package:suranect/features/peta/presentation/controller/current_location_bloc.dart';
import 'package:suranect/features/peta/presentation/controller/peta_bloc.dart';
import 'package:suranect/features/peta/presentation/pages/peta_detail_screen.dart';
import 'package:suranect/features/peta/presentation/pages/peta_screen.dart';
import 'package:suranect/features/profile/presentation/pages/profile_screen.dart';
import 'package:suranect/features/splash/presentation/pages/splash_screen.dart';
import 'package:suranect/features/umkm/presentation/pages/umkm_screen.dart';
import 'package:suranect/features/wisata/presentation/controller/wisata_bloc.dart';
import 'package:suranect/features/wisata/presentation/pages/wisata_detail_screen.dart';
import 'package:suranect/features/wisata/presentation/pages/wisata_screen.dart';

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
            pageBuilder: (context, state) => NoTransitionPage(
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) =>
                        injector<HomeBloc>()..add(const HomeEvent.started()),
                  ),
                  BlocProvider(
                    create: (context) => injector<BeritaBloc>()
                      ..add(const BeritaEvent.started()),
                  )
                ],
                child: const HomeScreen(),
              ),
            ),
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
        builder: (context, state) => BlocProvider(
          create: (context) =>
              injector<BeritaBloc>()..add(const BeritaEvent.started()),
          child: const BeritaScreen(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.wisata.screenPath,
        name: PAGES.wisata.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              injector<WisataBloc>()..add(const WisataEvent.started()),
          child: const WisataScreen(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.facilities.screenPath,
        name: PAGES.facilities.screenName,
        builder: (context, state) => const FacilitiesScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.umkm.screenPath,
        name: PAGES.umkm.screenName,
        builder: (context, state) => const UmkmScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.event.screenPath,
        name: PAGES.event.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              injector<EventBloc>()..add(const EventEvent.started()),
          child: const EventScreen(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.takePhoto.screenPath,
        name: PAGES.takePhoto.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              injector<CameraBloc>()..add(const CameraEvent.started()),
          child: const TakePhotoScreen(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.reviewPhoto.screenPath,
        name: PAGES.reviewPhoto.screenName,
        builder: (context, state) => ReviewPhotoScreen(
          image: state.extra as XFile,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.reviewLaporan.screenPath,
        name: PAGES.reviewLaporan.screenName,
        builder: (context, state) => BlocProvider(
          create: (context) => injector<LaporCubit>(),
          child: ReviewLaporanScreen(
            image: state.extra as XFile,
          ),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.laporan.screenPath,
        name: PAGES.laporan.screenName,
        builder: (context, state) => const LaporanScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.peta.screenPath,
        name: PAGES.peta.screenName,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => injector<CurrentLocationBloc>()
                ..add(const CurrentLocationEvent.started()),
            ),
            BlocProvider(
              create: (context) =>
                  injector<PetaBloc>()..add(const PetaEvent.started()),
            ),
          ],
          child: const PetaScreen(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.plat.screenPath,
        name: PAGES.plat.screenName,
        builder: (context, state) => const PlatScreen(),
      ),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: PAGES.pajakKendaraan.screenPath,
          name: PAGES.pajakKendaraan.screenName,
          builder: (context, state) {
            Map<String, dynamic> args = state.extra as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => injector<PajakKendaraanBloc>(),
              child: PajakKendaraanScreen(nopol: args['plat']),
            );
          }),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.nop.screenPath,
        name: PAGES.nop.screenName,
        builder: (context, state) => const NopScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.pbb.screenPath,
        name: PAGES.pbb.screenName,
        builder: (context, state) {
          Map<String, dynamic> args = state.extra as Map<String, dynamic>;

          return BlocProvider(
            create: (context) => injector<PajakPbbBloc>(),
            child: PajakPbbScreen(nop: args['nop']),
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.beritaDetail.screenPath,
        name: PAGES.beritaDetail.screenName,
        builder: (context, state) {
          Map<String, dynamic> args = state.extra as Map<String, dynamic>;
          return BeritaDetailScreen(
            berita: args['berita'],
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.wisataDetail.screenPath,
        name: PAGES.wisataDetail.screenName,
        builder: (context, state) {
          Map<String, dynamic> args = state.extra as Map<String, dynamic>;
          return WisataDetailScreen(
            wisata: args['wisata'],
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.eventDetail.screenPath,
        name: PAGES.eventDetail.screenName,
        builder: (context, state) {
          Map<String, dynamic> args = state.extra as Map<String, dynamic>;
          return EventDetailScreen(
            event: args["event"],
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.petaDetail.screenPath,
        name: PAGES.petaDetail.screenName,
        builder: (context, state) {
          Map<String, dynamic> args = state.extra as Map<String, dynamic>;
          return PetaDetailScreen(peta: args['peta']);
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: PAGES.about.screenPath,
        name: PAGES.about.screenName,
        builder: (context, state) => const AboutScreen(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRouter get router => _router;
}
