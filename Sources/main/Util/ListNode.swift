/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }

    public static func buildList(from array: [Int?]) -> ListNode? {
        guard !array.isEmpty else { return nil }
        
        let head = ListNode(array[0]!)
        var current = head
        
        for value in array.dropFirst() {
            if let value = value {
                current.next = ListNode(value)
                current = current.next!
            }
        }
        
        return head
    }
}

