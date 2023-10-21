import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class CardNews extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  final double height, width;

  const CardNews({
    super.key,
    required this.image,
    required this.title,
    this.subtitle = "",
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
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
                    Colors.black.withOpacity(0.8),
                    AppColors.black.withOpacity(0.1),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          child: Column(
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: subtitle == ""
                    ? Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        )
                    : Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: AppColors.white,
                        ),
              ),
              const SizedBox(height: 5),
              subtitle == ""
                  ? const SizedBox.shrink()
                  : Text(
                      subtitle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.white,
                          ),
                    ),
            ],
          ),
        )
      ],
    );
  }
}
