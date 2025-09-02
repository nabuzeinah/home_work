/*Q2
Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers.*/

void main() {
  List<int> nums = [5, 10, 15, 20, 25];
  int sum = 0;
  for (var num in nums) {
    sum += num;
  }
  if (!nums.isEmpty) {
    double avg = sum / nums.length;
      print('The average is $avg');
  }

}
