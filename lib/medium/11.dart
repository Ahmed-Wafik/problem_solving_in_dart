import 'dart:math';

/// https://leetcode.com/problems/container-with-most-water/description/
class Solution11 {
  // useing two for loop
  // O(n^2)
  int maxArea(List<int> height) {
    int maxArea = 0;
    for (var i = 0; i < height.length; i++) {
      for (var j = i + 1; j < height.length; j++) {
        maxArea = max(maxArea, _calculateArea(height, i, j));
      }
    }
    return maxArea;
  }

  // Using two pointer technique.
  // O(n)
  int maxArea2(List<int> height) {
    int left = 0, right = height.length - 1, maxArea = 0;

    while (left < right) {
      int area = _calculateArea(height, left, right);
      maxArea = max(area, maxArea);
      (height[left] > height[right]) ? right-- : left++;
    }

    return maxArea;
  }

  int _calculateArea(List<int> height, int i, int j) {
    return min(height[i], height[j]) * (j - i);
  }
}
