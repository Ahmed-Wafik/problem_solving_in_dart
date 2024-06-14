class TreeNode<T> {
  final T val;
  TreeNode<T>? left;
  TreeNode<T>? right;

  TreeNode({required this.val, this.left, this.right});

  @override
  String toString() => '$val';
}

///             a
///           /   \
///          b      c
///         /  \      \
///        d    e      f
///       /
///      h
///
TreeNode binaryTreeData() {
  final binaryTreeData = TreeNode<String>(val: 'a');
  binaryTreeData.left = TreeNode<String>(val: 'b');
  binaryTreeData.left?.left = TreeNode<String>(val: 'd');
  binaryTreeData.left?.left?.left = TreeNode<String>(val: 'h');
  binaryTreeData.left?.right = TreeNode<String>(val: 'e');
  binaryTreeData.right = TreeNode<String>(val: 'c');
  binaryTreeData.right?.right = TreeNode<String>(val: 'f');

  return binaryTreeData;
}

TreeNode<int> binaryTreeIntData() {
  final binaryTreeData = TreeNode<int>(val: 3);
  binaryTreeData.left = TreeNode<int>(val: 9);
  binaryTreeData.right = TreeNode<int>(val: 20);
  binaryTreeData.right?.right = TreeNode<int>(val: 7);
  binaryTreeData.right?.left = TreeNode<int>(val: 15);

  return binaryTreeData;
}
