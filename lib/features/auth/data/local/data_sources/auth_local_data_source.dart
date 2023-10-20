abstract class AuthLocalDataSource {
  Future<bool> initDb();
  Future<bool> saveToken(String token);
  Future<String> getToken();
  Future<bool> deleteToken();
}