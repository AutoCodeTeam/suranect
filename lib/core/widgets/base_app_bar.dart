import 'package:flutter/material.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/core/widgets/search_screen.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isCenterTitle;
  final SearchDelegate? searchDelegate;
  final bool isShowSearch;

  const BaseAppBar({
    Key? key,
    required this.title,
    this.isCenterTitle = false,
    this.isShowSearch = false,
    this.searchDelegate,
  }) : super(key: key);

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
      actions: <Widget>[
        isShowSearch && searchDelegate != null
            ? IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: searchDelegate!);
                })
            : const SizedBox.shrink(),
      ],
      centerTitle: isCenterTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
