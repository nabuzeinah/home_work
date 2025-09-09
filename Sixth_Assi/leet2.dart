void main() {
  String str = "race a car";
  print(isPalindrome(str));
}

bool isPalindrome(String s) {
  String formatStr = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  var reversedStr = formatStr.split('').reversed.join();
  if (formatStr == reversedStr) {
    return true;
  } else {
    return false;
  }
}
