class LowestCommonAncestorOfBinarySearchTree {
    func lowestCommonAncestor(root: TreeNode?, p: TreeNode?, q: TreeNode?) -> TreeNode? {
        // Extract the values of p and q as they are guaranteed to be non-nil as explained in the problem statement.
        let pVal = p!.val, qVal = q!.val
        var currentNode: TreeNode? = root

        // Traverse the tree starting from the root.
        while let node = currentNode {
            // Compare the values of p and q with the current node's value.
            // If both p and q are less than the current node's value, move to the left child.
            if pVal < node.val, qVal < node.val {
                currentNode = node.left
            } else if pVal > node.val, qVal > node.val {
                // If both p and q are greater than the current node's value, move to the right child.
                currentNode = node.right
            } else {
                // If one of p or q is less than the current node's value and the other is greater,
                // or if one of them is equal to the current node's value, then the current node is the LCA.
                return node
            }
        }

        // This should never happen as per the problem statement.
        return nil
    }
}