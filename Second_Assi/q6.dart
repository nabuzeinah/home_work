
void main() {
  List<String> animals = ['cat', 'dog', 'rabbit'];

  // Add a new animal
  animals.add('fish');

  // Remove the last animal
  animals.removeLast();

  // Update the second element
  animals[1] = 'bird';

  // Print first, last, and length of the list
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
