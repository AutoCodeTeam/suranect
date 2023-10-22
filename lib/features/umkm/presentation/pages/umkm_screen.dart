import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/core/widgets/search_screen.dart';

class UmkmScreen extends StatefulWidget {
  const UmkmScreen({super.key});

  @override
  State<UmkmScreen> createState() => _UmkmScreenState();
}

class _UmkmScreenState extends State<UmkmScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    double cardUmkm = screenHeight * 0.34;

    if (screenHeight <= 732) {
      cardUmkm = screenHeight * 0.38;
    }

    if (screenHeight <= 640) {
      cardUmkm = screenHeight * 0.4;
    }
    return Scaffold(
      appBar: BaseAppBar(
          title: PAGES.umkm.screenTitle,
          searchDelegate: DataSearch(listWords: listWords)),
      body: BaseBodyPage(
        children: [
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 18 : 0,
                bottom: index == 9 ? 18 : 0,
                left: 10,
                right: 10,
              ),
              child: Container(
                height: cardUmkm,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: AppColors.white,
                    boxShadow: [
                      AppShadow.sShadow,
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/umkm_example_img.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child:
                                  SvgPicture.asset("assets/svg/heart_ic.svg"),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  "assets/svg/bookmark_ic.svg"),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    AppColors.success_40),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(6),
                                    ),
                                  ),
                                ),
                                side: MaterialStatePropertyAll(
                                  BorderSide(
                                    color: AppColors.success_60,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Detail",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      color: AppColors.white,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "1, 298 Likes",
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                            text: "KreasiFitri ",
                            style: Theme.of(context).textTheme.headlineSmall,
                            children: [
                              TextSpan(
                                text:
                                    "merupakan usaha perorangan yang memproduksi...",
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            ]),
                      )
                    ],
                  ),
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
