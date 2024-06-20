class Solution {
  /// Solution 1
  String longestCommonPrefix(List<String> strs) {
    if (strs.length <= 1) return strs.first;

    strs.sort();
    String s1 = strs.first;
    String s2 = strs.last;

    int index = 0;

    while (index < s1.length && index < s2.length) {
      if (s1[index] != s2[index]) break;
      index++;
    }
    return s1.substring(0, index);
  }

  /// Solution 2

  String longestCommonPrefix2(List<String> strs) {
    if (strs.length <= 1) return strs.first;

    String commonPrefrixOfTwoWord = commonPrefix(strs.first, strs[1]);
    if (commonPrefrixOfTwoWord.isEmpty) return '';

    for (int i = 2; i < strs.length; i++) {
      String commonPrefrixOfItems =
          commonPrefix(commonPrefrixOfTwoWord, strs[i]);
      if (commonPrefrixOfItems.isEmpty) return '';
      commonPrefrixOfTwoWord = commonPrefrixOfItems;
    }
    return commonPrefrixOfTwoWord;
  }

  String commonPrefix(String item1, String item2) {
    StringBuffer stringBuffer = StringBuffer();
    int i = 0;
    while (i < item1.length && i < item2.length) {
      if (item1[i] != item2[i]) break;
      stringBuffer.write(item1[i]);

      i++;
    }
    return stringBuffer.toString();
  }
}
