/* Q6. Number Guessing (3 Tries) 
- Generate a random number between 1 and 20. 
- Let the user  guess up to 3 times. If they fail, reveal the correct number
 */
import 'dart:io';
import 'dart:math';

void main() {
  int randomNum = Random().nextInt(10) + 1;
  int guessNum;
  bool isCorrect = false;
  for (int i = 0; i < 3; i++) {
    print('Guess the random number');
    guessNum = int.parse(stdin.readLineSync()!);
    if (randomNum != guessNum) {
      print('Wrong Answer .. Try Again!');
    } else {
      print('Correct .. the number is $randomNum');
      isCorrect = true;
      break;
    }
  }
  if (!isCorrect) {
    print('The random number is $randomNum .. Good Luck');
  }
}
