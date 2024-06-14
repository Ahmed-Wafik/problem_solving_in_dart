//https://leetcode.com/problems/binary-tree-level-order-traversal/description/
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
  List<List<int>> levelOrder(TreeNode? root) {
    final queue = Queue<TreeNode>();
    final result = <List<int>>[];

    if (root == null) return result;

    queue.add(root);

    while (queue.isNotEmpty) {
      int levelNum = queue.length;
      final subList = <int>[];
      for (int i = 0; i < levelNum; i++) {
        if (queue.first.left != null) queue.add(queue.first.left!);
        if (queue.first.right != null) queue.add(queue.first.right!);
        subList.add(queue.removeFirst().val);
      }
      result.add(subList);
    }
    return result;
  }

//   List<List<int>> levelOrder(TreeNode? root) {
//     if(root == null) return [];
//     int height = heightTree(root);
//     final result = <List<int>>[];
//     for(int i=1;i<=height;i++){
//         result.add(nodesAtLevel(root,i));
//     }

//     return result;
//   }
  /// Height of the tree
//   static int heightTree(TreeNode? root) {
//     if (root == null) return 0;

//     final leftHeight = heightTree(root.left);
//     final rightHeight = heightTree(root.right);
//     return leftHeight > rightHeight ? leftHeight + 1 : rightHeight + 1;
//   }

//   /// Print nodes at a given level
//   static List<int> nodesAtLevel(TreeNode? root, int level) {
//     if (root == null) {
//       return [];
//     }
//     if (level == 1) return [root.val];
//     final leftValues = nodesAtLevel(root.left, level - 1);
//     final rightValues = nodesAtLevel(root.right, level - 1);
//     return [...leftValues, ...rightValues];
//   }
}
