//https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/description
class Solution {
  int countNegatives(List<List<int>> grid) {
    int count = 0;
    for (List<int> row in grid) {
      int result = countRowNegative(row);
      if (result != -1) count += result;
    }
    return count;
  }

  int countRowNegative(List<int> row) {
    if (row.isEmpty) return -1;
    if (row.last >= 0) return -1;

    int low = 0;
    int high = row.length - 1;

    while (low <= high) {
      int mid = low + (high - low) ~/ 2;

      if (row[mid] < 0) {
        if (((mid - 1) == -1) || row[mid - 1] >= 0) return row.length - mid;

        high = high - 1;
      } else {
        low = mid + 1;
      }
    }

    return -1;
  }
}
