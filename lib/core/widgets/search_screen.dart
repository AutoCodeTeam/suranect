import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class DataSearch extends SearchDelegate<String> {
  final List<ListWords> listWords;

  DataSearch({
    required this.listWords,
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
        ? listWords
        : listWords
            .where((p) =>
                p.titlelist.contains(RegExp(query, caseSensitive: false)))
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text(listWords[index].titlelist),
        subtitle: Text(listWords[index].definitionlist),
      ),
      itemCount: suggestionList.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? listWords
        : listWords
            .where((p) =>
                p.titlelist.contains(RegExp(query, caseSensitive: false)))
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {},
        trailing: const Icon(Icons.remove_red_eye),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].titlelist.substring(0, query.length),
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text:
                        suggestionList[index].titlelist.substring(query.length),
                    style: const TextStyle(color: Colors.grey)),
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

List<ListWords> listWords = [
  ListWords('oneWord', 'OneWord definition'),
  ListWords('twoWord', 'TwoWord definition.'),
  ListWords('TreeWord', 'TreeWord definition'),
];

class ListWords {
  String titlelist;
  String definitionlist;

  ListWords(this.titlelist, this.definitionlist);
}
