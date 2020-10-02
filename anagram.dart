import 'dart:io';

void main() {
  print('Enter two strings');
  String str1 = stdin.readLineSync();
  String str2 = stdin.readLineSync();
  if (isAnagram(str1, str2))
    print('${str1} and ${str2} is anagram');
  else
    print('${str1} and ${str2} is not anagram');
}

bool isAnagram(String str1, String str2) {
  if (str1.length != str2.length) return false;
  var xor = 0;
  for (int i = 0; i < str1.length; i++) {
    xor ^= str1.codeUnitAt(i) ^ str2.codeUnitAt(i);
  }
  if (xor == 0) return true;
  return false;
}
