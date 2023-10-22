import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class UmkmScreen extends StatefulWidget {
  const UmkmScreen({super.key});

  @override
  State<UmkmScreen> createState() => _UmkmScreenState();
}

class _UmkmScreenState extends State<UmkmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: PAGES.umkm.screenTitle),
      body: BaseBodyPage(
        children: [
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 18 : 0,
                bottom: index == 9 ? 32 : 0,
                left: 20.0,
                right: 20.0,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.32,
                width: MediaQuery.of(context).size.width * 0.9,
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
                              child: SvgPicture.asset("assets/svg/heart_ic.svg"),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child:
                                  SvgPicture.asset("assets/svg/bookmark_ic.svg"),
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
                                    .copyWith(color: AppColors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "1, 298 Likes",
                        style: Theme.of(context).textTheme.bodyLarge,
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
                                style: Theme.of(context).textTheme.bodyLarge,
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
