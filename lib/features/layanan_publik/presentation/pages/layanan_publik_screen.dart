import 'package:flutter/material.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/layanan_publik/presentation/widgets/card_layanan.dart';

class LayananPublikScreen extends StatefulWidget {
  const LayananPublikScreen({super.key});

  @override
  State<LayananPublikScreen> createState() => _LayananPublikScreenState();
}

class _LayananPublikScreenState extends State<LayananPublikScreen> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: BaseAppBar(title: PAGES.layananPublik.screenTitle),
      body: BaseBodyPage(
        children: [
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(context),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pilih Layanan Kamu",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      CardLayanan(
                        onTap: () {},
                        icon: "assets/svg/car_ic.svg",
                        title: "Pajak Kendaraan",
                        subtitle: "Cek pajak kendaraan bermotor anda.",
                      ),
                      const SizedBox(height: 10),
                      CardLayanan(
                        onTap: () {},
                        icon: "assets/svg/house_ic.svg",
                        title: "PBB Online",
                        subtitle: "Cek pajak tanah anda.",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _header(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.23,
      child: Stack(
        children: [
          Positioned(
            top: -20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              color: AppColors.info_60,
            ),
          ),
          Positioned(
            top: -20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/ellipse_2.png"),
              )),
            ),
          ),
          Positioned(
            top: -40,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/ellipse_1.png"),
              )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    boxShadow: [
                      AppShadow.sShadow,
                    ]),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jelajahi layanan publik jadi lebih mudah",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Text(
                        "Fitur layanan publik memberikan akses cepat dan mudah kepada warga untuk mengurus administrasi perkotaan secara online.",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
