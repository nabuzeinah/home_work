void main() {
  List<int> nums = [3, 4, 2];
  int target = 6;
  print(twoSum(nums, target));
}

List<int>? twoSum(List<int> nums, int target) {
  Map<int, int> mapOfNumbers = {};

  /*for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      sum = nums[j] + nums[i];
    //  print('nums[$i] + nums[$j]');
      if (sum == target) {
        return [i, j];
      }
    }
  }*/
  for (int i = 0; i < nums.length; i++) {
    mapOfNumbers[nums[i]] = i;
  }

  for (int i = 0; i < nums.length; i++) {
    var comp = target - nums[i];

    if ((mapOfNumbers.containsKey(comp)) && (mapOfNumbers[comp] != i)) {
      return [i, mapOfNumbers[comp]!];
    }
  }

  return [];
}
