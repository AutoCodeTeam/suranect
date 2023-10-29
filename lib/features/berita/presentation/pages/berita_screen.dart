import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/utils/scale_size.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/berita/presentation/controller/berita_bloc.dart';
import 'package:suranect/features/berita/presentation/pages/berita_search_screen.dart';
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
    ScrollController scrollController = ScrollController();

    final screenHeight = MediaQuery.of(context).size.height;

    double beritaHeader = screenHeight * 0.3,
        cardHeader = screenHeight * 0.12,
        heightRowChips = screenHeight * 0.06;

    if (screenHeight <= 732) {
      cardHeader = screenHeight * 0.14;
      heightRowChips = screenHeight * 0.08;
    }

    if (screenHeight <= 640) {
      beritaHeader = screenHeight * 0.32;
      cardHeader = screenHeight * 0.16;
      heightRowChips = screenHeight * 0.08;
    }

    List<String> categories = [
      "Semua",
      "Terbaru",
      "Teknologi",
      "Suara Publik",
      "Olahraga"
    ];

    return BlocConsumer<BeritaBloc, BeritaState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Scaffold(
            appBar: BaseAppBar(
              title: PAGES.berita.screenTitle,
              isShowSearch: true,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loaded: (value) => Scaffold(
            appBar: BaseAppBar(
              title: PAGES.berita.screenTitle,
              searchDelegate: BeritaSearchScreen(beritas: value.beritas),
              isShowSearch: true,
            ),
            body: BaseBodyPage(
              onRefresh: () async {
                context.read<BeritaBloc>().add(const BeritaEvent.started());
              },
              scrollController: scrollController,
              onLoadNextPage: () {},
              children: [
                SliverToBoxAdapter(
                  child: Padding(
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
                          child: ListView.separated(
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(
                                left: index == 0 ? 10 : 0,
                                right:
                                    index == categories.indexOf(categories.last)
                                        ? 10
                                        : 0,
                              ),
                              child: FilterChip(
                                label: Text(
                                  categories[index],
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                backgroundColor:
                                    value.category == categories[index]
                                        ? AppColors.info_40
                                        : AppColors.neutral_40,
                                onSelected: (bool value) {
                                  context.read<BeritaBloc>().add(
                                      BeritaEvent.changeCategory(
                                          categories[index]));
                                },
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 10,
                            ),
                            itemCount: categories.length,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            AppRouter.router
                                .push(PAGES.beritaDetail.screenPath, extra: {
                              "berita": value.beritas[0],
                            });
                          },
                          child: CardNews(
                            image: value.beritas[0].image,
                            title: value.beritas[0].title,
                            subtitle: value.beritas[0].text,
                            height: beritaHeader,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: AppColors.neutral_30,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: value.beritas.length,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 10),
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                AppRouter.router.push(
                                    PAGES.beritaDetail.screenPath,
                                    extra: {
                                      "berita": value.beritas[index],
                                    });
                              },
                              child: CardNews(
                                image: value.beritas[index].image,
                                title: value.beritas[index].title,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.height * 0.2,
                              ),
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
                  ),
                ),
                SliverList.separated(
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: index == 9 ? 18 : 0,
                    ),
                    child: CardLatestNews(
                      image: value.latestNews[index].image,
                      title: value.latestNews[index].title,
                      subtitle: value.latestNews[index].text,
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: value.latestNews.length,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
