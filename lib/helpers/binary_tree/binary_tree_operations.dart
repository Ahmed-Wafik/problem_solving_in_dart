import 'dart:collection';
import 'dart:math';

import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

abstract class BinaryTreeOperations {
  /// traversal algorithm that goes deep into a tree exploring for nodes branch by branch.
  /// Using a stack to store frontier nodes supports the behavior of this search.
  /// Three types of DFS orders: >> Pre-order, Post-order, In-order <<
  /// Applications: acyclic graphs and finding strongly connected components.
  static void depthFirstSearch(TreeNode root) {
    final stack = <TreeNode>[root];
    while (stack.isNotEmpty) {
      final node = stack.removeLast();
      print(node.val);

      if (node.right != null) {
        stack.add(node.right!);
      }
      if (node.left != null) {
        stack.add(node.left!);
      }
    }
  }

  static List<TreeNode> depthFirstSearchRecursively(TreeNode? root) {
    if (root == null) return [];
    final leftValues = depthFirstSearchRecursively(root.left);
    final rightValues = depthFirstSearchRecursively(root.right);
    return [root, ...leftValues, ...rightValues];
  }

  /// Level-order traversal in trees
  /// Starts with the root node and then visits all nodes level by level from left to right
  /// Application: finding the shortest path, Peer-to-Peer Networks, Minimum Spanning Tree for weighted graphs.
  static void breadthFirstSearch(TreeNode root) {
    final queue = Queue<TreeNode>();
    final result = <List<String>>[];

    queue.add(root);
    while (queue.isNotEmpty) {
      final node = queue.removeFirst();
      print(node.val);

      if (node.left != null) {
        queue.add(node.left!);
      }
      if (node.right != null) {
        queue.add(node.right!);
      }
      result.add([
        if (node.left != null) node.left?.val!,
        if (node.right != null) node.right?.val!,
      ]);
    }
    print(result);
  }

  /// Height of the tree
  static int height(TreeNode? root) {
    if (root == null) return 0;

    final leftHeight = height(root.left);
    final rightHeight = height(root.right);
    return max(leftHeight, rightHeight) + 1;
  }

  static List<String> binaryTreePaths(TreeNode? root) {
    // if (root?.left == null) return [root?.left?.val];
    // if (root?.right == null) return [root?.right?.val];
    if (root == null) return [];
    final stack = <TreeNode>[root];
    while (stack.isNotEmpty) {
      final node = stack.removeLast();
      print(node.val);

      if (node.right != null) {
        stack.add(node.right!);
      }
      if (node.left != null) {
        stack.add(node.left!);
      }
    }

    return [];
  }

  /// Min deptin of the tree
  static int minDepth(TreeNode? root) {
    if (root == null) return 0;
    final leftHeight = minDepth(root.left);
    final rightHeight = minDepth(root.right);

    if (leftHeight == 0) return rightHeight + 1;
    if (rightHeight == 0) return leftHeight + 1;

    return min(leftHeight, rightHeight) + 1;
  }

  /// Print nodes at a given level
  static List<T> nodesAtLevel<T>(TreeNode<T>? root, int level) {
    if (root == null) {
      return [];
    }
    if (level == 1) return [root.val];
    final leftValues = nodesAtLevel(root.left, level - 1);
    final rightValues = nodesAtLevel(root.right, level - 1);
    return [...leftValues, ...rightValues];
  }

  static List<List<T>> levelOrder<T>(TreeNode<T>? root) {
    final queue = Queue<TreeNode>();
    final result = <List<T>>[];

    if (root == null) return result;

    queue.add(root);

    while (queue.isNotEmpty) {
      int levelNum = queue.length;
      final subList = <T>[];
      for (int i = 0; i < levelNum; i++) {
        if (queue.first.left != null) queue.add(queue.first.left!);
        if (queue.first.right != null) queue.add(queue.first.right!);
        subList.add(queue.removeFirst().val);
      }
      result.add(subList);
    }
    return result;
  }
}