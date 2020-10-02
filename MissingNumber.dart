void main() {
  double n = 7;
  List<int> arr = [1, 4, 3, 6, 7, 2];
  print('missing numebr is ${missingNumber(n, arr).round()}');
}

double missingNumber(double n, List<int> arr) {
  double sum = (n * (n + 1)) / 2;
  double sumList = arr.fold(0, (a, b) => a + b);
  return sum - sumList;
}
