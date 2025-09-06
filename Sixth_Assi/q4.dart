/*Q4. Simple List Analyzer 
- Let the user enter 5 numbers into a list. 
- Print the largest and smallest numbers, and then calculate the difference between them*/

import 'dart:io';

void main() {
  List<int> numbers = [];
  int largestNumber = 0;
  int smallNumber = 0;
  int num;
  for (int i = 0; i < 5; i++) {
    print('Enter your number');
    num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
    if (i == 0) {
      largestNumber = num;
      smallNumber = num;
    }
    if (num > largestNumber) {
      largestNumber = num;
    }
    if (num < smallNumber) {
      smallNumber = num;
    }
  }
  print(numbers);
  print('The smallest number is $smallNumber');
  print('The largest number is $largestNumber');
  print('The difference between them is ${largestNumber- smallNumber}');
}
