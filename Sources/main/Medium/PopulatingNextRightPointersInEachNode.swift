class NodeWithNext {
    var val: Int
    var left: NodeWithNext?
    var right: NodeWithNext?
    var next: NodeWithNext?

    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}


class PopulatingNextRightPointersInEachNode {
    func connect(_ root: NodeWithNext?) -> NodeWithNext? {
        guard let root = root else { return nil }
        
        var queue: [NodeWithNext] = [root]
        
        while !queue.isEmpty {
            var prev: NodeWithNext? = nil
            for _ in 0..<queue.count {
                let node = queue.removeFirst()

                // Connect the previous node's next pointer to the current node    
                if let prevNode = prev {
                    prevNode.next = node
                }
                prev = node
                
                // Connect the next pointer to the next node in the queue
                if let left = node.left {
                    queue.append(left)
                }
                
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        
        return root
    }
}