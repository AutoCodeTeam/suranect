import 'package:flutter/material.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/utils/scale_size.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
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
      Expanded(
        child: FilterChip(
          label: Text(
            "Semua",
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          backgroundColor: AppColors.info_40,
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Terbaru",
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.neutral_60,
                  fontWeight: FontWeight.bold,
                ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Teknologi",
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.neutral_60,
                  fontWeight: FontWeight.bold,
                ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Sekolah",
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.neutral_60,
                  fontWeight: FontWeight.bold,
                ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Populer",
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.neutral_60,
                  fontWeight: FontWeight.bold,
                ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onSelected: (bool value) {},
        ),
      ),
    ];
    ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: BaseAppBar(title: PAGES.berita.screenTitle),
      body: BaseBodyPage(
        onRefresh: () async {},
        scrollController: scrollController,
        onLoadNextPage: () {},
        children: [
          SliverPersistentHeader(
            delegate: BeritaHeader(
              chips: chips,
              cardHeader: CardNews(
                image: "assets/images/news_example.png",
                title:
                    "Wali Kota Surabaya perbaiki rumah terbakar dengan target 10 hari pada hari itu",
                subtitle:
                    "Wali Kota Surabaya Eri Cahyadi targetkan perbaikan rumah warga yang terbakar di Kelurahan Putat Jaya, Kecamatan Sawahan. Wali Kota Surabaya Eri Cahyadi targetkan perbaikan rumah warga yang terbakar di Kelurahan Putat Jaya, Kecamatan Sawahan",
                height: MediaQuery.of(context).size.height * 0.3,
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
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 15.0,left: 15.0, right: 15.0),
              child: CardLatestNews(
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
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
