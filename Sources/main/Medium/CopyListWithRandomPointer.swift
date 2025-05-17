
public class NodeWithRandomPointer {
        // Definition for a Node.
        var val: Int
        var next: NodeWithRandomPointer?
        var random: NodeWithRandomPointer?

        init(_ val: Int) {
            self.val = val
            self.next = nil
            self.random = nil
        }
    }


class CopyListWithRandomPointer {
    func copyRandomList(_ head: NodeWithRandomPointer?) -> NodeWithRandomPointer? {
        // Step 1: Create a copy of each node and insert it right after the original node
        var current = head
        while let node = current {
            let copyNode: NodeWithRandomPointer = NodeWithRandomPointer(node.val)
            copyNode.next = node.next
            node.next = copyNode
            current = copyNode.next
        }

        // Step 2: Set the random pointers for the copied nodes
        current = head
        while let node = current {
            node.next?.random = node.random?.next
            current = node.next?.next
        }

        // Step 3: Separate the copied nodes from the original list
        current = head
        let newHead = head?.next
        while let node = current {
            let copyNode = node.next
            node.next = copyNode?.next
            copyNode?.next = node.next?.next
            current = node.next
        }

        return newHead
    }
}
