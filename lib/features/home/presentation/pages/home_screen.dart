import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/features/auth/presentation/controller/profile/profile_bloc.dart';
import 'package:suranect/features/home/presentation/controller/home_bloc.dart';
import 'package:suranect/features/home/presentation/widgets/card_carousel.dart';
import 'package:suranect/features/home/presentation/widgets/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          authenticated: (userEntity) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeAppBar(userEntity: userEntity),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocConsumer<HomeBloc, HomeState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return state.when(
                                initial: () {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                                loaded: (carouselIndex, news) {
                                  return CarouselSlider(
                                    carouselController: carouselController,
                                    items: news
                                        .map((e) => CardCarousel(
                                              carouselController:
                                                  carouselController,
                                              image: e, news: news, dotsIndex: carouselIndex,
                                            ))
                                        .toList(),
                                    options: CarouselOptions(
                                      viewportFraction: 1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      onPageChanged: (val, _) {
                                        carouselController.jumpToPage(val);

                                        context.read<HomeBloc>().add(
                                              HomeEvent.changeCarousel(
                                                  carouselIndex: val),
                                            );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Fasilitas Kota Surabaya",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  AppRouter.router
                                      .push(PAGES.layananPublik.screenPath);
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  decoration: BoxDecoration(
                                      color: AppColors.blue_60,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      boxShadow: [
                                        AppShadow.sShadow,
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg/goverment-service_ic.svg",
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Layanan",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge!
                                                  .copyWith(
                                                    color: AppColors.white,
                                                  ),
                                            ),
                                            Text(
                                              "Layanan Kota Surabaya",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(
                                                    color: AppColors.white,
                                                  ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    AppRouter.router
                                        .push(PAGES.berita.screenPath);
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          AppShadow.sShadow,
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0, vertical: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/svg/news-service_ic.svg",
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Berita",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineLarge,
                                              ),
                                              Text(
                                                "Berita Kota Surabaya",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  AppRouter.router
                                      .push(PAGES.wisata.screenPath);
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      boxShadow: [
                                        AppShadow.sShadow,
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg/wisata-service_ic.svg",
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Wisata",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineLarge,
                                            ),
                                            Text(
                                              "Cari Wisata Kota Surabaya",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  decoration: BoxDecoration(
                                      color: AppColors.blue_20,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      boxShadow: [
                                        AppShadow.sShadow,
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg/more-service_ic.svg",
                                        ),
                                        Text(
                                          "Lihat Semua Fasilitas",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                color: AppColors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Rekomendasi Buat Kamu",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(height: 10),
                          ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  boxShadow: [
                                    AppShadow.sShadow,
                                  ],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/carousel_image1.png",
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Penutupan Ahmad Yani",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall,
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "Penutupan Jl. Ahmad Yani akan dilakukan pada tanggal 19 Juni 2023, yang dilaksanakan untuk",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                          const Spacer(),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: SvgPicture.asset(
                                              "assets/svg/arrow-circle-right_ic.svg",
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          unauthenticated: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
