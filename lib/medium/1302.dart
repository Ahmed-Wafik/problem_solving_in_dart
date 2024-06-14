//https://leetcode.com/problems/deepest-leaves-sum/description
/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */

import 'dart:collection';

import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  int deepestLeavesSum(TreeNode? root) {
    if (root == null) return 0;
    final queue = Queue<TreeNode?>();
    final deepeastNodes = <int>[];

    queue.add(root);
    while (queue.isNotEmpty) {
      final levelLength = queue.length;
      deepeastNodes.clear();
      for (int i = 0; i < levelLength; i++) {
        if (queue.first?.left != null) queue.add(queue.first?.left!);
        if (queue.first?.right != null) queue.add(queue.first?.right!);
        deepeastNodes.add(queue.removeFirst()!.val!);
      }
    }
    return deepeastNodes.fold<int>(
        0, (previousValue, element) => previousValue + element);
  }
}
