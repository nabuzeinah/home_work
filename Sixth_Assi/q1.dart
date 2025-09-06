/*Q1. Sum, Average & Compare
 - Ask the user for three numbers. 
 - Print their sum and average.
 Then, check if the average is greater than 50 or not.
 */

import 'dart:io';

void main() {
  double firstNumber;
  double secNumber;
  double thirNumber;
  double sum;
  double average;
  print('Enter first number');
  firstNumber = double.parse(stdin.readLineSync()!);
  print('Enter second number');
  secNumber = double.parse(stdin.readLineSync()!);
  print('Enter third number');
  thirNumber = double.parse(stdin.readLineSync()!);
  sum = firstNumber + secNumber + thirNumber;
  average = sum / 3;
  print('Your sum is $sum and your average is $average');

  if (average > 50) {
    print('Your average is larger than 50');
  } else {
    print('Your average is smaller than 50');
  }
}
