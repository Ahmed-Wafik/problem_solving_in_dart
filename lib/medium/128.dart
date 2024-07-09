//https://leetcode.com/problems/longest-consecutive-sequence/
import 'dart:math';

class Solution {
  int longestConsecutive(List<int> nums) {
    if (nums.isEmpty) return 0;

    final result = <int>{};

    int length = nums.length;

    for (int element in nums) {
      if (element <= length) {
        result.add(element);
      }
    }
    final list = result.toList()..sort();

    int consecutiveNumberCount = 0;
    int maxConsecutiveNumberCount = 0;

    for (int i = list.length - 1; i >= 0; i--) {
      if ((i - 1) < 0) break;

      if (list[i] - 1 == list[i - 1]) {
        consecutiveNumberCount++;
      } else {
        consecutiveNumberCount = 0;
      }
      maxConsecutiveNumberCount =
          max(maxConsecutiveNumberCount, consecutiveNumberCount);
    }
    return maxConsecutiveNumberCount + 1;
  }
}
