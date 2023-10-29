import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/utils/scale_size.dart';
import 'package:suranect/core/widgets/app_button.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/event/presentation/pages/event_screen.dart';
import 'package:suranect/features/peta/presentation/controller/current_location_bloc.dart';
import 'package:suranect/features/peta/presentation/controller/peta_bloc.dart';
import 'package:suranect/features/peta/presentation/pages/peta_search_screen.dart';

class PetaScreen extends StatefulWidget {
  const PetaScreen({super.key});

  @override
  State<PetaScreen> createState() => _PetaScreenState();
}

class _PetaScreenState extends State<PetaScreen> {
  final surabayaCoords = const LatLng(-7.2653, 112.7421);

  final surabayaBounds = LatLngBounds(
    const LatLng(-7.3671, 112.6094),
    const LatLng(-7.2221, 112.8039),
  );

  final _sheet = GlobalKey();
  final _controller = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    final mapController =
        BlocProvider.of<CurrentLocationBloc>(context).mapController;

    final screenHeight = MediaQuery.of(context).size.height;

    double heightRowChips = screenHeight * 0.06;

    if (screenHeight <= 732) {
      heightRowChips = screenHeight * 0.08;
    }

    if (screenHeight <= 640) {
      heightRowChips = screenHeight * 0.08;
    }

    final List<String> categories = [
      "Semua",
      "Event",
      "Penutupan",
    ];

    return BlocConsumer<CurrentLocationBloc, CurrentLocationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          currentLocation: (valueCurrentLocation) {
            return BlocConsumer<PetaBloc, PetaState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (valuePeta) => Scaffold(
                    appBar: BaseAppBar(
                      title: PAGES.peta.screenTitle,
                      isShowSearch: true,
                      searchDelegate: PetaSearchScreen(peta: valuePeta.petas),
                    ),
                    body: Stack(
                      children: [
                        FlutterMap(
                          mapController: mapController,
                          options: MapOptions(
                            minZoom: 10,
                            maxZoom: 18,
                            initialZoom: 12,
                            cameraConstraint: CameraConstraint.containCenter(
                              bounds: surabayaBounds,
                            ),
                            initialCenter: surabayaCoords,
                          ),
                          children: [
                            TileLayer(
                              subdomains: const ['a', 'b', 'c'],
                              urlTemplate:
                                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            ),
                            MarkerLayer(
                              markers: [
                                Marker(
                                  point: LatLng(
                                      valueCurrentLocation.latLng.latitude,
                                      valueCurrentLocation.latLng.longitude),
                                  child: const Icon(
                                    Icons.pin_drop,
                                    color: Colors.blue,
                                    size: 24,
                                  ),
                                ),
                                ...List.generate(
                                  valuePeta.events.length,
                                  (index) => Marker(
                                    point: LatLng(
                                        valuePeta.events[index].position.lat,
                                        valuePeta.events[index].position.lon),
                                    child: const Icon(
                                      Icons.pin_drop,
                                      color: Colors.blue,
                                      size: 24,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            PolylineLayer(
                              polylines: [
                                ...List.generate(
                                  valuePeta.petas.length,
                                  (indexPeta) => Polyline(
                                    points: [
                                      ...List.generate(
                                        valuePeta
                                            .petas[indexPeta].position.length,
                                        (indexPosition) => LatLng(
                                          valuePeta.petas[indexPeta]
                                              .position[indexPosition].lat,
                                          valuePeta.petas[indexPeta]
                                              .position[indexPosition].lon,
                                        ),
                                      ),
                                    ],
                                    strokeWidth: 8,
                                    color: AppColors.error_60,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          right: 10,
                          child: Container(
                            height: heightRowChips,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: AppColors.neutral_30)),
                            child: Center(
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: categories.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 5),
                                itemBuilder: (context, index) => FilterChip(
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
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  backgroundColor:
                                      valuePeta.category == categories[index]
                                          ? AppColors.info_40
                                          : AppColors.neutral_40,
                                  onSelected: (bool value) {
                                    context.read<PetaBloc>().add(
                                          PetaEvent.changeCategory(
                                            categories[index],
                                          ),
                                        );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height / 3.2,
                                right: 20.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColors.white,
                              child: IconButton(
                                onPressed: () {
                                  mapController.move(
                                    LatLng(valueCurrentLocation.latLng.latitude,
                                        valueCurrentLocation.latLng.longitude),
                                    18,
                                  );
                                },
                                iconSize: 30,
                                color: AppColors.blue_60,
                                icon: const Icon(
                                  Icons.my_location_outlined,
                                ),
                              ),
                            ),
                          ),
                        ),
                        DraggableScrollableSheet(
                          key: _sheet,
                          initialChildSize: 0.3,
                          maxChildSize: 0.9,
                          minChildSize: 0.3,
                          expand: true,
                          snap: true,
                          snapSizes: const [0.5],
                          controller: _controller,
                          builder: (BuildContext context,
                              ScrollController scrollController) {
                            return DecoratedBox(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                              child: CustomScrollView(
                                controller: scrollController,
                                slivers: [
                                  SliverToBoxAdapter(
                                    child: valuePeta.category != "Event"
                                        ? Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              "Penutupan Jalan",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        : const SizedBox.shrink(),
                                  ),
                                  SliverList.separated(
                                    itemBuilder: (context, index) => InkWell(
                                      onTap: () async {
                                        return showDialog<void>(
                                          context: context,
                                          barrierDismissible: false,
                                          // user must tap button!
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              // <-- SEE HERE
                                              title:
                                                  const Text('Cancel booking'),
                                              content:
                                                  const SingleChildScrollView(
                                                child: ListBody(
                                                  children: <Widget>[
                                                    Text(
                                                        'Are you sure want to cancel booking?'),
                                                  ],
                                                ),
                                              ),
                                              actions: <Widget>[
                                                TextButton(
                                                  child: Text(
                                                    'Cancel',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                          color: AppColors
                                                              .error_60,
                                                        ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text(
                                                    'Detail',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                          color:
                                                              AppColors.info_60,
                                                        ),
                                                  ),
                                                  onPressed: () {
                                                    AppRouter.router.pop();
                                                    AppRouter.router.push(
                                                        PAGES.petaDetail
                                                            .screenPath,
                                                        extra: {
                                                          "peta": valuePeta
                                                              .petas[index],
                                                        });
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text(
                                                    'Lihat Peta',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineSmall!
                                                        .copyWith(
                                                          color:
                                                              AppColors.info_60,
                                                        ),
                                                  ),
                                                  onPressed: () {
                                                    mapController.move(
                                                        LatLng(
                                                            valuePeta
                                                                .petas[index]
                                                                .position[0]
                                                                .lat,
                                                            valuePeta
                                                                .petas[index]
                                                                .position[0]
                                                                .lon),
                                                        18);
                                                    AppRouter.router.pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              boxShadow: [
                                                AppShadow.sShadow,
                                              ]),
                                          child: ListTile(
                                            title: Text(
                                              valuePeta.petas[index].title,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            subtitle: Text(
                                              valuePeta
                                                  .petas[index].description,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            trailing: SvgPicture.asset(
                                              "assets/svg/arrow-circle-right_ic.svg",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      height: 10,
                                    ),
                                    itemCount: valuePeta.petas.length,
                                  ),
                                  SliverToBoxAdapter(
                                    child: valuePeta.category != "Penutupan"
                                        ? Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              "Event Didekatmu",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        : const SizedBox.shrink(),
                                  ),
                                  SliverList.separated(
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: index == 9 ? 18 : 0,
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          return showDialog<void>(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text(
                                                    'Cancel booking'),
                                                content:
                                                    const SingleChildScrollView(
                                                  child: ListBody(
                                                    children: <Widget>[
                                                      Text(
                                                          'Are you sure want to cancel booking?'),
                                                    ],
                                                  ),
                                                ),
                                                actions: <Widget>[
                                                  TextButton(
                                                    child: Text(
                                                      'Cancel',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineSmall!
                                                          .copyWith(
                                                            color: AppColors
                                                                .error_60,
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: Text(
                                                      'Detail',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineSmall!
                                                          .copyWith(
                                                            color: AppColors
                                                                .info_60,
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      AppRouter.router.pop();
                                                      AppRouter.router.push(
                                                          PAGES.eventDetail
                                                              .screenPath,
                                                          extra: {
                                                            "event": valuePeta
                                                                .events[index],
                                                          });
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: Text(
                                                      'Lihat Peta',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineSmall!
                                                          .copyWith(
                                                            color: AppColors
                                                                .info_60,
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      mapController.move(
                                                          LatLng(
                                                              valuePeta
                                                                  .events[index]
                                                                  .position
                                                                  .lat,
                                                              valuePeta
                                                                  .events[index]
                                                                  .position
                                                                  .lon),
                                                          18);
                                                      AppRouter.router.pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: CardEvent(
                                          event: valuePeta.events[index],
                                        ),
                                      ),
                                    ),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      height: 10,
                                    ),
                                    itemCount: valuePeta.events.length,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
