import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/facilities/data/models/list_item_model.dart';

class ItemFacilities extends StatelessWidget {
  final ListItem listItem;

  const ItemFacilities({
    super.key,
    required this.listItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRouter.router.replace(listItem.page.screenPath);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.blue_20,
                borderRadius: BorderRadius.circular(12)),
            child: SvgPicture.asset(
              listItem.iconItem,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listItem.page.screenTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                listItem.subtitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          )
        ],
      ),
    );
  }
}
