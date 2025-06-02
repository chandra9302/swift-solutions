final class ClosestBinarySearchTreeValue {
    func closestValue(_ root: TreeNode?, _ target: Double) -> Int {
        guard let root = root else { return 0 }
        
        // Initialize the closest value to the root's value
        var closest = root.val
        // Start with the current node as the root
        var currentNode: TreeNode? = root
        
        // Traverse the tree
        while let node = currentNode {
            // Calculate the difference between the current node's value and the target
            let currentDiff = abs(Double(node.val) - target)
            // Calculate the difference between the closest value and the target
            let closestDiff = abs(Double(closest) - target)
            // If the current difference is smaller than the closest difference, update closest or 
            // if they are equal, update closest if the current node's value is smaller
            if currentDiff < closestDiff || (currentDiff == closestDiff && node.val < closest)  {
                closest = node.val
            }
            
            // If the target is equal to the current node's value, we have found the closest value
            if target == Double(node.val) { return node.val }
            // Move to the left or right child based on the target value
            if target < Double(node.val) {
                currentNode = node.left
            } else if target > Double(node.val) {
                currentNode = node.right
            }
        }
        
        // Return the closest value found in the binary search tree
        return closest
    }
}