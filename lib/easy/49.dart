//https://leetcode.com/problems/group-anagrams/
class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.isEmpty) return [];

    final result = <String, List<String>>{};

    for (String element in strs) {
      final hashedValue = hashKey(element);
      if (result.containsKey(hashedValue)) {
        result[hashedValue] = [
          ...result[hashedValue]!,
          element,
        ];
      } else {
        element.runes;
        result[hashedValue] = [element];
      }
    }
    return result.values.toList();
  }

  String hashKey(String item) {
    final result = item.split('')..sort();
    return result.join();
  }
}
