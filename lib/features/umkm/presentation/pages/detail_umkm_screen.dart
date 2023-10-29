import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/umkm/domain/entities/umkm.dart';

class DetailUmkmScreen extends StatefulWidget {
  final Umkm umkm;

  const DetailUmkmScreen({super.key, required this.umkm});

  @override
  State<DetailUmkmScreen> createState() => _DetailUmkmScreenState();
}

class _DetailUmkmScreenState extends State<DetailUmkmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: ""),
      body: BaseBodyPage(
        children: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(widget.umkm.image),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        AppShadow.sShadow,
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.umkm.name,
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.umkm.description,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.neutral_60,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Alamat",
                            style: Theme.of(context).textTheme.headlineMedium),
                        widget.umkm.building.isNotEmpty
                            ? SizedBox(height: 5)
                            : const SizedBox.shrink(),
                        widget.umkm.building.isNotEmpty
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset("assets/svg/building_ic.svg",
                                      color: AppColors.info_60),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  )
                                ],
                              )
                            : const SizedBox.shrink(),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset("assets/svg/location_ic.svg"),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                widget.umkm.address,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Daftar Produk",
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceBetween,
                    runSpacing: 20,
                    spacing: 20,
                    children: [
                      ...List.generate(
                        widget.umkm.listProduct.length,
                        (index) => Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              color: AppColors.white,
                              boxShadow: [
                                AppShadow.sShadow,
                              ]),
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(12)),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(widget.umkm.listProduct[index].imageProduct),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                widget.umkm.listProduct[index].nameProduct,
                                style:
                                    Theme.of(context).textTheme.headlineSmall!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
