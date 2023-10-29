import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/berita/domain/entities/berita.dart';

class BeritaDetailScreen extends StatefulWidget {
  final Berita berita;

  const BeritaDetailScreen({super.key, required this.berita});

  @override
  State<BeritaDetailScreen> createState() => _BeritaDetailScreenState();
}

class _BeritaDetailScreenState extends State<BeritaDetailScreen> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting("id_ID", null);
    return Scaffold(
      appBar: BaseAppBar(title: ""),
      body: BaseBodyPage(
        children: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat("d MMMM y", "id_ID")
                        .format(DateTime.parse(widget.berita.createdAt!)),
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: AppColors.info_20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.berita.title,
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          widget.berita.image,
                          errorListener: (p0) =>
                              const Center(child: CircularProgressIndicator()),
                        ),
                        fit: BoxFit.cover,
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
                    widget.berita.text,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
