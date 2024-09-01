import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/auth/presentation/controller/profile/profile_bloc.dart';
import 'package:suranect/features/laporan/data/remote/models/laporan_detail_request.dart';
import 'package:suranect/features/laporan/presentation/controller/laporan_bloc.dart';

class LaporanDetailScreen extends StatefulWidget {
  final int id;

  const LaporanDetailScreen({super.key, required this.id});

  @override
  State<LaporanDetailScreen> createState() => _LaporanDetailScreenState();
}

class _LaporanDetailScreenState extends State<LaporanDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    double heightIdLaporan = screenHeight * 0.08;

    if (screenHeight <= 732) {
      heightIdLaporan = screenHeight * 0.9;
    }

    if (screenHeight <= 640) {
      heightIdLaporan = screenHeight * 0.1;
    }
    return BlocConsumer<LaporanBloc, LaporanState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Scaffold(
            appBar: BaseAppBar(title: PAGES.laporanDetail.screenTitle),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          detail: (value) {
            final List<String> statusList = value.laporan.status.split(',');

            return Scaffold(
              body: BaseBodyPage(
                children: [
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Positioned(
                            top: -30,
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.6,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    value.laporan.photo,
                                                  ),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                AppRouter.router.pop();
                                              },
                                              child: Text(
                                                'Close',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(
                                                      color: AppColors.info_60,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.35,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        value.laporan.photo),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {
                                          AppRouter.router.pop();
                                        },
                                        icon: const Icon(
                                          Icons.chevron_left,
                                          color: AppColors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                  BlocBuilder<ProfileBloc, ProfileState>(
                                    builder: (context, state) {
                                      return state.maybeMap(
                                        orElse: () => const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                        authenticated: (valueProfile) =>
                                            value.laporan.userId ==
                                                    valueProfile.userEntity.id
                                                ? CircleAvatar(
                                                    radius: 20,
                                                    child: Center(
                                                      child: PopupMenuButton(
                                                        icon: const Icon(
                                                            Icons.more_vert),
                                                        itemBuilder:
                                                            (context) =>
                                                                <PopupMenuItem<
                                                                    String>>[
                                                          PopupMenuItem<String>(
                                                            value: 'edit',
                                                            child: Text(
                                                              "Edit",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headlineMedium!
                                                                  .copyWith(
                                                                    color: AppColors
                                                                        .info_60,
                                                                  ),
                                                            ),
                                                          ),
                                                          PopupMenuItem<String>(
                                                            value: 'delete',
                                                            child: Text(
                                                              "Delete",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headlineMedium!
                                                                  .copyWith(
                                                                    color: AppColors
                                                                        .error_60,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                        onSelected: (index) {
                                                          switch (index) {
                                                            case 'edit':
                                                              AppRouter.router
                                                                  .push(
                                                                PAGES
                                                                    .updateLaporan
                                                                    .screenPath,
                                                                extra: {
                                                                  "id": value
                                                                      .laporan
                                                                      .id,
                                                                },
                                                              ).then((valueThen) {
                                                                context
                                                                    .read<
                                                                        LaporanBloc>()
                                                                    .add(
                                                                      LaporanEvent
                                                                          .showDetail(
                                                                        request:
                                                                            LaporanDetailRequest(id: value.laporan.id),
                                                                      ),
                                                                    );
                                                              });
                                                              break;
                                                            case 'delete':
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        contextDialog) {
                                                                  return BlocProvider
                                                                      .value(
                                                                    value: BlocProvider.of<
                                                                            LaporanBloc>(
                                                                        context),
                                                                    child:
                                                                        AlertDialog(
                                                                      title:
                                                                          const Text(
                                                                        'Apakah anda yakin ingin menghapus?',
                                                                      ),
                                                                      actions: [
                                                                        TextButton(
                                                                          child:
                                                                              Text(
                                                                            'Cancel',
                                                                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                                                                  color: AppColors.error_60,
                                                                                ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                        ),
                                                                        TextButton(
                                                                          child:
                                                                              Text(
                                                                            'Delete',
                                                                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                                                                  color: AppColors.info_60,
                                                                                ),
                                                                          ),
                                                                          onPressed:
                                                                              () {
                                                                            AppRouter.router.pop();
                                                                            context.read<LaporanBloc>().add(
                                                                                  LaporanEvent.delete(
                                                                                    request: LaporanDetailRequest(id: value.laporan.id),
                                                                                  ),
                                                                                );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                              break;
                                                            default:
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  )
                                                : const SizedBox.shrink(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: heightIdLaporan,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    AppShadow.sShadow,
                                  ]),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ID Laporan",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      Text(
                                        "${value.laporan.id}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                      )
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: () {
                                          switch (value.laporan.status) {
                                            case "Pending":
                                              return AppColors.neutral_60;
                                            case "Koordinasi":
                                              return AppColors.blue_40;
                                            case "Tindak Lanjut":
                                              return AppColors.warning_40;
                                            case "Berhasil":
                                              return AppColors.success_40;
                                            default:
                                              return AppColors.neutral_60;
                                          }
                                        }(),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Text(
                                      statusList.last,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [AppShadow.sShadow],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lokasi: ",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            Text(value.laporan.lokasi,
                                style: Theme.of(context).textTheme.titleMedium),
                            const SizedBox(height: 10),
                            value.laporan.lokasiSpesifik.isNotEmpty
                                ? Text("Lokasi Spesifik: ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium)
                                : const SizedBox.shrink(),
                            value.laporan.lokasiSpesifik.isNotEmpty
                                ? Text(value.laporan.lokasiSpesifik,
                                    style:
                                        Theme.of(context).textTheme.titleMedium)
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [AppShadow.sShadow],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Permasalahan: ",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            Text(value.laporan.permasalahan,
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [AppShadow.sShadow],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Status Laporan: ",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: 10),
                            CustomScrollView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              slivers: [
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index) {
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: () {
                                              switch (value.laporan.status) {
                                                case "Pending":
                                                  return AppColors.neutral_60;
                                                case "Koordinasi":
                                                  return AppColors.blue_40;
                                                case "Tindak Lanjut":
                                                  return AppColors.warning_40;
                                                case "Berhasil":
                                                  return AppColors.success_40;
                                                default:
                                                  return AppColors.neutral_60;
                                              }
                                            }(),
                                            radius: 10,
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(statusList[index],
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium),
                                                const SizedBox(height: 5),
                                                Text("Laporan Belum Diterima",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium),
                                                const SizedBox(height: 5),
                                                Text("1 November 2023 ● 09:00",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    childCount: statusList
                                        .length, // Set the number of children
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
