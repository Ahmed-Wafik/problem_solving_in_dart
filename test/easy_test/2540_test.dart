import 'package:problem_solving_in_dart/easy/2540.dart';
import 'package:test/test.dart';

void main() {
  group('121. Best Time to Buy and Sell Stock', () {
    final List<int> nums1 = [1, 2, 3], nums2 = [2, 4];
    final List<int> nums3 = [1, 2, 3, 6], nums4 = [2, 3, 4, 5];
    final sol = Solution();

    test('Solution 1', () {
      expect(sol.getCommon(nums1, nums2), 2);
      expect(sol.getCommon(nums3, nums4), 2);
    });
    test('Solution - binary search', () {
      expect(sol.getCommon2(nums1, nums2), 2);
      expect(sol.getCommon2(nums3, nums4), 2);
    });
    test('Solution - sets', () {
      expect(sol.getCommon3(nums1, nums2), 2);
      expect(sol.getCommon3(nums3, nums4), 2);
    });
    test('Solution - two pointer', () {
      expect(sol.getCommon4(nums1, nums2), 2);
      expect(sol.getCommon4(nums3, nums4), 2);
    });
  });
}
