//https://leetcode.com/problems/evaluate-reverse-polish-notation

class Solution {
  int evalRPN(List<String> tokens) {
    var stack = <int>[];
    for (var i = 0; i < tokens.length; i++) {
      final element = tokens[i];
      if (int.tryParse(element) != null) {
        stack.add(int.parse(element));
      } else {
        final itemsOne = stack.removeLast();
        final itemsTwo = stack.removeLast();

        stack.add(operation(element, itemsTwo, itemsOne));
      }
    }
    return stack.first;
  }

  int operation(String operator, int i, int j) {
    switch (operator) {
      case '+':
        return add(i, j);
      case '/':
        return divide(i, j);
      case '*':
        return multiply(i, j);
      case '-':
        return subtract(i, j);

      default:
        return 0;
    }
  }

  int add(int i, int j) => i + j;
  int subtract(int i, int j) => i - j;
  int divide(int i, int j) => i ~/ j;
  int multiply(int i, int j) => i * j;
}
