class InsertIntoASortedCircularLinkedList {
    func insert(_ head: Node?, _ insertVal: Int) -> Node? {
        let newNode = Node(insertVal)
        // Case 1: If the list is empty, create a new node and point it to itself
        guard let head else {
            newNode.next = newNode
            return newNode
        }
        
        var current: Node? = head
        var next: Node? = head.next
        
        // Repeat until we find the right place to insert the new node
        // we need to use a repeat-while loop to ensure we check the circular nature of the list for once
        repeat {
            if let currentVal = current?.val, let nextVal = next?.val {
                // Case 2: If the current node's value is less than or equal to the insert value, normal ascending order insert
                if currentVal <= insertVal && insertVal <= nextVal {
                    break
                }
                
                if currentVal > nextVal {
                    // Case 3: If we are at the end of the list (the largest value or max to min transition)
                    if insertVal >= currentVal || insertVal <= nextVal {
                        break
                    }
                }
            }
            // Move to the next node
            current = next
            next = next?.next
        } while current !== head
        // Insert the new node between current and next 
        current?.next = newNode
        newNode.next = next
        
        return head
    }
}