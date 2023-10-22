import 'package:flutter/material.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_body_page.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          PAGES.notification.screenTitle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: BaseBodyPage(
        children: [
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                top: index == 0 ? 18 : 0,
                bottom: index == 9 ? 18 : 0,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      AppShadow.sShadow,
                    ]),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 10,
                          backgroundImage:
                              AssetImage("assets/images/suranect_profile.png"),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "@admin-suranect",
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Selamat memperingati Maulid Nabi Muhammad Saw. 12 Rabiul Awal 1445 H",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "2 Jam yang lalu",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 10,
          )
        ],
      ),
    );
  }
}
