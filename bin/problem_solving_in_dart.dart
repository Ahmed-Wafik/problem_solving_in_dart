import 'package:problem_solving_in_dart/helpers/binary_tree/binary_tree_operations.dart';
import 'package:problem_solving_in_dart/helpers/binary_tree/tree_node.dart';

void main() {
  final root = binaryTreeData();
  final rootINt = binaryTreeIntData();
  print(BinaryTreeOperations.binaryTreePaths(root));
  print('<<<< DFS >>>' );
  BinaryTreeOperations.depthFirstSearch(root);
  print('<<<< DFS >>>' );
  print(BinaryTreeOperations.depthFirstSearchRecursively(root));

  print('<<<< BFS >>>' );
  BinaryTreeOperations.breadthFirstSearch(root);
  print('<<<< Height >>>' );
  print(BinaryTreeOperations.height(root));
  print(BinaryTreeOperations.nodesAtLevel(root, 2));
  print(BinaryTreeOperations.levelOrder(root));
}
