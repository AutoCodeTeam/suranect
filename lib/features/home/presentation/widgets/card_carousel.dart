import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class CardCarousel extends StatelessWidget {
  final int indexCarousel;
  final String backgroundImage;
  final String title;
  final String subtitle;

  const CardCarousel({
    super.key,
    required this.indexCarousel,
    required this.backgroundImage,
    this.title = "",
    this.subtitle = "",
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgroundImage),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColors.white,
                    ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.white,
                    ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.008,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, indexDot) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    width: indexCarousel == indexDot
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.008,
                    decoration: BoxDecoration(
                      color: indexCarousel == indexDot
                          ? AppColors.white
                          : AppColors.white.withOpacity(0.5),
                      shape: indexCarousel == indexDot
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                      borderRadius: indexCarousel == indexDot
                          ? const BorderRadius.all(
                              Radius.circular(20),
                            )
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
