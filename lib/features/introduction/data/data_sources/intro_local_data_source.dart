abstract class IntroLocalDataSource {
  Future<bool> initDb();
  Future<bool> doneIntro(bool status);
  Future<bool> isIntro();
}