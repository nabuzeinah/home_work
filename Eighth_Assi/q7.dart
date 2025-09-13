/*Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
 */
import 'dart:io';

void main() {
  int number;
  print('Enter a number');
  number = int.parse(stdin.readLineSync()!);


    // Keep summing digits until single digit
    while (number >= 10) {
      int sum = 0;
      while (number > 0) {
        sum += number % 10;
        number ~/= 10;
      }
      number = sum;
    }

    print("Final single-digit result: $number");
  
}
