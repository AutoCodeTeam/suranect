import 'package:hive/hive.dart';
part 'intro.g.dart';


@HiveType(typeId: 0)
class Intro {
  @HiveField(0)
  final bool isIntro;

  const Intro({
    required this.isIntro,
  });
}
