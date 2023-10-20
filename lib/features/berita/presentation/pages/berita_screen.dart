import 'package:flutter/material.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/utils/scale_size.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class BeritaScreen extends StatefulWidget {
  const BeritaScreen({super.key});

  @override
  State<BeritaScreen> createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> chips =  [
      Expanded(
        child: FilterChip(
          label: Text(
            "Semua",
            textScaleFactor:
            ScaleSize.textScaleFactor(context),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          backgroundColor: AppColors.info_40,
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Terbaru",
            textScaleFactor:
            ScaleSize.textScaleFactor(context),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
              color: AppColors.neutral_60,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Teknologi",
            textScaleFactor:
            ScaleSize.textScaleFactor(context),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
              color: AppColors.neutral_60,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Sekolah",
            textScaleFactor:
            ScaleSize.textScaleFactor(context),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
              color: AppColors.neutral_60,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
          onSelected: (bool value) {},
        ),
      ),
      Expanded(
        child: FilterChip(
          label: Text(
            "Populer",
            textScaleFactor:
            ScaleSize.textScaleFactor(context),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
              color: AppColors.neutral_60,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(10))),
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
                  Container()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
