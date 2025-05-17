class BinaryTreeRightSideView {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }
        var result = [Int]()
        var queue = [root]
        
        // Perform level order traversal
        // At each level, add the last node's value to the result
        while !queue.isEmpty {
            let size = queue.count
            for i in 0..<size {
                let node = queue.removeFirst()
                // If it's the last node at this level, add its value to the result
                if i == size - 1 {
                    result.append(node.val)
                }
                
                if let left = node.left {
                    queue.append(left)
                }
                
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        
        return result
    }
}