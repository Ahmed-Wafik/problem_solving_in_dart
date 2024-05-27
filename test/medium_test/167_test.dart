import 'package:problem_solving_in_dart/medium/167.dart';
import 'package:test/test.dart';

void main() {
  group('167. Two Sum II - Input Array Is Sorted', () {
    const numbers = [2, 7, 11, 15];
    const target = 9;
    const numbers2 = [2, 3, 4], target2 = 6;

    const numbers3 = [5, 25, 75];
    const target3 = 100;
    final sol = Solution();

    test('Solution 1', () {
      expect(sol.twoSum(numbers, target), [1, 2]);
      expect(sol.twoSum(numbers2, target2), [1, 3]);
      expect(sol.twoSum(numbers3, target3), [2, 3]);
    });
    test('Solution 2', () {
      expect(sol.twoSum2(numbers, target), [1, 2]);
      expect(sol.twoSum2(numbers2, target2), [1, 3]);
      expect(sol.twoSum2(numbers3, target3), [2, 3]);
    });
    test('Solution 3', () {
      expect(sol.twoSum3(numbers, target), [1, 2]);
      expect(sol.twoSum3(numbers2, target2), [1, 3]);
      expect(sol.twoSum3(numbers3, target3), [2, 3]);
    });
  });
}
