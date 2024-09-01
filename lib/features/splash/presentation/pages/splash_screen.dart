import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/features/auth/presentation/controller/profile/profile_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        Timer(const Duration(seconds: 1), () {
          AppRouter.router.go(PAGES.introduction.screenPath);
        });
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: SvgPicture.asset('assets/svg/suranect_logo.svg'),
          ),
        );
      },
    );
  }
}
