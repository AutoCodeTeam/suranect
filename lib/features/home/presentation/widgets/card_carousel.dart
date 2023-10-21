import 'package:carousel_slider/carousel_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/home/presentation/controller/home_bloc.dart';

class CardCarousel extends StatelessWidget {
  final String image;
  final List news;
  final int dotsIndex;

  const CardCarousel({
    super.key,
    required this.carouselController,
    required this.image,
    required this.news,
    required this.dotsIndex,
  });

  final CarouselController carouselController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.5),
                    AppColors.black.withOpacity(0.1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Positioned.fill(
          left: 20,
          top: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mendukung kota Surabaya!",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColors.white,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                "Yuk cari informasi mengenai kota \nSurabaya dan wisatanya.",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.white,
                    ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 20,
          child: DotsIndicator(
            dotsCount: news.length,
            position: dotsIndex,
            onTap: (position) {
              carouselController.jumpToPage(position);

              context
                  .read<HomeBloc>()
                  .add(HomeEvent.changeCarousel(carouselIndex: position));
            },
            decorator: DotsDecorator(
              size: const Size.square(7.0),
              activeSize: const Size(25.0, 7.0),
              color: AppColors.white.withOpacity(0.5),
              activeColor: AppColors.white,
              activeShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
