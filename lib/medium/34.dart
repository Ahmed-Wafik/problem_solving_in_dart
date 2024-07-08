//https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description
class Solution {
  List<int> searchRange(List<int> nums, int target) {
    if (nums.isEmpty) return [-1, -1];
    if (nums.length == 1 && nums.first == target) return [0, 0];

    int low = 0;
    int high = nums.length - 1;

    while (low <= high) {
      int mid = low + (high - low) ~/ 2;
      if (nums[mid] == target) {
        // set end position
        int start = getStartPosition(nums, mid, target);
        int end = getEndPosition(nums, mid, target);
        return [start, end];
      } else if (nums[mid] < target) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
    return [-1, -1];
  }

  int getStartPosition(List<int> nums, int index, int target) {
    for (int i = index; i >= 0; i--) {
      if (nums[i] != target) return i + 1;
    }
    return 0;
  }

  int getEndPosition(List<int> nums, int index, int target) {
    for (int i = index; i < nums.length; i++) {
      if (nums[i] != target) return i - 1;
    }
    return nums.length - 1;
  }
}
