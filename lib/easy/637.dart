//https://leetcode.com/problems/average-of-levels-in-binary-tree/description/?envType=study-plan-v2&envId=top-interview-150

import 'dart:collection';

import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  List<double> averageOfLevels(TreeNode? root) {
    if (root == null) return [];
    final result = <double>[];
    final queue = Queue<TreeNode>();
    queue.add(root);

    while (queue.isNotEmpty) {
      final levelLength = queue.length;
      final subList = <int>[];

      for (int i = 0; i < levelLength; i++) {
        if (queue.first.left != null) queue.add(queue.first.left!);
        if (queue.first.right != null) queue.add(queue.first.right!);

        subList.add(queue.removeFirst().val);
      }
      final levelAvg = subList.fold(
              0.0, (previousValue, element) => previousValue + element) /
          subList.length;
      result.add(levelAvg);
    }
    return result;
  }
}
