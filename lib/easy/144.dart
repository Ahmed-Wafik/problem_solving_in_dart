//https://leetcode.com/problems/binary-tree-preorder-traversal
import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  List<int> _preorderTraversal(TreeNode? root) {
    if (root == null) return [];
    final stack = <TreeNode>[root];
    final result = <int>[];

    while (stack.isNotEmpty) {
      final node = stack.removeLast();
      result.add(node.val);

      if (node.right != null) stack.add(node.right!);
      if (node.left != null) stack.add(node.left!);
    }
    return result;
  }

  // This soltion is much more efficient regading to momory space because we didn't need extra space for stack   -->
  List<int> preorderTraversal(TreeNode? root) {
    if (root == null) return [];
    final result = <int>[];
    void dfs(TreeNode? root) {
      if (root == null) return;
      result.add(root.val);
      dfs(root.left);
      dfs(root.right);
    }

    dfs(root);

    return result;
  }
}
