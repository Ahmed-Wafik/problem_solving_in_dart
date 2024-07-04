//https://leetcode.com/problems/contains-duplicate-ii/description/
class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    final map = <int, int>{};

    for (int i = 0; i < nums.length; i++) {
      if (map.containsKey(nums[i]) && (map[nums[i]]! - i).abs() <= k)
        return true;
      map[nums[i]] = i;
    }
    return false;
  }
}
