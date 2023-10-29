extension TerbilangExtension on int {
  String toTerbilang() {
    final satuan = [
      "",
      "SATU",
      "DUA",
      "TIGA",
      "EMPAT",
      "LIMA",
      "ENAM",
      "TUJUH",
      "DELAPAN",
      "SEMBILAN"
    ];
    final belasan = [
      "",
      "SEBELAS",
      "DUA BELAS",
      "TIGA BELAS",
      "EMPAT BELAS",
      "LIMA BELAS",
      "ENAM BELAS",
      "TUJUH BELAS",
      "DELAPAN BELAS",
      "SEMBILAN BELAS"
    ];
    final puluhan = [
      "",
      "SEPULUH",
      "DUA PULUH",
      "TIGA PULUH",
      "EMPAT PULUH",
      "LIMA PULUH",
      "ENAM PULUH",
      "TUJUH PULUH",
      "DELAPAN PULUH",
      "SEMBILAN PULUH"
    ];
    final ribuan = ["", "RIBU", "JUTA", "MILYAR", "TRILYUN"];

    String konversi(int angka, int ribuanIndex) {
      if (angka == 0) {
        return "";
      }
      String s = "";
      if (angka ~/ 100 > 0) {
        s += "${satuan[angka ~/ 100]} RATUS ";
        angka %= 100;
      }
      if (10 <= angka && angka <= 19) {
        s += "${belasan[angka - 10]} ";
      } else {
        s += "${puluhan[angka ~/ 10]} ${satuan[angka % 10]} ";
      }
      if (s != "") {
        s += "${ribuan[ribuanIndex]} ";
      }
      return s;
    }

    String result = "";
    int angka = this;
    for (int ribuanIndex = 0; ribuanIndex < ribuan.length; ribuanIndex++) {
      int segment = angka % 1000;
      if (segment > 0) {
        result = konversi(segment, ribuanIndex) + result;
      }
      angka ~/= 1000;
      if (angka == 0) {
        break;
      }
    }

    return result.trim();
  }
}
