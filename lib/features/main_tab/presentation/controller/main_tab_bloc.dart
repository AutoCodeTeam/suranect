import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/main_tab/presentation/pages/main_tab.dart';

part 'main_tab_event.dart';

part 'main_tab_state.dart';

part 'main_tab_bloc.freezed.dart';

class MainTabBloc extends Bloc<MainTabEvent, MainTabState> {
  MainTabBloc()
      : super(
          MainTabState.tabIndex(
            index: 0,
            navbarItem: <MyCustomBottomNavBarItem>[
              MyCustomBottomNavBarItem(
                initialLocation: PAGES.home.screenPath,
                icon: SvgPicture.asset("assets/svg/home_ic.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/svg/home_ic.svg",
                  color: AppColors.blue_60,
                ),
                label: PAGES.home.screenTitle,
              ),
              MyCustomBottomNavBarItem(
                initialLocation: PAGES.activity.screenPath,
                icon: SvgPicture.asset("assets/svg/chart_ic.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/svg/chart_ic.svg",
                  color: AppColors.blue_60,
                ),
                label: PAGES.activity.screenTitle,
              ),
              MyCustomBottomNavBarItem(
                initialLocation: PAGES.notification.screenPath,
                icon: SvgPicture.asset("assets/svg/docs-dot_ic.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/svg/docs-dot_ic.svg",
                  color: AppColors.blue_60,
                ),
                label: PAGES.notification.screenTitle,
              ),
              MyCustomBottomNavBarItem(
                initialLocation: PAGES.profile.screenPath,
                icon: SvgPicture.asset("assets/svg/user-octagon_ic.svg"),
                activeIcon: SvgPicture.asset(
                  "assets/svg/user-octagon_ic.svg",
                  color: AppColors.blue_60,
                ),
                label: PAGES.profile.screenTitle,
              ),
            ],
          ),
        ) {
    on<MainTabEvent>((event, emit) {
      event.map(
        changedTab: (value) {
          AppRouter.router.go(state.navbarItem[value.index].initialLocation);

          emit(state.copyWith(index: value.index));
        },
      );
    });
  }
}
