import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  bool isValidBST(TreeNode? root) {
    return _isValidBSTHelper(root, null, null);
  }

  bool _isValidBSTHelper(TreeNode? node, int? min, int? max) {
    if (node == null) return true;

    if ((min != null && node.val <= min) || (max != null && node.val >= max))
      return false;

    return _isValidBSTHelper(node.left, min, node.val) &&
        _isValidBSTHelper(node.right, node.val, max);
  }
}
