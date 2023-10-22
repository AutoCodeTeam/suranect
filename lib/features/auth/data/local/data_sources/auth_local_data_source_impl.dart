import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:suranect/core/error/exceptions.dart';
import 'package:suranect/features/auth/data/local/data_sources/auth_local_data_source.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:suranect/features/auth/data/local/models/token_auth.dart';

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final _kIntroBox = 'auth_box';

  @override
  Future<bool> initDb() async {
    try {
      if (!foundation.kIsWeb) {
        final appDocumentDir = await getApplicationDocumentsDirectory();
        Hive.init(appDocumentDir.path);
      }
      Hive.registerAdapter(TokenAuthAdapter());
      await Hive.openBox<TokenAuth>(_kIntroBox);
      return true;
    } catch (_) {
      throw ConnectionException();
    }
  }

  @override
  Future<String> getToken() async {
    try {
      final authBox = Hive.box<TokenAuth>(_kIntroBox);
      return authBox.values.first.token;
    } catch (_) {
      return "";
    }
  }

  @override
  Future<bool> saveToken(String token) async {
    try {
      final authBox = Hive.box<TokenAuth>(_kIntroBox);

      final convertedTask = TokenAuth(token: token);
      await authBox.add(convertedTask);
      return Future.value(true);
    } on HiveError catch (error) {
      print('Hive error: $error');
      throw ConnectionException();
    } catch (error) {
      print('An unexpected error occurred: $error');
      throw ConnectionException();
    }
  }

  @override
  Future<bool> deleteToken() async {
    final authBox = Hive.box<TokenAuth>(_kIntroBox);

    if (authBox.isNotEmpty) {
      await authBox.deleteAt(0);
      return true;
    }

    return false;
  }
}
