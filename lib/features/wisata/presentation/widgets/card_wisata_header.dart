import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class CardWisataHeader extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => 180;

  @override
  double get minExtent => 180;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/taman_apsari_img.png",
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(
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
          Positioned(
            left: 20,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wisata kota Surabaya!",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: Text(
                      "Yuk cari informasi mengenai wisata di  kota Surabaya.",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
