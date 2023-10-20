import 'package:flutter/material.dart';
import 'package:suranect/app/routes/app_router.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  BaseAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: AppRouter.router.canPop()
          ? IconButton(
              onPressed: () {
                AppRouter.router.pop();
              },
              icon: const Icon(Icons.chevron_left),
            )
          : const SizedBox.shrink(),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(fontWeight: FontWeight.w600),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
