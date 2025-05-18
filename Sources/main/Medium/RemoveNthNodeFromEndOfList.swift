class RemoveNthNodeFromEndOfList {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        // Create a dummy node to handle edge cases
        // such as removing the head node
        let dummy = ListNode(0)
        dummy.next = head
        // Initialize two pointers
        // first will be used to find the end of the list
        var first: ListNode? = dummy
        var second: ListNode? = dummy
        
        // Move the first pointer n+1 steps ahead
        for _ in 0..<n+1 {
            first = first?.next
        }
        
        // Move both pointers until the first pointer reaches the end of the list
        // This way, the second pointer will be at the node before the one we want to remove
        while first != nil {
            // Move both pointers one step forward
            first = first?.next
            second = second?.next
        }
        // Now, the second pointer is at the node before the one we want to remove
        second?.next = second?.next?.next
        // Return the new head of the list
        return dummy.next
    }
}