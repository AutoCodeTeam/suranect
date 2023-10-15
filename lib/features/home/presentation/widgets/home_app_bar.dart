import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_shadow.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(
            25,
          ),
        ),
        boxShadow: [
          AppShadow.sShadow,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Image.asset("assets/images/suranect_profile.png"),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "26 September",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "Suranect",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/search_ic.svg"),
            )
          ],
        ),
      ),
    );
  }
}
