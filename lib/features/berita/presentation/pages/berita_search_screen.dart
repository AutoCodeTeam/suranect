import 'package:flutter/material.dart';
import 'package:suranect/app/routes/app_router.dart';
import 'package:suranect/app/routes/route_utils.dart';
import 'package:suranect/core/theme/app_colors.dart';
import 'package:suranect/features/berita/domain/entities/berita.dart';

class BeritaSearchScreen extends SearchDelegate {
  final List<Berita> beritas;

  BeritaSearchScreen({
    required this.beritas,
  });

  @override
  InputDecorationTheme? get searchFieldDecorationTheme => InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        fillColor: AppColors.neutral_30,
        filled: true,
      );

  @override
  String get searchFieldLabel => "Search";

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ? beritas
        : beritas
            .where((p) => p.title.contains(RegExp(query, caseSensitive: false)))
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          AppRouter.router.push(PAGES.beritaDetail.screenPath, extra: {
            "berita": suggestionList[index],
          });
        },
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].title.substring(0, query.length),
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text:
                    suggestionList[index].title.substring(query.length),
                    style: const TextStyle(color: Colors.grey)),
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? beritas
        : beritas
            .where((p) =>
                p.title.contains(RegExp(query, caseSensitive: false)))
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          AppRouter.router.push(PAGES.beritaDetail.screenPath, extra: {
            "berita": suggestionList[index],
          });
        },
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].title.substring(0, query.length),
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text:
                        suggestionList[index].title.substring(query.length),
                    style: const TextStyle(color: Colors.grey)),
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
