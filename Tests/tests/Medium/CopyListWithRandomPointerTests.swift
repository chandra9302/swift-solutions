import XCTest
@testable import main

final class CopyListWithRandomPointerTests: XCTestCase {
    func testCopyListWithRandomPointer() {
        let copyListWithRandomPointer = CopyListWithRandomPointer()
        
        // Test case 1
        let head = NodeWithRandomPointer(7)
        let node13 = NodeWithRandomPointer(13)
        let node11 = NodeWithRandomPointer(11)
        let node10 = NodeWithRandomPointer(10)
        let node1 = NodeWithRandomPointer(1)
        
        head.next = node13
        node13.next = node11
        node11.next = node10
        node10.next = node1
        head.random = nil
        node13.random = head
        node11.random = node1
        node10.random = node11
        node1.random = head
        
        let copiedList1 = copyListWithRandomPointer.copyRandomList(head)

        XCTAssertNotIdentical(copiedList1, head)
    }
}