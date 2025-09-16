void main() {
  String s = '([)]';
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int order = 0;
  bool isValid = true;

  List<String> strList = s.split('');
  print(strList);

  for (int i = 0; i < strList.length; i++) {
    switch (strList[i]) {
      case '[':
        count1++;
        order = 1;
      case ']':
        if (count1 != 0) {
          count1 = 0;
        } else {
          isValid = false;
          break;
        }

      case '(':
        count2++;
        order = 2;
      case ')':
        if (count2 != 0) {
          count2 = 0;
        } else {
          isValid = false;
          break;
        }

      case '{':
        count3++;
        order = 3;
      case '}':
        if (count3 != 0) {
          count3 = 0;
        } else {
          isValid = false;
          break;
        }
    }
  }
  if (isValid) {
    print('Valid');
  } else {
    print('Invalid');
  }
}
