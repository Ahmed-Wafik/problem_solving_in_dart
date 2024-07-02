// https://leetcode.com/problems/find-the-number-of-good-pairs-i/description/
class Solution {
  int numberOfPairs(List<int> nums1, List<int> nums2, int k) {
    int goodPairs = 0;

    for (int i = 0; i < nums1.length; i++) {
      for (int j = 0; j < nums2.length; j++) {
        if (nums1[i] % (nums2[j] * k) == 0) {
          goodPairs++;
        }
      }
    }
    return goodPairs;
  }
}
