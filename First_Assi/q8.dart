void main() {
  double firstNum = 10;
  double secondNum = 20;
  double addResult = firstNum + secondNum; // addition
  double subResult = secondNum - firstNum; //  subtraction
  double mulResult = firstNum * secondNum; // multiplication
  double divResult = secondNum / firstNum; // division
  double modResult = secondNum % firstNum; //modulo

  // print the results
  print('$secondNum + $firstNum = $addResult');
  print('$secondNum - $firstNum = $subResult');
  print('$secondNum * $firstNum = $mulResult');
  print('$secondNum / $firstNum = $divResult');
  print('$secondNum % $firstNum = $modResult');
}
