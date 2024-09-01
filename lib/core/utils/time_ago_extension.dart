extension TimeAgoExtension on String {
  static String displayTimeAgoFromTimestamp(String timestamp) {
    final year = int.parse(timestamp.substring(0, 4));
    final month = int.parse(timestamp.substring(5, 7));
    final day = int.parse(timestamp.substring(8, 10));
    final hour = int.parse(timestamp.substring(11, 13));
    final minute = int.parse(timestamp.substring(14, 16));

    final DateTime date = DateTime(year, month, day, hour, minute);
    final int diffInHours = DateTime.now().difference(date).inHours;

    String timeAgo = '';
    String timeUnit = '';
    int timeValue = 0;

    if (diffInHours < 1) {
      final diffInMinutes = DateTime.now().difference(date).inMinutes;
      timeValue = diffInMinutes;
      timeUnit = 'Menit';
    } else if (diffInHours < 24) {
      timeValue = diffInHours;
      timeUnit = 'Jam';
    } else if (diffInHours >= 24 && diffInHours < 24 * 7) {
      timeValue = (diffInHours / 24).floor();
      timeUnit = 'Hari';
    } else if (diffInHours >= 24 * 7 && diffInHours < 24 * 30) {
      timeValue = (diffInHours / (24 * 7)).floor();
      timeUnit = 'Minggu';
    } else if (diffInHours >= 24 * 30 && diffInHours < 24 * 12 * 30) {
      timeValue = (diffInHours / (24 * 30)).floor();
      timeUnit = 'Bulan';
    } else {
      timeValue = (diffInHours / (24 * 365)).floor();
      timeUnit = 'Tahun';
    }

    timeAgo = '$timeValue $timeUnit';
    // timeAgo += timeValue > 1 ? 's' : '';

    return '$timeAgo yang lalu';
  }
}