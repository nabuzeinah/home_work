/*Q9
Create a function that takes two integers as parameters and prints which one is larger.*/

void main() {
  int x = 10;
  int y = 20;
  printLarger(x, y);
}

void printLarger(int a, int b) {
  if (a > b) {
    print('$a is larger than $b');
  } else if (b > a) {
    print('$b is larger than $a');
  } else {
    print('$a and $b are equal');
  }
}