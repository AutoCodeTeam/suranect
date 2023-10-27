import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/core/theme/app_shadow.dart';
import 'package:suranect/core/widgets/base_body_page.dart';
import 'package:suranect/features/auth/presentation/controller/profile/profile_bloc.dart';
import 'package:suranect/features/profile/data/models/item_setting.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<ItemSetting> itemSettings = [
    const ItemSetting(title: "Pengaturan", icon: "assets/svg/setting_ic.svg"),
    const ItemSetting(title: "Pilih Bahasa", icon: "assets/svg/global_ic.svg"),
    const ItemSetting(
        title: "Notifikasi",
        icon: "assets/svg/notification-status-outline_ic.svg"),
  ];
  final List<ItemSetting> informationSettings = [
    const ItemSetting(
        title: "Kebijakan Privasi", icon: "assets/svg/shield-tick_ic.svg"),
    const ItemSetting(
        title: "Tentang Suranect", icon: "assets/svg/info-circle_ic.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          PAGES.profile.screenTitle,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: BaseBodyPage(
        children: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      AppShadow.sShadow,
                    ]),
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage("assets/images/suranect_profile.png"),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: AppColors.info_40,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(6),
                          child: SvgPicture.asset(
                            "assets/svg/edit_ic.svg",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Suranect",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          "@suranect",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        context
                            .read<ProfileBloc>()
                            .add(const ProfileEvent.loggedOut());
                      },
                      icon: SvgPicture.asset(
                        "assets/svg/logout_ic.svg",
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: Text(
                "Pengaturan Aplikasi",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom:
                    index == itemSettings.indexOf(itemSettings.last) ? 18 : 0,
              ),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        itemSettings[index].icon,
                        height: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        itemSettings[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: itemSettings.length,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
              child: Text(
                "Informasi Lainnya",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: index ==
                        informationSettings.indexOf(informationSettings.last)
                    ? 18
                    : 0,
              ),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        informationSettings[index].icon,
                        height: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        informationSettings[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: informationSettings.length,
          ),
        ],
      ),
    );
  }
}
