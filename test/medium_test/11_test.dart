import 'package:problem_solving_in_dart/medium/11.dart';
import 'package:test/test.dart';

void main() {
  group('Container With Most Water', () {
    const height = [1, 8, 6, 2, 5, 4, 8, 3, 7];
    const height2 = [1, 1];
    test('Solution 1', () {
      final sol = Solution11();
      expect(sol.maxArea(height), 49);
      expect(sol.maxArea(height2), 1);
    });
    test('Solution 2', () {
      final sol = Solution11();
      expect(sol.maxArea2(height), 49);
      expect(sol.maxArea2(height2), 1);
    });
  });
}
