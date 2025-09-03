void main() {
  List<int> nums = [3, 2, 4];
  int target =6;
  print(twoSum(nums, target));
}

List<int>? twoSum(List<int> nums, int target) {
  int sum = 0;

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      sum = nums[j] + nums[i];
    //  print('nums[$i] + nums[$j]');
      if (sum == target) {
        return [i, j];
      }
    }
  }
}
