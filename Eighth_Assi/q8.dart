/* Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
 print the total count of unique words
*/

import 'dart:io';

void main() {
  String sent;
  print('Enter a sentence');
  sent = stdin.readLineSync()!;
  List<String> senList = sent.split(' ');

    Map<String, int> wordCounts = {};
  for (var word in senList) {
    wordCounts[word] = (wordCounts[word] ?? 0) + 1;
  }

  List<String> uniqueWords = wordCounts.entries
      .where((entry) => entry.value == 1)
      .map((entry) => entry.key)
      .toList();
  
  print("Words that appear only once: $uniqueWords");
  print("Total count of unique words: ${uniqueWords.length}");
}
