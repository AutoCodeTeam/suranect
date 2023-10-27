import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/pajak_kendaraan/presentation/controller/pajak_kendaraan_bloc.dart';

class PajakKendaraanScreen extends StatefulWidget {
  final String nopol;

  const PajakKendaraanScreen({super.key, required this.nopol});

  @override
  State<PajakKendaraanScreen> createState() => _PajakKendaraanScreenState();
}

class _PajakKendaraanScreenState extends State<PajakKendaraanScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<PajakKendaraanBloc>()
        .add(PajakKendaraanEvent.started(plat: widget.nopol));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: PAGES.pajakKendaraan.screenTitle,
      ),
      body: BlocConsumer<PajakKendaraanBloc, PajakKendaraanState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
          failure: (value) {
            var snackBar = const SnackBar(
              content: Text("Kendaraan tidak ditemukan!"),
              backgroundColor: AppColors.error_60,
              duration: Duration(seconds: 1),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

            AppRouter.router.pop();
          },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (value) {
              return BaseBodyPage(
                children: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: AppColors.neutral_100,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Identitas Kendaraan",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(color: AppColors.neutral_30)),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Nopol",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      value.pajakKendaraan.identitasKendaraan
                                          .nopol,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Warna",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      value.pajakKendaraan.identitasKendaraan
                                          .warna,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Merek",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      value.pajakKendaraan.identitasKendaraan
                                          .merek,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Model",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      value.pajakKendaraan.identitasKendaraan
                                          .model,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Tipe",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      value.pajakKendaraan.identitasKendaraan
                                          .tipe,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Tahun Pembuatan",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      value.pajakKendaraan.identitasKendaraan
                                          .tahunPembuatan,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Masa Berlaku Pajak",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      value.pajakKendaraan.identitasKendaraan
                                          .masaBerlaku,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: AppColors.neutral_100,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Biaya Penul Tahunan",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(color: AppColors.neutral_30)),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("PKB",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penulTahunan.pkb}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Progresif",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penulTahunan.progresif}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("SWDKLLJ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penulTahunan.swdkllj}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Parkir Berlangganan",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penulTahunan.parkirLangganan}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Pengesahan STNK",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penulTahunan.pengesahaanStnk}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total/Jumlah",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penulTahunan.totalJumlah}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: AppColors.neutral_100,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Tambahan Biaya Penul 5 Tahunan",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(color: AppColors.neutral_30)),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Cetak STNK",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penul5Tahunan.cetakStnk}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Cetak TNKB",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                  Text(
                                      "${value.pajakKendaraan.penul5Tahunan.cetakTnkb}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: AppColors.neutral_40)),
                                ],
                              ),
                              const Divider(
                                color: AppColors.neutral_40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
