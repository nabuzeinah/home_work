void main() {
  List<int> nums = [0, 4, 3, 0];
  int target = 0;
  print(twoSum(nums, target));
}

List<int> twoSum(List<int> nums, int target) {
  int sum = 0;
  int index1 = 0;
  int index2 = 0;
  for (int i = 1; i < nums.length; i++) {
    for (int j = 0; j < i; j++) {
      sum = nums[i] + nums[j];
      print('${nums[j]} + ${nums[i]} = $sum');
      
      if ((index1 != index2 ) && (sum == target)) {
        index1 = j;
        index2 = i;
        break;
      } else {
        sum = 0;
      }
    }
    if ((index1 != index2) && (sum == target)) {
      break;
    }
  }

  return [index1, index2];
}
