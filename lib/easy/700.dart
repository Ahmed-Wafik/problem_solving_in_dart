import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

//https://leetcode.com/problems/search-in-a-binary-search-tree/description
class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root == null) return null;

    if (root.val == val) {
      return root;
    } else if (root.val > val) {
      return searchBST(root.left, val);
    } else {
      return searchBST(root.right, val);
    }
  }
}
