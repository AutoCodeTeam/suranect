import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/laporan/domain/entities/laporan.dart';

class LaporanDetailHeader extends SliverPersistentHeaderDelegate {
  final Laporan laporan;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(laporan.photo),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: (minExtent) * 0.05,
            left: (minExtent) * 0.05,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_left,
                        color: AppColors.white,
                        size: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: -10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 250;

  @override
  double get minExtent => 250;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != maxExtent ||
        oldDelegate.minExtent != minExtent;
  }

  const LaporanDetailHeader({
    required this.laporan,
  });
}
