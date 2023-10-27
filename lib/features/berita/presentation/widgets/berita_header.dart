import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/features/berita/presentation/widgets/card_news.dart';

class BeritaHeader extends StatelessWidget {
  // @override
  // double get maxExtent => 570;
  //
  // @override
  // double get minExtent => 570;
  //
  // @override
  // bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
  //     oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;

  final List<Widget> chips;
  final Widget cardHeader;
  final Widget listNews;

  const BeritaHeader({
    super.key,
    required this.chips,
    required this.cardHeader,
    required this.listNews,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    double heightRowChips = screenHeight * 0.06;

    if (screenHeight <= 732) {
      heightRowChips = screenHeight * 0.08;
    }

    if (screenHeight <= 640) {
      heightRowChips = screenHeight * 0.08;
    }

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heightRowChips,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.neutral_30)),
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: chips,
            ),
          ),
          const SizedBox(height: 10),
          cardHeader,
          const Divider(
            thickness: 2,
            color: AppColors.neutral_30,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) => CardNews(
                image: "assets/images/news_example.png",
                title: "Surabaya, Tanjungan membuka festival tahunan",
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Berita Terbaru",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
