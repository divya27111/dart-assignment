void main() {
  List<String> arr= "2 3 4 5 5 7 77".split("");
  printPartyCategory(7, arr);
}

void printPartyCategory(int i, List<String> list) {
  if (list.toSet().length == list.length) print("GIRLS");
  else
  print("BOYS");
}
