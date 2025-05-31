/**
 * Definition for a NodeWithParent.
 */
public class NodeWithParent {
    public var val: Int
    public var left: NodeWithParent?
    public var right: NodeWithParent?
    public var parent: NodeWithParent?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.parent = nil
    }
}

class LowestCommonAncestorOfABinaryTreeIII {
    func lowestCommonAncestor(_ p: NodeWithParent?, _ q: NodeWithParent?) -> NodeWithParent? {
        guard let p = p, let q = q else { return nil }
        
        // Create a set to store the ancestors of p
        var ancestorsP = Set<Int>()
        
        var currentNodeWithParent: NodeWithParent? = p
        // Traverse up the tree from p to the root, adding each ancestor to the set
        while let NodeWithParent = currentNodeWithParent {
            ancestorsP.insert(NodeWithParent.val)
            currentNodeWithParent = NodeWithParent.parent
        }
        
        currentNodeWithParent = q
        // Traverse up the tree from q to the root
        // The first ancestor of q that is also in the set of ancestors of p is the LCA
        while let NodeWithParent = currentNodeWithParent {
            if ancestorsP.contains(NodeWithParent.val) {
                return NodeWithParent
            }
            currentNodeWithParent = NodeWithParent.parent
        }
        
        return nil
    }

    // O(1) space solution
    // This solution uses two pointers to traverse the tree without using extra space.
    // It works by moving each pointer to its parent until they meet at the lowest common ancestor.
    // If one pointer reaches the root, it is redirected to the other pointer, ensuring both pointers traverse the same number of nodes.
    // This approach is efficient and avoids the need for a set to store ancestors.
    func lowestCommonAncestor2(_ p: NodeWithParent?, _ q: NodeWithParent?) -> NodeWithParent? {
        
        var pStart = p
        var qStart = q

        while pStart !== qStart {
            // Move p to its parent if it exists, otherwise move it to q
            pStart = pStart?.parent ?? q
            
            // Move q to its parent if it exists, otherwise move it to p
            qStart = qStart?.parent ?? p
        }
        // When p and q meet, they are at the lowest common ancestor
        return p
    }
}