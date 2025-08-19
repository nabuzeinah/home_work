void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];

  // Convert the list to Set to remove duplicates
  Set<int> uniqueNumbers = numbers.toSet();
  print(uniqueNumbers);

  // Add a new number
  uniqueNumbers.add(9);
  print(uniqueNumbers);

  // Remove a number
  uniqueNumbers.remove(4);
  print(uniqueNumbers);

  // Check if a number is contained in the set
  print(uniqueNumbers.contains(5));
}
