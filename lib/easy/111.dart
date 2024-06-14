// https://leetcode.com/problems/minimum-depth-of-binary-tree/
import 'dart:math';

import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  int minDepth(TreeNode? root) {
    if (root == null) return 0;
    final leftHeight = minDepth(root.left);
    final rightHeight = minDepth(root.right);

    if (leftHeight == 0) return rightHeight + 1;
    if (rightHeight == 0) return leftHeight + 1;

    return min(leftHeight, rightHeight) + 1;
  }
}
