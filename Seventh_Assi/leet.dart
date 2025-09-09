/*Given an integer array nums,
 return true if any value appears at least twice in the array, 
 and return false if every element is distinct.*/

void main() {
  print(containsDuplicate([1, 2, 3, 4]));
}

bool containsDuplicate(List<int> nums) {
  Map<int, int> numsCount = {};
  for (var num in nums) {
    if (numsCount[num] == null) {
      numsCount[num] = 1;
    } else {
      return true;
    }
  }

    return false;
}
