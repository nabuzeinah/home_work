/*Q10
Create a function that takes an integer n and returns the sum of all numbers from 1 to n. Print the
returned value.
*/

void main() {
  int n = 5;
  int result = sumNumbers(n);
  print('The sum of numbers from 1 to $n is $result');
}

int sumNumbers(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}