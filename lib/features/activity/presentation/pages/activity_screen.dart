import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/utils/scale_size.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
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
          "Laporan Saya",
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
          "Berita Yang Disimpan",
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
          "Event Yang Disimpan",
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
    ];

    final screenHeight = MediaQuery.of(context).size.height;

    double heightRowChips = screenHeight * 0.06,
        heightCard = screenHeight * 0.15,
        heightImageActivty = screenHeight * 0.12;

    if (screenHeight <= 732) {
      heightRowChips = screenHeight * 0.08;
      heightCard = screenHeight * 0.17;
      heightImageActivty = screenHeight * 0.14;
    }

    if (screenHeight <= 640) {
      heightRowChips = screenHeight * 0.08;
      heightCard = screenHeight * 0.19;
      heightImageActivty = screenHeight * 0.16;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          PAGES.activity.screenTitle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: BaseBodyPage(
        children: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.blue_10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: AppColors.neutral_30,
                        ),
                      ),
                      prefixIcon: SvgPicture.asset("assets/svg/search_ic.svg"),
                      contentPadding: const EdgeInsets.all(10),
                      hintText: "Cari Aktivitas",
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: heightRowChips,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.neutral_30)),
                    child: Center(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: chips,
                      ),
                    ),
                  )
                ],
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
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: heightCard,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    AppShadow.sShadow,
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: heightImageActivty,
                      width: heightImageActivty,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/event_example2_img.png",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(
                                    "assets/images/suranect_profile.png"),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "@admin-suranect",
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            ],
                          ),
                          Text(
                            "Bonek Together Once Again!",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            "7 Jam yang lalu",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.success_40,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Text(
                                "Event yang disimpan",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 10,
          )
        ],
      ),
    );
  }
}
