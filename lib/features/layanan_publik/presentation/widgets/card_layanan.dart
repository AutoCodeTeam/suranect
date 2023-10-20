import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';

class CardLayanan extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const CardLayanan({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color: AppColors.neutral_30,
            width: 1,
          ),
        ),
        child: Center(
          child: ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: AppColors.neutral_100,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: SvgPicture.asset(
                icon,
                fit: BoxFit.scaleDown,
              ),
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            subtitle: Text(
              subtitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }
}
