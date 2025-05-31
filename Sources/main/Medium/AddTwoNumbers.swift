final class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // Dummy head to simplify the code
        let dummyHead = ListNode(0)
        var p = l1
        var q = l2
        var current = dummyHead
        var carry = 0
        
        // Loop until both lists are exhausted
        while p != nil || q != nil {
            let x = p?.val ?? 0
            let y = q?.val ?? 0
            let sum = carry + x + y
            
            // Update carry for next iteration
            carry = sum / 10
            // Create a new node with the digit value
            current.next = ListNode(sum % 10)
            // Move to the next node
            current = current.next!
            
            // Move to the next nodes in the lists
            if p != nil { p = p?.next }
            if q != nil { q = q?.next }
        }
        
        // If there's a carry left, create a new node with the carry value
        if carry > 0 {
            current.next = ListNode(carry)
        }
        
        // Return the next node of the dummy head, which is the actual head of the result list
        return dummyHead.next
    }
}