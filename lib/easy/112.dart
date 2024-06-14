//https://leetcode.com/problems/path-sum/description/

import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  bool hasPathSum(TreeNode<int>? root, int targetSum) {
    if (root == null) return false;
    if (root.right == null && root.left == null && root.val == targetSum)
      return true;

    return hasPathSum(root.left, targetSum - root.val) ||
        hasPathSum(root.right, targetSum - root.val);
  }
}
