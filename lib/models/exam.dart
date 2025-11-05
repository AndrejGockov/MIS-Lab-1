class Exam{
  String name;
  DateTime dateTime;
  List<String> locations;
  late bool examIsOver = dateTime.isBefore(DateTime.now());

  Exam({
    required this.name,
    required this.dateTime,
    required this.locations
  });

  String getDate(){
    return dateTime.day.toString() + "." + dateTime.month.toString() + "." + dateTime.year.toString();
  }

  // Gets remaining time in "x денови, y часа" format
  String getRemainingTime() {
    final now = DateTime.now();
    final diff = dateTime.difference(now);

    if (diff.isNegative) return "Испитот е завршен";

    final days = diff.inDays;
    final hours = diff.inHours % 24;
    return "$days дена, $hours часа преостануваат";
  }
}