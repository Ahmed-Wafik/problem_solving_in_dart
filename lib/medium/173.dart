import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

//https://leetcode.com/problems/binary-search-tree-iterator/description
class BSTIterator {
  final stack = <TreeNode>[];

  BSTIterator(TreeNode? root) {
    insert(root);
  }

  int next() {
    final node = stack.removeLast();
    insert(node.right);
    return node.val;
  }

  bool hasNext() {
    return stack.isNotEmpty;
  }

  void insert(TreeNode? root) {
    while (root != null) {
      stack.add(root);
      root = root.left;
    }
  }
}

/**
 * Your BSTIterator object will be instantiated and called as such:
 * BSTIterator obj = BSTIterator(root);
 * int param1 = obj.next();
 * bool param2 = obj.hasNext();
 */