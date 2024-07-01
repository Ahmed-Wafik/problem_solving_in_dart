//https://leetcode.com/problems/univalued-binary-tree/description/
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

import 'dart:collection';
class Solution {
  // BFS
  bool isUnivalTree(TreeNode? root) {
    if(root == null) return false;
    int val = root.val;

    final queue = Queue<TreeNode>();
    queue.add(root);
    while(queue.isNotEmpty){
        final node = queue.removeFirst();
        if(node.val != val) return false;
        if(node.left != null) queue.add(node.left!);
        if(node.right != null) queue.add(node.right!);
    }
    return true;
  }

  // DFS
  // bool isUnivalTree(TreeNode? root) {
  //   if(root == null) return false;
  //   int val = root.val;

  //   final stack = <TreeNode>[];
  //   stack.add(root);
  //   while(stack.isNotEmpty){
  //       final node = stack.removeLast();
  //       if(node.val != val) return false;
  //       if(node.right != null) stack.add(node.right!);
  //       if(node.left != null) stack.add(node.left!);
  //   }
  //   return true;
  // }
  // Recursion
  // bool isUnivalTree(TreeNode? root) {
  //   bool left = (root?.left == null ||
  //       (root?.val == root?.left?.val && isUnivalTree(root?.left)));
  //   bool right = (root?.right == null ||
  //       (root?.val == root?.right?.val && isUnivalTree(root?.right)));
  //   return left && right;
  // }
}