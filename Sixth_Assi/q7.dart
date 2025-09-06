/* Q7. Sentence Word Counter
 - Ask the user for a short sentence. 
 - Print how many words it contains and how many characters (excluding spaces)
 */

import 'dart:io';

void main() {
  String sent;

  print('Enter your sentence');
  sent = stdin.readLineSync()!;
  List<String> senList = sent.split(' ');
  print('Number of words are ${senList.length}');
  print('Number of characters are ${senList.join().length}');
}
