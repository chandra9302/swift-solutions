final class ConvertBinarySearchTreeToSortedDoublyLinkedList {
    func treeToDoublyList(_ root: TreeNode?) -> TreeNode? {
        // Handle the case where the tree is empty
        guard let root = root else { return nil }
        
        // Initialize pointers for the head and previous nodes
        // These will be used to create the doubly linked list
        var head: TreeNode?
        var prev: TreeNode?
        
        // Helper function to perform in-order traversal of the tree
        func inOrderTraversal(_ node: TreeNode?) {
            // Base case: if the node is nil, return
            guard let node else { return }
            // Recursively traverse the left subtree
            inOrderTraversal(node.left)
            
            // Process the current node
            // If the head is nil, it means we are at the leftmost node
            // which will be the head of the doubly linked list
            if head == nil {
                head = node
            } else {
                // If the head is not nil, we are not at the leftmost node
                // Set the previous node's right pointer to the current node
                // and the current node's left pointer to the previous node
                prev?.right = node
                node.left = prev
            }
            // Update the previous node to the current node
            prev = node
            // Recursively traverse the right subtree
            inOrderTraversal(node.right)
        }
        
        // Start the in-order traversal from the root
        inOrderTraversal(root)
        
        // After the traversal, we need to connect the head and tail of the doubly linked list to make it circular
        head?.left = prev
        prev?.right = head
        
        // Return the head of the doubly linked list
        return head
    }
}