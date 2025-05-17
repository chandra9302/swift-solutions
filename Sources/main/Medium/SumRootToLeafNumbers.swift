class SumRootToLeafNumbers {
    func sumNumbers(_ root: TreeNode?) -> Int {
        // Helper function to calculate the sum of all root-to-leaf numbers
        return sumNumbersHelper(root, 0)
    }
    
    // Recursive helper function to traverse the tree and calculate the sum
    private func sumNumbersHelper(_ node: TreeNode?, _ currentSum: Int) -> Int {
        // Base case: if the node is nil, return 0
        guard let node = node else { return 0 }
        
        // Calculate the new sum by appending the current node's value
        let newSum = currentSum * 10 + node.val
        
        // Check if the current node is a leaf node (no left or right child)
        if node.left == nil && node.right == nil {
            return newSum
        }
        
        // Recursively calculate the sum for the left and right subtrees
        return sumNumbersHelper(node.left, newSum) + sumNumbersHelper(node.right, newSum)
    }
}