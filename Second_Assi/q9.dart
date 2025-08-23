void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Ahmad', 'grade': 85},
    {'name': 'Ali', 'grade': 90}
  ];

  // Print the grade of the second student
  print(students[1]['grade']);

  // Calculate and print the average grade
  var grades =
      students[0]['grade'] + students[1]['grade'];
  ;
  print(grades);
  double averageGrade = grades / 2;
  print(averageGrade);
}
