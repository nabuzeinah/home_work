/* Q3
 Given an array of integers nums sorted in ascending order, and an integer target, write a function to search target in nums.
 - If target exists, return its index. Otherwise, return -1.
 - The algorithm must run in O(log n) time complexity.
 Examples:- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
 Explanation: 9 exists in nums and its index is 4.
 - Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
 Explanation: 2 does not exist in nums, so return -1*/

void main() {
  List<int> nums = [-1, 0,1,2, 3, 5, 9, 12];
  int target = 2;
  print(search(nums, target));
}

int search(List<int> nums, int target) {
  if (target == nums[nums.length ~/ 2]) {
    return nums.length ~/ 2;
  }
  else if (target < nums[nums.length ~/ 2]) {
    for (int i = 0; i < nums.length / 2; i++) {
      if (nums[i] == target) {
        return i;
      }
    }
  }else{
    for (int i = nums.length ~/ 2; i < nums.length; i++) {
      if (nums[i] == target) {
        return i;
      }
    }
  }
  return -1;
}
