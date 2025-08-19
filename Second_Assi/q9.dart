void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Ahmad', 'grade': 85},
    {'name': 'Ali', 'grade': 90}
  ];

  // Print the grade of the second student
  print(students[1]['grade']);

  // Calculate and print the average grade
  num grades =
      students[0]['grade'].toDouble() + students[1]['grade'].toDouble();
  ;
  print(grades);
  double averageGrade = grades / 2;
  print(averageGrade);
}
