void main() {
  int num = 10;
  print(isPalindrome(num));
}

bool isPalindrome(int x) {
  List<String> numList = x.toString().split('');
  if (numList[0] == '-') {
    return false;
  } else {
    int len = (numList.length / 2).ceil();
    for (int i = 0; i < len; i++) {
      int endIndex = numList.length - 1;
      if (numList[i] != numList[endIndex]) {
        return false;
      } else {
        numList.removeAt(endIndex);
      }
    }
  }

  return true;
}
