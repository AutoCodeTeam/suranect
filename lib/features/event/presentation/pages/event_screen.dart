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
import 'package:suranect/features/event/domain/entities/event.dart';
import 'package:suranect/features/event/presentation/controller/event_bloc.dart';
import 'package:suranect/features/event/presentation/pages/event_search_screen.dart';

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

    return BlocConsumer<EventBloc, EventState>(
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
              title: PAGES.event.screenTitle,
              isShowSearch: true,
              searchDelegate: EventSearchScreen(events: value.events),
            ),
            body: BaseBodyPage(
              children: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            AppRouter.router
                                .push(PAGES.eventDetail.screenPath, extra: {
                              "event": value.events[0],
                            });
                          },
                          child: Container(
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
                                  value.events[0].title,
                                  maxLines: 2,
                                  textAlign: TextAlign.justify,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                const SizedBox(height: 10),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                              value.events[0].poster),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Expanded(
                                  child: Text(
                                    value.events[0].description,
                                    maxLines: 3,
                                    textAlign: TextAlign.justify,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ],
                            ),
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
                      bottom: index == value.events.indexOf(value.events.last)
                          ? 18
                          : 0,
                    ),
                    child: InkWell(
                      onTap: () {
                        AppRouter.router
                            .push(PAGES.eventDetail.screenPath, extra: {
                          "event": value.events[index],
                        });
                      },
                      child: CardEvent(
                        event: value.events[index],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  itemCount: value.events.length,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class CardEvent extends StatelessWidget {
  final Event event;

  const CardEvent({
    super.key,
    required this.event,
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
              image: DecorationImage(
                  image: CachedNetworkImageProvider(event.poster),
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
                  event.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: Text(
                    event.description,
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
