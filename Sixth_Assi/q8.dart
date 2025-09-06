/* Q8. Digits Operations 
- Ask the user for a number (e.g., 528). 
- Print the sum of its digits and also print the largest digit
 */

import 'dart:ffi';
import 'dart:io';

void main() {
  String number;
  var numList;
  int largestNumber = 0;
  print('Enter a number');
  number = stdin.readLineSync()!;
  numList = number.split('');
  print('Your number has ${numList.length} digits');
  for (var num in numList) {
    if (int.parse(num.toString()) > largestNumber) {
      largestNumber = int.parse(num.toString());
    }
  }

  print('Your largest digit is $largestNumber');
}
