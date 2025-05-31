class RangeSumOfBST {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root = root else { return 0 }

        // If the current node's value is less than low, we only need to consider the right subtree    
        if root.val < low {
            return rangeSumBST(root.right, low, high)
        } else if root.val > high {
            // If the current node's value is greater than high, we only need to consider the left subtree
            return rangeSumBST(root.left, low, high)
        } else {
            // If the current node's value is within the range [low, high], we include it in the sum
            // and recursively calculate the sum for both left and right subtrees
            // This ensures that we only sum the values of nodes that are within the specified range
            return root.val + rangeSumBST(root.left, low, high) + rangeSumBST(root.right, low, high)
        }
    }
}