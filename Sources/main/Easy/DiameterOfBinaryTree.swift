class DiameterOfBinaryTree {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var diameter = 0
        
        // Helper function to calculate the depth of the tree and update the diameter
        // The depth function returns the depth of the current node
        @discardableResult
        func depth(_ node: TreeNode?) -> Int {
            // If the node is nil, return 0 (base case)
            guard let node = node else { return 0 }
            // Recursively calculate the depth of the left and right subtrees
            let leftDepth = depth(node.left)
            let rightDepth = depth(node.right)
            // Update the diameter if the sum of left and right depths is greater than the current diameter
            diameter = max(diameter, leftDepth + rightDepth)
            // Return the depth of the current node, which is 1 plus the maximum depth of its subtrees
            return max(leftDepth, rightDepth) + 1
        }
        
        // Start the depth calculation from the root node
        depth(root)
        // Return the calculated diameter of the binary tree
        // The diameter is the longest path between any two nodes in the tree which may or may not pass through the root.
        return diameter
    }
}