/**
 * Definition for a Node.
 */
public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var parent: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.parent = nil
    }
}

class LowestCommonAncestorOfABinaryTreeIII {
    func lowestCommonAncestor(_ p: Node?, _ q: Node?) -> Node? {
        guard let p = p, let q = q else { return nil }
        
        // Create a set to store the ancestors of p
        var ancestorsP = Set<Int>()
        
        var currentNode: Node? = p
        // Traverse up the tree from p to the root, adding each ancestor to the set
        while let node = currentNode {
            ancestorsP.insert(node.val)
            currentNode = node.parent
        }
        
        currentNode = q
        // Traverse up the tree from q to the root
        // The first ancestor of q that is also in the set of ancestors of p is the LCA
        while let node = currentNode {
            if ancestorsP.contains(node.val) {
                return node
            }
            currentNode = node.parent
        }
        
        return nil
    }
}