//https://leetcode.com/problems/invert-binary-tree/description/?envType=study-plan-v2&envId=top-interview-150
import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

class Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return null;
    invertTree(root.left);
    invertTree(root.right);
    TreeNode? temp = root.left;
    root.left = root.right;
    root.right = temp;

    return root;
  }
}
