void main() {
  printPartyCategory(7, [2, 3, 4, 5, 5, 7, 77]);
}

void printPartyCategory(int i, List<int> list) {
  if (list.toSet().length == list.length) print("GIRLS");
  else
  print("BOYS");
}
