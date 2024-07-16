//https://leetcode.com/problems/valid-parentheses/description/
class Solution {
  bool isValid(String s) {
    const closeToOpen = <String, String>{
      ')': '(',
      '}': '{',
      ']': '[',
    };
    final stack = <String>[];

    for (int i = 0; i < s.length; i++) {
      final char = s[i];

      if (stack.isEmpty && closeToOpen[char] != null) return false;

      if (stack.isNotEmpty && stack.last == closeToOpen[char]) {
        stack.removeLast();
      } else {
        stack.add(char);
      }
    }

    return stack.isEmpty;
  }
}
