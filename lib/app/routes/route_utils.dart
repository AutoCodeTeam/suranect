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
  wisata,
  umkm,
  event,
  takePhoto,
  reviewPhoto,
  reviewLaporan,
  laporan,
  peta,
  facilities,
  plat,
  pajakKendaraan,
  nop,
  pbb,
  beritaDetail,
  error,
  wisataDetail,
  eventDetail,
  petaDetail,
  about,
  umkmDetail,
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
      case PAGES.wisata:
        return "/wisata";
      case PAGES.umkm:
        return "/umkm";
      case PAGES.event:
        return "/event";
      case PAGES.takePhoto:
        return "/take_photo";
      case PAGES.reviewPhoto:
        return "/review_photo";
      case PAGES.reviewLaporan:
        return "/review_laporan";
      case PAGES.laporan:
        return "/laporan";
      case PAGES.peta:
        return "/peta";
      case PAGES.facilities:
        return "/facilities";
      case PAGES.plat:
        return "/plat";
      case PAGES.pajakKendaraan:
        return "/pajak_kendaraan";
      case PAGES.nop:
        return "/nop";
      case PAGES.pbb:
        return "/pbb";
      case PAGES.beritaDetail:
        return "/berita_detail";
      case PAGES.error:
        return "/error";
      case PAGES.wisataDetail:
        return "/wisata_detail";
      case PAGES.eventDetail:
        return "/event_detail";
      case PAGES.petaDetail:
        return "/peta_detail";
      case PAGES.about:
        return "/about";
      case PAGES.umkmDetail:
        return "/umkm_detail";
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
      case PAGES.wisata:
        return "WISATA";
      case PAGES.umkm:
        return "UMKM";
      case PAGES.event:
        return "EVENT";
      case PAGES.takePhoto:
        return "TAKE_PHOTO";
      case PAGES.reviewPhoto:
        return "REVIEW_PHOTO";
      case PAGES.reviewLaporan:
        return "REVIEW_LAPORAN";
      case PAGES.laporan:
        return "LAPORAN";
      case PAGES.peta:
        return "PETA";
      case PAGES.facilities:
        return "FACILITIES";
      case PAGES.plat:
        return "PLAT";
      case PAGES.pajakKendaraan:
        return "PAJAK_KENDARAAN";
      case PAGES.nop:
        return "NOP";
      case PAGES.pbb:
        return "PBB";
      case PAGES.beritaDetail:
        return "BERITA_DETAIL";
      case PAGES.error:
        return "ERROR";
      case PAGES.wisataDetail:
        return "WISATA_DETAIL";
      case PAGES.eventDetail:
        return "EVENT_DETAIL";
      case PAGES.petaDetail:
        return "PETA_DETAIL";
      case PAGES.about:
        return "ABOUT";
      case PAGES.umkmDetail:
        return "UMKM_DETAIL";
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
        return "Berita Terkini";
      case PAGES.wisata:
        return "Wisata Surabaya";
      case PAGES.umkm:
        return "UMKM Surabaya";
      case PAGES.event:
        return "Event Terbaru";
      case PAGES.takePhoto:
        return "Ambil Foto Laporan";
      case PAGES.reviewPhoto:
        return "Tinjau Foto";
      case PAGES.reviewLaporan:
        return "Tinjau Laporan";
      case PAGES.laporan:
        return "Laporan Warga";
      case PAGES.peta:
        return "Peta";
      case PAGES.facilities:
        return "Fasilitas Kota Surabaya";
      case PAGES.plat:
        return "Cek Pajak Motor Anda";
      case PAGES.pajakKendaraan:
        return "Pajak Kendaraan Bermotor";
      case PAGES.nop:
        return "Cek Pajak Tanah Anda";
      case PAGES.pbb:
        return "Pajak PBB";
      case PAGES.beritaDetail:
        return "Berita Detail";
      case PAGES.error:
        return "Error";
      case PAGES.wisataDetail:
        return "Wisata Detail";
      case PAGES.eventDetail:
        return "Event Detail";
      case PAGES.petaDetail:
        return "Peta Detail";
      case PAGES.about:
        return "Tentang Suranect";
        case PAGES.umkmDetail:
            return "Detail UMKM";
      default:
        return "Home";
    }
  }
}
