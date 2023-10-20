import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/main_tab/presentation/controller/main_tab_bloc.dart';

class MainTab extends StatefulWidget {
  final String path;
  final Widget child;

  const MainTab({super.key, required this.path, required this.child});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainTabBloc, MainTabState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            bottom: true,
            top: true,
            child: widget.child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.index,
            items: state.navbarItem,
            unselectedItemColor: AppColors.black,
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              context.read<MainTabBloc>().add(MainTabEvent.changedTab(index));
            },
          ),
        );
      },
    );
  }
}

class MyCustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const MyCustomBottomNavBarItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
    Widget? activeIcon,
  }) : super(
          icon: icon,
          label: label,
          activeIcon: activeIcon ?? icon,
        );
}
