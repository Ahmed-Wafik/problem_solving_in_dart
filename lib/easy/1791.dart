//https://leetcode.com/problems/find-center-of-star-graph/description/?envType=daily-question&envId=2024-06-27
class Solution {
  int findCenter(List<List<int>> edges) {
    final edge1 = edges[0];
    final edge2 = edges[1];

    return (edge1.first == edge2.first || edge1.first == edge2[1])
        ? edge1.first
        : edge1[1];
  }

  int findCenter2(List<List<int>> edges) {
    final map = <int, int>{};
    for (List<int> edge in edges) {
      for (int vertix in edge) {
        if (!map.containsKey(vertix)) {
          map[vertix] = 1;
        } else {
          map[vertix] = map[vertix]! + 1;
        }
      }
    }
    for (var element in map.keys) {
      if (map[element] == edges.length) {
        return element;
      }
    }
    return 0;
  }
}
