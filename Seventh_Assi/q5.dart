/*Q5. Find Second Largest Number 
- Ask the user to enter 6 numbers in a list. 
- Print the largest number and the second largest number (without sorting the list)
 */

import 'dart:io';

void main() {
  List<int> numbers = [];
  int number;
  int largestNumber = 0;
  int secLargestNumber = 0;
  for (int i = 0; i < 6; i++) {
    print('Enter a number');
    number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
    if (i == 0) {
      largestNumber = number;
      secLargestNumber = number;
    }
    if (number > largestNumber) {
      int temp = largestNumber;      
      largestNumber = number;
      if (temp > secLargestNumber) {
        secLargestNumber = temp;
      }
    }
  }
  print(numbers);
  print('Largest Number is $largestNumber');
 print('Second Largest is $secLargestNumber');
}
