//https://leetcode.com/problems/find-smallest-letter-greater-than-target/description
class Solution {
  String nextGreatestLetter(List<String> letters, String target) {
    final targetDecimal = target.toAskiDecimal;
    if (targetDecimal >= letters.last.toAskiDecimal) return letters.first;

    for (var char in letters) {
      if (char != target && char.toAskiDecimal > targetDecimal) {
        return char;
      }
    }
    return letters.first;
  }

  String nextGreatestLetter2(List<String> letters, String target) {
    final targetDecimal = target.toAskiDecimal;

    if (targetDecimal >= letters.last.toAskiDecimal) return letters.first;

    int low = 0;
    int high = letters.length - 1;

    while (low <= high) {
      int mid = low + (high - low) ~/ 2;
      if (letters[mid].toAskiDecimal <= targetDecimal) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    return letters[low];
  }
}

extension on String {
  int get toAskiDecimal => this.codeUnits.first;
}
