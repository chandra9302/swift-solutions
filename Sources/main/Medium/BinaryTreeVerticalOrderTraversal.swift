import Foundation

class BinaryTreeVerticalOrderTraversal {
    func verticalOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        
        var columnTable: [Int: [Int]] = [:]
        var minColumn = 0
        var maxColumn = 0
        
        // BFS with queue
        var queue: [(node: TreeNode, column: Int)] = [(root, 0)]
        
        while !queue.isEmpty {
            let (node, column) = queue.removeFirst()
            
            // Update the column table
            columnTable[column, default: []].append(node.val)
            minColumn = min(minColumn, column)
            maxColumn = max(maxColumn, column)
            
            // Add left and right children to the queue
            if let left = node.left {
                queue.append((left, column - 1))
            }
            if let right = node.right {
                queue.append((right, column + 1))
            }
        }
        
        // Prepare the result based on the column range
        var result: [[Int]] = []
        for i in minColumn...maxColumn {
            result.append(columnTable[i] ?? [])
        }
        
        return result
    }
}