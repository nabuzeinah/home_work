/*Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
*/

import 'dart:io';

void main() {
  double mark;
  String? grade;

  print('Enter your mark (1 - 100)');
  mark = double.parse(stdin.readLineSync()!);

  if (mark >= 90) {
    grade = "A";
  } else if (mark >= 80) {
    grade = "B";
  } else if (mark >= 70) {
    grade = "C";
  } else if (mark >= 60) {
    grade = "D";
  }

  switch (grade) {
    case "A":
      print("Excellent");
      break;
    case "B":
      print("Very Good");
      break;
    case "C":
      print("Good");
      break;
    case "D":
      print("Fair");
      break;
    default:
      print("Poor");
      break;
  }
}
