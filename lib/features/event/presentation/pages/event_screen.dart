import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/core/widgets/search_screen.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    double cardBeritaHeader = screenHeight * 0.34;

    if (screenHeight <= 732) {
      cardBeritaHeader = screenHeight * 0.38;
    }

    if (screenHeight <= 640) {
      cardBeritaHeader = screenHeight * 0.4;
    }

    return Scaffold(
      appBar: BaseAppBar(
          title: PAGES.event.screenTitle,
          searchDelegate: DataSearch(listWords: listWords)),
      body: BaseBodyPage(
        children: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: cardBeritaHeader,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          AppShadow.sShadow,
                        ]),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event Trending: Ulang Tahun Surabaya yang ke-730",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/event_example_img.png",
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: Text(
                            "Hari Jadi Kota Surabaya (HJKS) ke-730 akan diperingati pada 31 Mei 2023. Namun, dalam rangka memeriahkan hari ulang tahun Ibu Kota Jawa Timur ini, sejumlah kegiatan berskala nasional siap digelar.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Event Terbaru",
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
              child: const CardEvent(),
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 10,
          )
        ],
      ),
    );
  }
}

class CardEvent extends StatelessWidget {
  const CardEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.18,
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
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.height * 0.15,
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
                Text(
                  "Bonek Together Once Again!",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: Text(
                    "Sebagai penutupan pertandingan final Persebaya vs Arema, kami ingin anda untuk bergabung dengan kami.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset(
                    "assets/svg/arrow-circle-right_ic.svg",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
