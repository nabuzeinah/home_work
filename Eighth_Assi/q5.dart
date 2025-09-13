/*Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
 courses: one with custom duration and one with the default. Print both.
*/
void main() {
  Course dS = Course('Data Structure', '4 months');
  dS.PrintData();
  Course threeD = Course('3D Printing');
  threeD.PrintData();
}

class Course {
  String? title;
  String? duration;

  Course(String title, [String duration = '3 months']) {
    this.title = title;
    this.duration = duration;
  }

  void PrintData() {
    print('Course: $title, Duration: $duration');
  }
}
