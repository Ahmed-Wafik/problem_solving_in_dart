import 'dart:math';

import 'package:problem_solving_in_dart/helpers/helpers.dart';

class Solution {
  // Time Complexity O((n^2))
  // Space complexity O(1)
  int getCommon(List<int> nums1, List<int> nums2) {
    int common = double.maxFinite.toInt();

    for (var i = 0; i < nums1.length; i++) {
      for (var j = 0; j < nums2.length; j++) {
        if (nums1[i] == nums2[j]) {
          common = min(nums1[i], common);
        }
      }
    }
    return common;
  }
  // Time Complexity O((nlog(n))
  // Space complexity O(1)

  int getCommon2(List<int> nums1, List<int> nums2) {
    for (var i = 0; i < nums1.length; i++) {
      if (Helpers.binarySearch(nums2, nums1[i]) != -1) {
        return nums1[i];
      }
    }
    return -1;
  }

  // Time Complexity O(n)
  // Space complexity O(n)
  int getCommon3(List<int> nums1, List<int> nums2) {
    final set = <int>{};
    set.addAll(nums1);
    for (var i = 0; i < nums2.length; i++) {
      if (set.contains(nums2[i])) {
        return nums2[i];
      }
    }
    return -1;
  }

  // Time Complexity O(n)
  // Space complexity O(1)
  int getCommon4(List<int> nums1, List<int> nums2) {
    int first = 0;
    int second = 0;
    while (first <= nums1.length - 1 && second <= nums2.length - 1) {
      if (nums1[first] == nums2[second]) {
        return nums1[first];
      } else if (nums1[first] < nums2[second]) {
        first++;
      } else {
        second++;
      }
    }
    return -1;
  }
}
