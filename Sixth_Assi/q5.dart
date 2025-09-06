/*Q5. Multiplication Table with Sum 
- Ask the user for a number. 
- Print its multiplication table up to  10, then calculate the sum of all results
 */
import 'dart:io';

void main() {
  int num;
  print('Enter a number');
  num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int res;
  for (int i = 1; i <= 10; i++) {
    res = i * num;
    print(res);
    sum += res;
  }

  print(sum);
}
