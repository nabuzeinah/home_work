/* Q1. Class with Method 
- Create a class Calculator with two attributes: num1 and num2. 
- Add a method addNumbers() that prints the sum of the two numbers. 
- Create an object in main() and call the method */

void main() {
  Calculator cal = Calculator();
  cal.num1 = 15;
  cal.num2 = 20;
  cal.addNumbers();
}

class Calculator {
  double? num1;
  double? num2;

  void addNumbers() {
    print('$num1 + $num2 = ${num1! + num2!}');
  }
}
