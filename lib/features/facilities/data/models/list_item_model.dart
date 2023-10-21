import 'package:suranect/app/routes/route_utils.dart';

class ListItem {
  final String iconItem;
  final PAGES page;
  final String subtitle;

  const ListItem({
    required this.page,
    required this.iconItem,
    required this.subtitle
  });
}