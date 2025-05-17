import Foundation

// Define a binary tree node structure.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
    }
}

extension TreeNode {
    public static func isSameTree(_ tree1: TreeNode?, _ tree2: TreeNode?) -> Bool {
        guard let tree1 = tree1, let tree2 = tree2 else {
            return tree1 == nil && tree2 == nil
        }
        if tree1.val != tree2.val {
            return false
        }
        let leftComparison = isSameTree(tree1.left, tree2.left)
        let rightComparison = isSameTree(tree1.right, tree2.right)
        return leftComparison && rightComparison
    }
    
    public static func buildTree(from array: [Int?]) -> TreeNode? {
        guard !array.isEmpty else { return nil }
        
        var index = 0
        let root = TreeNode(array[index]!)
        index += 1
        
        var queue: [TreeNode] = [root]
        
        while index < array.count {
            let current = queue.removeFirst()
            
            if index < array.count, let leftValue = array[index] {
                current.left = TreeNode(leftValue)
                queue.append(current.left!)
            }
            index += 1
            
            if index < array.count, let rightValue = array[index] {
                current.right = TreeNode(rightValue)
                queue.append(current.right!)
            }
            index += 1
        }
        
        return root
    }
}