/*Q4
Create a program with a map of student names to their marks. Print the name of the student with
the highest mark.
*/

void main() {
  Map<String, int> students = {
    'Ahmad': 95,
    'Ali': 85,
    'Omar': 90,
    'Sara': 70,
    'Sana': 98,
  };

  int highestMark = students.values.first;
  String studentWithHighestMark = students.keys.first;

  for (var entry in students.entries) {
    if (entry.value > highestMark) {
      highestMark = entry.value;
      studentWithHighestMark = entry.key;
    }
  }

  print(
      'The student with the highest mark is $studentWithHighestMark with a mark of $highestMark');
}
