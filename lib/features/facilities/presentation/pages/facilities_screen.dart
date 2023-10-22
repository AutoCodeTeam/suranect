import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/widgets/base_app_bar.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/core/widgets/search_screen.dart';
import 'package:suranect/features/facilities/data/models/list_item_model.dart';
import 'package:suranect/features/facilities/presentation/widgets/list_item.dart';

class FacilitiesScreen extends StatefulWidget {
  const FacilitiesScreen({super.key});

  @override
  State<FacilitiesScreen> createState() => _FacilitiesScreenState();
}

class _FacilitiesScreenState extends State<FacilitiesScreen> {
  final List<ListItem> listItems = [
    const ListItem(
        page: PAGES.layananPublik,
        iconItem: "assets/svg/goverment-service_ic.svg",
        subtitle: "Layanan yang tersedia untuk warga kota Surabaya"),
    const ListItem(
        page: PAGES.berita,
        iconItem: "assets/svg/news-service_blue_ic.svg",
        subtitle: "Layanan yang tersedia untuk warga kota Surabaya"),
    const ListItem(
        page: PAGES.wisata,
        iconItem: "assets/svg/wisata-service_blue_ic.svg",
        subtitle: "Layanan yang tersedia untuk warga kota Surabaya"),
    const ListItem(
        page: PAGES.umkm,
        iconItem: "assets/svg/umkm_blue_ic.svg",
        subtitle: "Lihat UMKM Surabaya yang lagi trending"),
    const ListItem(
        page: PAGES.event,
        iconItem: "assets/svg/event_blue_ic.svg",
        subtitle: "Cari event-event terbaru Surabaya yuk"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: PAGES.facilities.screenTitle, searchDelegate: DataSearch(listWords: listWords)),
      body: BaseBodyPage(
        children: [
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                top: index == listItems.indexOf(listItems.first) ? 18 : 0,
                bottom: index == listItems.indexOf(listItems.last) ? 32 : 0,
                left: 20.0,
                right: 20.0,
              ),
              child: ItemFacilities(
                listItem: listItems[index],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: listItems.length,
          )
        ],
      ),
    );
  }
}
