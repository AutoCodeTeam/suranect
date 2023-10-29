extension RatingExtension on double{
  String toTerbilang(){
    String rating = "";

    if (this >= 4.5) {
      rating = "Sangat Bagus";
    } else if (this >= 4) {
      rating = "Bagus";
    } else if (this >= 3.5) {
      rating = "Cukup Bagus";
    } else if (this >= 3) {
      rating = "Lumayan";
    } else {
      rating = "Kurang Bagus";
    }

    return rating;
  }
}