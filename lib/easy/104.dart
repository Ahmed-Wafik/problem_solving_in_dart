//https://leetcode.com/problems/maximum-depth-of-binary-tree/

import 'dart:math';

import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;
    final leftHeight = maxDepth(root.left);
    final rightHeight = maxDepth(root.right);

    return max(leftHeight, rightHeight) + 1;
  }
}
