abstract class Helpers {
  static int binarySearch(List<int> list, int key) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      int mid = low + ((high - low) >> 1);

      if (list[mid] == key) {
        return mid;
      } else if (list[mid] < key) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    return -1;
  }
}
