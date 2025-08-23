void main() {
  // Demonstrate var vs dynamic
  var x = 10;
  print(x); // var as int
 // x = 'Nidaa'; // show error that can't assign String to int
  print(x);

  // Demonstrate dynamic
  dynamic y = 20;
  print(y); // dynamic as int
  y = 'Nidaa'; // dynamic can change to String
  print(y);

  //create var greeting
  var greeting = 'Hi';
  print(greeting); // print greeting as String
  greeting = 'Hello'; // change greeting to another String
  print(greeting); // print updated greeting

  // Declare num pi
  num pi = 3.14159;
  print(pi.toInt()); // print pi as int
  print(pi.toStringAsFixed(3)); // print pi as String with 3 decimal places
}
