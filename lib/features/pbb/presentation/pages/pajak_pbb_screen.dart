import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/utils/terbilang_extension.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/pbb/presentation/controller/pajak_pbb_bloc.dart';

class PajakPbbScreen extends StatefulWidget {
  final String nop;

  const PajakPbbScreen({super.key, required this.nop});

  @override
  State<PajakPbbScreen> createState() => _PajakPbbScreenState();
}

class _PajakPbbScreenState extends State<PajakPbbScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PajakPbbBloc>().add(PajakPbbEvent.started(nop: widget.nop));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PajakPbbBloc, PajakPbbState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          failure: (value) {
            var snackBar = const SnackBar(
              content: Text("PBB tidak ditemukan!"),
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
          loaded: (value) => Scaffold(
            appBar: BaseAppBar(title: PAGES.pbb.screenTitle),
            body: BaseBodyPage(
              children: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SURAT PEMBERITAHUAN PAJAK TERHUTANG"
                          "PAJAK BUMI DAN BANGUNAN PERDESAAN DAN PERKOTAAN TAHUN",
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "NOP: ${value.pajakPBB.nop}",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Table(
                          border: const TableBorder(
                            right: BorderSide(width: 1, color: Colors.black),
                            left: BorderSide(width: 1, color: Colors.black),
                            top: BorderSide(width: 1, color: Colors.black),
                            horizontalInside:
                                BorderSide(width: 1, color: Colors.black),
                            verticalInside:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Text(
                                    "LETAK OBJEK PAJAK",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    "NAMA DAN ALAMAT WAJIB PAJAK",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            value.pajakPBB.letakObjekPajak
                                                    ?.alamat
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            "RT. ${value.pajakPBB.letakObjekPajak?.rt ?? ""} RW. ${value.pajakPBB.letakObjekPajak?.rw ?? ""}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            value.pajakPBB.letakObjekPajak
                                                    ?.kelurahan
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            value.pajakPBB.letakObjekPajak
                                                    ?.kecamatan
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            value.pajakPBB.letakObjekPajak?.kota
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                      ],
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            value.pajakPBB.alamatWajibPajak
                                                    ?.atasNama
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            value.pajakPBB.alamatWajibPajak
                                                    ?.alamat
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            "RT. ${value.pajakPBB.alamatWajibPajak?.rt ?? ""} RW. ${value.pajakPBB.alamatWajibPajak?.rw ?? ""}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            value.pajakPBB.alamatWajibPajak
                                                    ?.kelurahan
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                        Text(
                                            value.pajakPBB.alamatWajibPajak
                                                    ?.kota
                                                    ?.toUpperCase() ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Table(
                            defaultColumnWidth: const IntrinsicColumnWidth(),
                            border: TableBorder.all(),
                            children: [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        "OBJEK PAJAK",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        "Luas (M2)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        "KELAS",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        "NJOP PER M2 (Rp)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Text(
                                        "TOTAL NJOP (Rp)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        children: [
                                          Text("Bumi",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                          const SizedBox(height: 5),
                                          Text("Bangunan",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        children: [
                                          Text("120",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                          const SizedBox(height: 5),
                                          Text("115",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        children: [
                                          Text("143",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                          const SizedBox(height: 5),
                                          Text("038",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        children: [
                                          Text("4.155.000",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                          const SizedBox(height: 5),
                                          Text("2.625.000",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        children: [
                                          Text("498.600.000",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                          const SizedBox(height: 5),
                                          Text("312.375.000",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Table(
                          defaultColumnWidth:
                              const IntrinsicColumnWidth(flex: 2),
                          border: const TableBorder(
                            right: BorderSide(width: 1, color: Colors.black),
                            left: BorderSide(width: 1, color: Colors.black),
                            bottom: BorderSide(width: 1, color: Colors.black),
                            horizontalInside:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          children: [
                            TableRow(children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "NJOP Sebagai dasar pengenaan PBB-P2",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${value.pajakPBB.njopPbbP2 ?? ""}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "NJOPTKP (NJOP Tidak Kena Pajak)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${value.pajakPBB.njoptkp ?? ""}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "NJOP untuk penghitungan PBB",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${value.pajakPBB.njop ?? ""}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                        Table(
                          defaultColumnWidth:
                              const IntrinsicColumnWidth(flex: 2),
                          border: const TableBorder(
                            right: BorderSide(width: 1, color: Colors.black),
                            left: BorderSide(width: 1, color: Colors.black),
                            bottom: BorderSide(width: 1, color: Colors.black),
                            horizontalInside:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          children: [
                            TableRow(children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "NJKP (Nilai Jual Kena Pajak)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${value.pajakPBB.njkp} x ${value.pajakPBB.njop}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${((double.parse(value.pajakPBB.njkp!.replaceAll('%', '')) / 100) * value.pajakPBB.njop!).toInt()}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                        Table(
                          defaultColumnWidth:
                              const IntrinsicColumnWidth(flex: 2),
                          border: const TableBorder(
                            right: BorderSide(width: 1, color: Colors.black),
                            left: BorderSide(width: 1, color: Colors.black),
                            bottom: BorderSide(width: 1, color: Colors.black),
                            horizontalInside:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          children: [
                            TableRow(children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "PBB yang Terhutang",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${value.pajakPBB.pbbYangTerhutang} x ${((double.parse(value.pajakPBB.njkp!.replaceAll('%', '')) / 100) * value.pajakPBB.njop!).toInt()}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${(((double.parse(value.pajakPBB.njkp!.replaceAll('%', '')) / 100) * value.pajakPBB.njop!).toInt() * (double.parse(value.pajakPBB.pbbYangTerhutang!.replaceAll('%', '')) / 100)).toInt()}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                        Table(
                          defaultColumnWidth: const IntrinsicColumnWidth(),
                          border: const TableBorder(
                            right: BorderSide(width: 1, color: Colors.black),
                            left: BorderSide(width: 1, color: Colors.black),
                            bottom: BorderSide(width: 1, color: Colors.black),
                            horizontalInside:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          children: [
                            TableRow(children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "PAJAK BUMI DAN BANGUNAN YANG HARUS DIBAYAR (Rp)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        (((double.parse(value.pajakPBB.njkp!.replaceAll('%', '')) / 100) * value.pajakPBB.njop!).toInt() * (double.parse(value.pajakPBB.pbbYangTerhutang!.replaceAll('%', '')) / 100)).toInt().toTerbilang(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "${(((double.parse(value.pajakPBB.njkp!.replaceAll('%', '')) / 100) * value.pajakPBB.njop!).toInt() * (double.parse(value.pajakPBB.pbbYangTerhutang!.replaceAll('%', '')) / 100)).toInt()}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                        Table(
                          border: const TableBorder(
                            right: BorderSide(width: 1, color: Colors.black),
                            left: BorderSide(width: 1, color: Colors.black),
                            bottom: BorderSide(width: 1, color: Colors.black),
                            horizontalInside:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          defaultColumnWidth:
                              const IntrinsicColumnWidth(flex: 2),
                          children: [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("TGL JATUH TEMPO",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                            const Spacer(),
                                            Text(value.pajakPBB.jatuhTempo ?? "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("TEMPAT PEMBAYARAN",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                            const Spacer(),
                                            Text(value.pajakPBB.tempatPembayaran ?? "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
