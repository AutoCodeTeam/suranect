import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/sura_button.dart';
import 'package:suranect/features/introduction/presentation/controller/introduction_bloc.dart';

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
      Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/soekarno_img.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              right: 15,
              left: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: BlocBuilder<IntroductionBloc, IntroductionState>(
                    builder: (context, state) {
                      return ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: index == state.pageIndex ? AppColors.white : AppColors.white.withOpacity(0.8),
                                shape: index == state.pageIndex ? BoxShape.rectangle : BoxShape.circle,
                                borderRadius: index == state.pageIndex ? const BorderRadius.all(Radius.circular(100)) : null
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 25.0,
                    ),
                    child: Column(
                      children: [
                        RichText(
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
                        const SizedBox(height: 10),
                        Text(
                          "Selamat datang di Suranet - Surabaya Smart City, untuk meningkatkan kualitas hidup Anda dalam kota tercanggih di Indonesia.",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            BlocBuilder<IntroductionBloc, IntroductionState>(
                              builder: (context, state) {
                                return Expanded(
                                  child: SuraButton(
                                    onPressed: () {
                                      context.read<IntroductionBloc>().add(
                                          IntroductionEvent.changedPage(
                                              state.pageIndex + 1));

                                      _pageController.jumpToPage(state.pageIndex + 1);
                                    },
                                    buttonColor: AppColors.neutral_100,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: AppColors.white,
                                        ),
                                    text: "Selanjutnya",
                                  ),
                                );
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/lapangan_thor_img.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              right: 15,
              left: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: BlocBuilder<IntroductionBloc, IntroductionState>(
                    builder: (context, state) {
                      return ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: index == state.pageIndex ? AppColors.white : AppColors.white.withOpacity(0.8),
                                  shape: index == state.pageIndex ? BoxShape.rectangle : BoxShape.circle,
                                  borderRadius: index == state.pageIndex ? const BorderRadius.all(Radius.circular(100)) : null
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 25.0,
                    ),
                    child: Column(
                      children: [
                        RichText(
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
                        const SizedBox(height: 10),
                        Text(
                          "Jelajahi kota anda dengan aplikasi terbaik kami yang memadukan teknologi modern dan layanan lengkap untuk memandu turis, wisatawan, dan warga kota.",
                          style:
                              Theme.of(context).textTheme.headlineMedium!.copyWith(
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        const Spacer(),
                        BlocBuilder<IntroductionBloc, IntroductionState>(
                          builder: (context, state) {
                            return Row(
                              children: [
                                Expanded(
                                  child: SuraButton(
                                    onPressed: () {
                                      context.read<IntroductionBloc>().add(
                                          IntroductionEvent.changedPage(
                                              state.pageIndex - 1));

                                      _pageController.jumpToPage(state.pageIndex - 1);
                                    },
                                    text: "Kembali",
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: SuraButton(
                                    onPressed: () {
                                      context.read<IntroductionBloc>().add(
                                          IntroductionEvent.changedPage(
                                              state.pageIndex + 1));

                                      _pageController.jumpToPage(state.pageIndex + 1);
                                    },
                                    buttonColor: AppColors.neutral_100,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: AppColors.white,
                                        ),
                                    text: "Selanjutnya",
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/images/patung_surabaya_img.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              right: 15,
              left: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: BlocBuilder<IntroductionBloc, IntroductionState>(
                    builder: (context, state) {
                      return ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: index == state.pageIndex ? AppColors.white : AppColors.white.withOpacity(0.8),
                                  shape: index == state.pageIndex ? BoxShape.rectangle : BoxShape.circle,
                                  borderRadius: index == state.pageIndex ? const BorderRadius.all(Radius.circular(100)) : null
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 25.0,
                    ),
                    child: Column(
                      children: [
                        RichText(
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
                        const SizedBox(height: 10),
                        Text(
                          "Aplikasi Sunect membawakan sebuah teknologi modern untuk membuat kota anda selangkah lebih dekat menuju Kota yang lebih cerdas.",
                          style:
                              Theme.of(context).textTheme.headlineMedium!.copyWith(
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        const Spacer(),
                        BlocBuilder<IntroductionBloc, IntroductionState>(
                          builder: (context, state) {
                            return Row(
                              children: [
                                Expanded(
                                  child: SuraButton(
                                    onPressed: () {
                                      context.read<IntroductionBloc>().add(
                                          IntroductionEvent.changedPage(
                                              state.pageIndex - 1));

                                      _pageController.jumpToPage(state.pageIndex - 1);

                                    },
                                    text: "Kembali",
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: SuraButton(
                                    onPressed: () {},
                                    buttonColor: AppColors.neutral_100,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: AppColors.white,
                                        ),
                                    text: "Selanjutnya",
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ];

    return Scaffold(
      body: BlocBuilder<IntroductionBloc, IntroductionState>(
        buildWhen: (previous, current) =>
            previous.pageIndex != current.pageIndex,
        builder: (context, state) {
          return state.when(
            changePage: (pageIndex) => PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: pageViewList,
            ),
          );
        },
      ),
    );
  }
}
