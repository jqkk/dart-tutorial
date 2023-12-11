multiply({
  required int a,
  required int b,
}) {
  return a * b;
}

addDay({
  required DateTime date,
  int day = 1,
}) {
  return date.add(Duration(days: day));
}

void main() {
  print(multiply(a: 10, b: 20));
  final currentDate = DateTime.now();
  final tomorrow = addDay(date: currentDate, day: 1);
  print(tomorrow);
}
