/* Q6. Sentence Analyzer 
- Ask the user to input a sentence. 
- Print how many words it contains. 
- Then print the shortest word and the longest word from the sentence*/
import 'dart:io';

void main() {
  String sentence;
  int shortestWordLength;
  String shortestWord;
  int longestWordLength;
  String longestWord;

  print('Enter a sentence');
  sentence = stdin.readLineSync()!;

  List<String> senList = sentence.split(' ');
  print('Your sentence contains ${senList.length} words');

  shortestWordLength = senList[0].length;
  shortestWord = senList[0];
  longestWordLength = senList[0].length;
  longestWord = senList[0];
  
  for (var sen in senList) {
    if (longestWordLength < sen.length) {
      longestWordLength = sen.length;
      longestWord = sen;
    }
    if (shortestWordLength > sen.length) {
      shortestWordLength = sen.length;
      shortestWord = sen;
    }

  }

  print('The shortest word is $shortestWord with $shortestWordLength chars');
  print('The Longest word is $longestWord with $longestWordLength chars');
}
