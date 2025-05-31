class BinarySearchTreeIterator {
    private var currentPointer = 0
    private var inorder = [Int]()

    init(_ root: TreeNode?) {
        // Precompute the inorder traversal of the BST
        // This will give us the elements in sorted order
        inorderTraversal(root)
    }

    func next() -> Int {
        // Return the next element in the inorder traversal
        guard currentPointer < inorder.count else { return -1 }
        let value = inorder[currentPointer]
        currentPointer += 1
        return value
    }

    func hasNext() -> Bool {
        // Check if there are more elements to iterate
        return currentPointer < inorder.count
    }

    // Helper function to perform inorder traversal
    private func inorderTraversal(_ node: TreeNode?) {
        guard let node = node else { return }
        inorderTraversal(node.left)
        inorder.append(node.val)
        inorderTraversal(node.right)
    }
}