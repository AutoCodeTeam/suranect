import 'package:flutter/material.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/utils/scale_size.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
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

    return Scaffold(
      appBar: BaseAppBar(title: PAGES.berita.screenTitle),
      body: BaseBodyPage(
        children: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          AppShadow.sShadow,
                        ]),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: chips,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 2,
                    color: AppColors.neutral_30,
                  ),
                  const SizedBox(height: 10),
                  CardNews(
                    image: "assets/images/news_example.png",
                    title:
                        "Wali Kota Surabaya perbaiki rumah terbakar dengan target 10 hari pada hari itu",
                    subtitle:
                        "Wali Kota Surabaya Eri Cahyadi targetkan perbaikan rumah warga yang terbakar di Kelurahan Putat Jaya, Kecamatan Sawahan. Wali Kota Surabaya Eri Cahyadi targetkan perbaikan rumah warga yang terbakar di Kelurahan Putat Jaya, Kecamatan Sawahan",
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
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
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: ListView.separated(
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
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

