/* Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
*/

void main() {
  List<int>? scores = [5, 10, 6, 10, 50];
  if (scores == null || scores.isEmpty) {
    print('No scores found');
  } else {
    print(scores.first +
        scores.last); //print the sum of the first and last elements
    if ((scores.first + scores.last) >= 40) {
      print(
          "The sum of first and last elements is greater than or equal to 40");
    }
  }
}
