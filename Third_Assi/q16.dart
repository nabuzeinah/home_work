/* Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.*/

void main() {
  int a = 5;
  int b = 10;
  int c = 15;

  bool expr1 = (a < b) && (a < c);
  bool expr2 = (a + b) == c;
  bool expr3 = (c - a) > b;
  bool expr4 = (a > c) || (b > c);

  print("Expression 1: $expr1");
  print("Expression 2: $expr2");
  print("Expression 3: $expr3");
  print("Expression 4: $expr4");

  if (expr1) {
    print("Rule passed");
  } else {
    print("Rule failed");
  }
}
