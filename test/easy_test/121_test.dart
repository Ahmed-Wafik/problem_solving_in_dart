import 'package:problem_solving_in_dart/easy/121.dart';
import 'package:test/test.dart';

void main() {
  group('121. Best Time to Buy and Sell Stock', () {
    const prices = [7, 1, 5, 3, 6, 4];
    const prices2 = [7, 6, 4, 3, 1];
    final sol = Solution();

    test('Solution 1', () {
      expect(sol.maxProfit(prices), 5);
      expect(sol.maxProfit(prices2), 0);
    });
    test('Solution 2', () {
      expect(sol.maxProfit2(prices), 5);
      expect(sol.maxProfit2(prices2), 0);
    });
  });
}
