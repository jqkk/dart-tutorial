void main() {
  final numArray = new List.generate(10, (index) => index + 1);
  final sum = numArray.reduce((value, element) => value + element);
  final otherSum = numArray.reduce((value, element) {
    return value + element;
  });
  print(sum);
  print(otherSum);
}
