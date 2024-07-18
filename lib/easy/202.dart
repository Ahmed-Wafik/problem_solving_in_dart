// https://leetcode.com/problems/happy-number/description/
class Solution {
  bool isHappy(int n) {
    int slow = n;
    int fast = n;

    do {
      slow = suqare(slow);
      fast = suqare(suqare(fast));
    } while (slow != fast);

    return slow == 1;
  }

  int suqare(int n) {
    int ans = 0;

    while (n > 0) {
      int reminder = n % 10;
      ans += reminder * reminder;
      n ~/= 10;
    }
    return ans;
  }

  bool isHappy2(int n) {
    if (n == 1) return true;
    final int happyNumber = 1;
    final visited = <int>{};

    int result = 0;
    final intToString = n.toString();
    final digits = intToString.split('').map((e) => int.parse(e)).toList();
    while (true) {
      for (int element in digits) {
        result += element * element;
      }
      if (result == happyNumber) return true;
      if (visited.contains(result)) return false;
      visited.add(result);

      digits.clear();
      digits.addAll(result.toString().split('').map((e) => int.parse(e)));
      result = 0;
    }
  }
}
