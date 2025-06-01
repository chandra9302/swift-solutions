import Collections

final class MergeKSortedLists {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        // Using a min-heap to efficiently merge k sorted linked lists
        var heap = Heap<ListNode>()
        // Loop through each list and insert its nodes into the heap
        for list in lists {
            var current = list
            while let node = current {
                heap.insert(node)
                current = node.next
            }
        }
        // If the heap is empty, return nil
        guard !heap.isEmpty else { return nil }
        // Create a dummy node to simplify the merging process
        let dummy = ListNode(0)
        // Pointer to the current node in the merged list
        var current = dummy
        // While there are nodes in the heap, pop the smallest node and add it to the merged list
        while !heap.isEmpty {
            let node = heap.popMin()
            current.next = node
            current = current.next!
        }
        // Set the next of the last node to nil to terminate the list
        current.next = nil // Ensure the last node's next is nil
        // Return the merged list starting from the node after the dummy
        return dummy.next
    }
}