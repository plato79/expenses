extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return this.year == other.year &&
        this.month == other.month &&
        this.day == other.day;
  }

  DateTime oneWeekAgo() {
    return this.subtract(Duration(days: 7));
  }
}
