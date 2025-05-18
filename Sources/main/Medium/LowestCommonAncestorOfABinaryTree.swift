class LowestCommonAncestorOfABinaryTree {
    func lowestCommonAncestor(root: TreeNode?, p: TreeNode?, q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        // If the current node is either p or q, return it
        if root === p || root === q { return root }
        
        // Recursively search in the left and right subtrees
        let left = lowestCommonAncestor(root: root.left, p: p, q: q)
        let right = lowestCommonAncestor(root: root.right, p: p, q: q)
        
        // If both left and right are non-nil, it means p and q are found in different subtrees
        if left != nil && right != nil {
            // The current node is the LCA
            return root
        }
        
        // If one of the subtrees returns a non-nil value, return that value
        return left ?? right
    }
}