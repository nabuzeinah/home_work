/*Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list*/

import 'dart:io';

void main(){
   print("Enter integers separated by spaces: ");
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  // Largest and smallest numbers
  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  int difference = largest - smallest;

  print("Largest number: $largest");
  print("Smallest number: $smallest");
  print("Difference: $difference");

  // Average of the list
  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print("Average: $average");

  // Numbers above average
  List<int> aboveAverage = numbers.where((n) => n > average).toList();
  print("Numbers above average: $aboveAverage");

  // Count even and odd numbers
  int evenCount = numbers.where((n) => n % 2 == 0).length;
  int oddCount = numbers.where((n) => n % 2 != 0).length;

  print("Even numbers count: $evenCount");
  print("Odd numbers count: $oddCount");
}