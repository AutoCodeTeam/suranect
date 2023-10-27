import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class LaporanScreen extends StatefulWidget {
  const LaporanScreen({super.key});

  @override
  State<LaporanScreen> createState() => _LaporanScreenState();
}

class _LaporanScreenState extends State<LaporanScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    double heightCard = screenHeight * 0.15,
        heightImageActivty = screenHeight * 0.12;

    if (screenHeight <= 732) {
      heightCard = screenHeight * 0.17;
      heightImageActivty = screenHeight * 0.14;
    }

    if (screenHeight <= 640) {
      heightCard = screenHeight * 0.19;
      heightImageActivty = screenHeight * 0.16;
    }

    return Scaffold(
      appBar: BaseAppBar(title: PAGES.laporan.screenTitle),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRouter.router.push(PAGES.takePhoto.screenPath);
        },
        backgroundColor: AppColors.info_40,
        child: SvgPicture.asset(
          "assets/svg/camera_ic.svg",
          color: AppColors.white,
          height: 30,
        ),
      ),
      body: BaseBodyPage(
        children: [
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: index == 0 ? 18 : 0,
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
