// https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description
class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int left = 0;
    int right = numbers.length - 1;
    while (left < right) {
      int sum = numbers[left] + numbers[right];
      if (sum == target) {
        return [left + 1, right + 1];
      }
      if (sum < target) {
        left++;
      } else {
        right--;
      }
    }
    return [];
  }

  List<int> twoSum2(List<int> numbers, int target) {
    for (var i = 0; i < numbers.length; i++) {
      for (var j = 0; j < numbers.length; j++) {
        if (numbers[i] + numbers[j] == target) {
          return [i + 1, j + 1];
        }
      }
    }
    return [0];
  }

  List<int> twoSum3(List<int> numbers, int target) {
    final map = <int, int>{};

    for (var i = 0; i < numbers.length; i++) {
      int remaining = target - numbers[i];
      if (map.containsKey(remaining)) {
        return [map[remaining]!, i + 1];
      } else {
        map[numbers[i]] = i + 1;
      }
    }
    return [0];
  }
}
