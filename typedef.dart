int multiply(int x, int y) {
  return x * y;
}

typedef CalculateOperationType = int Function(int x, int y);

int calculate(int x, int y, CalculateOperationType operation) {
  return operation(x, y);
}

void main() {
  final result = calculate(10, 20, multiply);
  print(result);
}
