import 'package:flutter/material.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/utils/scale_size.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/core/widgets/search_screen.dart';
import 'package:suranect/features/berita/presentation/widgets/berita_header.dart';
import 'package:suranect/features/berita/presentation/widgets/card_news.dart';
import 'package:suranect/features/berita/presentation/widgets/card_latest_news.dart';

class BeritaScreen extends StatefulWidget {
  const BeritaScreen({super.key});

  @override
  State<BeritaScreen> createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> chips = [
      const SizedBox(width: 10),
      FilterChip(
        label: Text(
          "Semua",
          textScaleFactor: ScaleSize.textScaleFactor(context),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        backgroundColor: AppColors.info_40,
        onSelected: (bool value) {},
      ),
      const SizedBox(width: 10),
      FilterChip(
        label: Text(
          "Terbaru",
          textScaleFactor: ScaleSize.textScaleFactor(context),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.neutral_60,
                fontWeight: FontWeight.bold,
              ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        onSelected: (bool value) {},
      ),
      const SizedBox(width: 10),
      FilterChip(
        label: Text(
          "Teknologi",
          textScaleFactor: ScaleSize.textScaleFactor(context),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.neutral_60,
                fontWeight: FontWeight.bold,
              ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        onSelected: (bool value) {},
      ),
      const SizedBox(width: 10),
      FilterChip(
        label: Text(
          "Sekolah",
          textScaleFactor: ScaleSize.textScaleFactor(context),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.neutral_60,
                fontWeight: FontWeight.bold,
              ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        onSelected: (bool value) {},
      ),
      const SizedBox(width: 10),
      FilterChip(
        label: Text(
          "Populer",
          textScaleFactor: ScaleSize.textScaleFactor(context),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.neutral_60,
                fontWeight: FontWeight.bold,
              ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        onSelected: (bool value) {},
      ),
    ];

    ScrollController scrollController = ScrollController();

    final screenHeight = MediaQuery.of(context).size.height;

    double beritaHeader = screenHeight * 0.3, cardHeader = screenHeight * 0.12;

    if (screenHeight <= 732) {
      cardHeader = screenHeight * 0.14;
    }

    if (screenHeight <= 640) {
      beritaHeader = screenHeight * 0.32;
      cardHeader = screenHeight * 0.16;
    }

    return Scaffold(
      appBar: BaseAppBar(
          title: PAGES.berita.screenTitle,
          searchDelegate: DataSearch(listWords: listWords)),
      body: BaseBodyPage(
        onRefresh: () async {},
        scrollController: scrollController,
        onLoadNextPage: () {},
        children: [
          SliverToBoxAdapter(
            child: BeritaHeader(
              chips: chips,
              cardHeader: CardNews(
                image: "assets/images/news_example.png",
                title:
                    "Wali Kota Surabaya perbaiki rumah terbakar dengan target 10 hari pada hari itu",
                subtitle:
                    "Wali Kota Surabaya Eri Cahyadi targetkan perbaikan rumah warga yang terbakar di Kelurahan Putat Jaya, Kecamatan Sawahan. Wali Kota Surabaya Eri Cahyadi targetkan perbaikan rumah warga yang terbakar di Kelurahan Putat Jaya, Kecamatan Sawahan",
                height: beritaHeader,
                width: MediaQuery.of(context).size.width,
              ),
              listNews: ListView.separated(
                itemBuilder: (context, index) => const CardLatestNews(
                  image: "assets/images/news_example.png",
                  title:
                      "#SobatAir, PDAM Surya embada menerima kunjungan studi dari mahasisa S2 Fakultas Kesehatan Masyarakat dan",
                  subtitle:
                      "Jembatan tol Juanda-Waru baru saja dimulai pagi ini, pada tanggal 23 July 2023 dan akan terdapat pengarahan lalu lintas...",
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: 5,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: index == 9 ? 18 : 0,
              ),
              child: const CardLatestNews(
                image: "assets/images/news_example.png",
                title:
                    "#SobatAir, PDAM Surya embada menerima kunjungan studi dari mahasisa S2 Fakultas Kesehatan Masyarakat dan",
                subtitle:
                    "Jembatan tol Juanda-Waru baru saja dimulai pagi ini, pada tanggal 23 July 2023 dan akan terdapat pengarahan lalu lintas...",
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
