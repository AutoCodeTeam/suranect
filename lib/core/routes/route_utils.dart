enum PAGES {
  splash,
  introduction,
  login,
  register,
  home,
  error,
}

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.splash:
        return "/";
      case PAGES.introduction:
        return "/introduction";
      case PAGES.home:
        return "/home";
      case PAGES.login:
        return "/login";
      case PAGES.register:
        return "/register";
      case PAGES.error:
        return "/error";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.splash:
        return "SPLASH";
      case PAGES.introduction:
        return "INTRODUCTION";
      case PAGES.home:
        return "HOME";
      case PAGES.login:
        return "LOGIN";
      case PAGES.register:
        return "/REGISTER";
      case PAGES.error:
        return "ERROR";
      default:
        return "HOME";
    }
  }

  String get screenTitle {
    switch (this) {
      case PAGES.splash:
        return "Splash";
      case PAGES.introduction:
        return "Introduction";
      case PAGES.home:
        return "Home";
      case PAGES.login:
        return "Masuk";
      case PAGES.register:
        return "Daftar";
      case PAGES.error:
        return "Error";
      default:
        return "Home";
    }
  }
}
