import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';
import 'package:suranect/features/introduction/presentation/widgets/page_intro.dart';

class IntroductionsScreen extends StatefulWidget {
  const IntroductionsScreen({super.key});

  @override
  State<IntroductionsScreen> createState() => _IntroductionsScreenState();
}

class _IntroductionsScreenState extends State<IntroductionsScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> pageViewList = [
      PageIntro(
        image: "assets/images/soekarno_img.png",
        header: RichText(
          text: TextSpan(
            text: "Kami Perkenalkan aplikasi, ",
            style: Theme.of(context).textTheme.displayLarge,
            children: [
              TextSpan(
                text: "Suranect.",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: AppColors.blue_60),
              ),
            ],
          ),
        ),
        bodyText:
            "Selamat datang di Suranet - Surabaya Smart City, untuk meningkatkan kualitas hidup Anda dalam kota tercanggih di Indonesia.",
        pageController: _pageController,
      ),
      PageIntro(
        image: "assets/images/lapangan_thor_img.png",
        header: RichText(
          text: TextSpan(
            text: "Info Mengenai ",
            style: Theme.of(context).textTheme.displayLarge,
            children: [
              TextSpan(
                text: "Kota ",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: AppColors.blue_60),
              ),
              TextSpan(
                  text: "Surabaya.",
                  style: Theme.of(context).textTheme.displayLarge),
            ],
          ),
        ),
        bodyText:
            "Jelajahi kota anda dengan aplikasi terbaik kami yang memadukan teknologi modern dan layanan lengkap untuk memandu turis, wisatawan, dan warga kota.",
        pageController: _pageController,
        showBack: true,
      ),
      PageIntro(
        image: "assets/images/patung_surabaya_img.png",
        header: RichText(
          text: TextSpan(
            text: "Membangun ",
            style: Theme.of(context).textTheme.displayLarge,
            children: [
              TextSpan(
                text: "Kota Cerdas ",
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: AppColors.blue_60),
              ),
              TextSpan(
                  text: "bersama.",
                  style: Theme.of(context).textTheme.displayLarge),
            ],
          ),
        ),
        bodyText:
            "Aplikasi Sunect membawakan sebuah teknologi modern untuk membuat kota anda selangkah lebih dekat menuju Kota yang lebih cerdas.",
        pageController: _pageController,
        showBack: true,
      ),
    ];

    return Scaffold(
      body: BlocConsumer<IntroductionBloc, IntroductionState>(
        listener: (context, state) {
          state.when(
            changePage: (pageIndex) {
              _pageController.jumpToPage(pageIndex);
            },
            success: (status) {
              return AppRouter.router.go(PAGES.login.screenPath);
            },
          );
        },
        builder: (context, state) {
          return state.when(
            changePage: (pageIndex) {
              return PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  context
                      .read<IntroductionBloc>()
                      .add(IntroductionEvent.changedPage(value));
                },
                children: pageViewList,
              );
            },
            success: (status) => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
