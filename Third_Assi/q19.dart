/* Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.*/

void main() {
  List<String> names = [
    'Nidaa',
    'Ahmad',
    'Sana',
    'Ali',
    'Nidaa',
    'Sana',
    'Nidaa'
  ];
  Set<String> uniqueNames = names.toSet();
  Map<String, int> nameCounts = {'Nidaa': 3, 'Ahmad': 1, 'Sana': 2, 'Ali': 1};

  if (names.length > uniqueNames.length) {
    print("There are duplicate names in the list.");
  }
  print("Name Counts: $nameCounts");
}
