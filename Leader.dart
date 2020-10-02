void main() {
  var list = [300, 100, 50, 23, 30, 15, 19, 18, 5, 10, 2];
  int index = list.length - 1;
  print(list[index]);
  for (int i = index - 1; i >= 0; i--) {
    if (list[i] > list[index]) {
      index = i;
      print(list[index]);
    }
  }
}
