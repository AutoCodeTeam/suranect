import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/core/widgets/search_screen.dart';
import 'package:suranect/features/wisata/presentation/controller/wisata_bloc.dart';
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
    return BlocConsumer<WisataBloc, WisataState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: BaseAppBar(
              title: PAGES.wisata.screenTitle,
              searchDelegate: DataSearch(listWords: listWords)),
          body: state.maybeMap(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (value) => BaseBodyPage(
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
                    child: InkWell(
                      onTap: () {
                        AppRouter.router
                            .push(PAGES.wisataDetail.screenPath, extra: {
                          "wisata": value.wisatas[index],
                        });
                      },
                      child: CardWisata(
                        image: value.wisatas[index].image,
                        title: value.wisatas[index].name,
                        address: value.wisatas[index].address,
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: value.wisatas.length,
                )
              ],
            ),
          ),
        );
      },
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
              child: CachedNetworkImage(
                imageUrl: image,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
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
