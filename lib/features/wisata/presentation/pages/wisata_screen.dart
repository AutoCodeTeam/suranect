import 'package:flutter/material.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/core/widgets/search_screen.dart';
import 'package:suranect/features/wisata/presentation/widgets/card_wisata_header.dart';

class WisataScreen extends StatefulWidget {
  const WisataScreen({super.key});

  @override
  State<WisataScreen> createState() => _WisataScreenState();
}

class _WisataScreenState extends State<WisataScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: PAGES.wisata.screenTitle, searchDelegate: DataSearch(listWords: listWords)),
      body: BaseBodyPage(
        onLoadNextPage: () {},
        scrollController: scrollController,
        onRefresh: () async {},
        children: [
          SliverPersistentHeader(
            delegate: CardWisataHeader(),
          ),
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: index == 9 ? 18 : 0,
              ),
              child: const CardWisata(
                image: 'assets/images/taman_apsari_img.png',
                title: "Kenpark Surabaya",
                address:
                    "Jl. Pantai Ria Kenjeran, Sukolilo Baru, Kec. Bulak, Surabaya, Jawa Timur 60122",
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

class CardWisata extends StatelessWidget {
  final String image;
  final String title;
  final String address;

  const CardWisata(
      {super.key,
      required this.image,
      required this.title,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.125,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          AppShadow.sShadow,
        ],
        color: AppColors.white,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.125,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      address,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
