enum PAGES {
  splash,
  introduction,
  login,
  verifyOTP,
  register,
  mainTab,
  home,
  activity,
  notification,
  profile,
  layananPublik,
  berita,
  error,
}

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.splash:
        return "/";
      case PAGES.introduction:
        return "/introduction";
      case PAGES.login:
        return "/login";
      case PAGES.register:
        return "/register";
      case PAGES.verifyOTP:
        return "/verify_otp";
      case PAGES.mainTab:
        return "/main_tab";
      case PAGES.home:
        return "/home";
      case PAGES.activity:
        return "/activity";
      case PAGES.notification:
        return "/notification";
      case PAGES.profile:
        return "/profile";
      case PAGES.layananPublik:
        return "/layanan_publik";
      case PAGES.berita:
        return "/berita";
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
      case PAGES.login:
        return "LOGIN";
      case PAGES.register:
        return "REGISTER";
      case PAGES.verifyOTP:
        return "VERIFY_OTP";
      case PAGES.mainTab:
        return "MAINTAB";
      case PAGES.home:
        return "HOME";
      case PAGES.profile:
        return "PROFILE";
      case PAGES.activity:
        return "ACTIVITY";
      case PAGES.notification:
        return "NOTIFICATION";
      case PAGES.layananPublik:
        return "LAYANAN_PUBLIK";
      case PAGES.berita:
        return "BERITA";
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
      case PAGES.login:
        return "Masuk";
      case PAGES.register:
        return "Daftar";
      case PAGES.verifyOTP:
        return "Verifikasi Email";
      case PAGES.mainTab:
        return "Main Tab";
      case PAGES.home:
        return "Beranda";
      case PAGES.profile:
        return "Profile";
      case PAGES.activity:
        return "Aktivitas";
      case PAGES.notification:
        return "Notifikasi";
      case PAGES.layananPublik:
        return "Layanan Publik";
      case PAGES.berita:
        return "Berita";
      case PAGES.error:
        return "Error";
      default:
        return "Home";
    }
  }
}
