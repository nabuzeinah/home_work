/* Q3. Word Reversal & Vowel Count 
- Take a word from the user. 
- Print the word reversed, and also count how many vowels it has.
 */

import 'dart:io';

void main() {
  String str;
  List<String> vowels = ['a', 'o', 'e', 'i', 'u'];
  int count = 0;
  print('Enter your string');
  str = stdin.readLineSync()!;
  var strList = str.split('').reversed;
  print(strList.join());

  for (var char in strList) {
    if (vowels.contains(char)) {
      count++;
    }
  }

  print('Your string has $count vowels');
}
