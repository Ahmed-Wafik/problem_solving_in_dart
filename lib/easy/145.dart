// https://leetcode.com/problems/binary-tree-postorder-traversal

import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  List<int> postorderTraversal2(TreeNode? root) {
    if (root == null) return [];
    final result = <int>[];
    void postOrder(TreeNode? root) {
      if (root == null) return;
      postOrder(root.left);
      postOrder(root.right);
      result.add(root.val);
    }

    postOrder(root);

    return result;
  }

  List<int> postorderTraversal(TreeNode? root) {
    if (root == null) return [];
    final leftValues = postorderTraversal(root.left);
    final rightValues = postorderTraversal(root.right);

    return [...leftValues, ...rightValues, root.val];
  }
}
