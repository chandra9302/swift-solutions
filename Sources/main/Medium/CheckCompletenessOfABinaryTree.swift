final class CheckCompletenessOfABinaryTree {
    func isCompleteTree(_ root: TreeNode?) -> Bool {
        guard let root else { return false }
        // Use a queue to perform level order traversal
        var queue: [TreeNode?] = [root]
        // A flag to indicate if we have found a nil node
        var foundNil = false

        // Traverse the tree level by level
        while !queue.isEmpty {
            // Dequeue the front node
            let node = queue.removeFirst()
            // If we find a nil node, set the flag
            if node == nil { foundNil = true }
            else {
                // If we have found a nil node before and now we find a non-nil node, the tree is not complete
                if foundNil { return false }
                // Enqueue the left and right children
                queue.append(node?.left)
                queue.append(node?.right)
            }
        }
        // If we finish the traversal without finding any violations, the tree is complete
        return true
    }
}