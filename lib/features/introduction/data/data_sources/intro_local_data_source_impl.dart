import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/features/introduction/data/data_sources/intro_local_data_source.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:suranect/features/introduction/domain/entities/intro.dart';

class IntroLocalDataSourceImpl extends IntroLocalDataSource {
  final _kIntroBox = 'intro_box';

  @override
  Future<bool> initDb() async {
    try {
      if (!foundation.kIsWeb) {
        final appDocumentDir = await getApplicationDocumentsDirectory();
        Hive.init(appDocumentDir.path);
      }
      Hive.registerAdapter(IntroAdapter());
      await Hive.openBox<Intro>(_kIntroBox);
      return true;
    } catch (_) {
      throw ConnectionException();
    }
  }

  @override
  Future<bool> isIntro() async{
    try {
      final introBox = Hive.box<Intro>(_kIntroBox);
      return introBox.values.first.isIntro;
    } catch (_) {
      throw ConnectionException();
    }
  }

  @override
  Future<bool> doneIntro(bool status) async {
    try {
      final introBox = Hive.box<Intro>(_kIntroBox);
      final convertedTask = Intro(isIntro: status);
      await introBox.add(convertedTask);
      return Future.value(true);
    } catch (_) {
      throw ConnectionException();
    }
  }
}
