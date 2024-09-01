import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/umkm/presentation/controller/umkm_bloc.dart';
import 'package:suranect/features/umkm/presentation/pages/umkm_search_screen.dart';

class UmkmScreen extends StatefulWidget {
  const UmkmScreen({super.key});

  @override
  State<UmkmScreen> createState() => _UmkmScreenState();
}

class _UmkmScreenState extends State<UmkmScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    double cardUmkm = screenHeight * 0.3;

    if (screenHeight <= 732) {
      cardUmkm = screenHeight * 0.32;
    }

    if (screenHeight <= 640) {
      cardUmkm = screenHeight * 0.34;
    }
    return BlocConsumer<UmkmBloc, UmkmState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Scaffold(
            appBar: BaseAppBar(
              title: PAGES.umkm.screenTitle,
              isShowSearch: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loaded: (value) => Scaffold(
            appBar: BaseAppBar(
                title: PAGES.umkm.screenTitle,
              isShowSearch: true,
              searchDelegate: UmkmSearchScreen(umkm: value.umkm),
            ),
            body: BaseBodyPage(
              children: [
                SliverList.separated(
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      top: index == 0 ? 18 : 0,
                      bottom:
                          index == value.umkm.indexOf(value.umkm.last) ? 18 : 0,
                      left: 10,
                      right: 10,
                    ),
                    child: InkWell(
                      onTap: () {
                        AppRouter.router
                            .push(PAGES.umkmDetail.screenPath, extra: {
                          "umkm": value.umkm[index],
                        });
                      },
                      child: Container(
                        height: cardUmkm,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
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
                                child: CachedNetworkImage(
                                  imageUrl: value.umkm[index].image,
                                  fit: BoxFit.contain,
                                  placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              RichText(
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  text: "${value.umkm[index].name} ",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                  children: [
                                    TextSpan(
                                      text: value.umkm[index].description,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: value.umkm.length,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
