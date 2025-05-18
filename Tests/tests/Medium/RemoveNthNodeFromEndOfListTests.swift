import XCTest
@testable import main

final class RemoveNthNodeFromEndOfListTests: XCTestCase {
    var removeNthNodeFromEndOfList: RemoveNthNodeFromEndOfList!

    override func setUp() {
        super.setUp()
        removeNthNodeFromEndOfList = RemoveNthNodeFromEndOfList()
    }

    override func tearDown() {
        removeNthNodeFromEndOfList = nil
        super.tearDown()
    }

    func testRemoveNthFromEnd() {
        let head = ListNode.buildList(from: [1, 2, 3, 4, 5])

        let n = 2
        let expected = [1, 2, 3, 5]
        let result = removeNthNodeFromEndOfList.removeNthFromEnd(head, n)

        var current: ListNode? = result
        var resultArray: [Int] = []
        while current != nil {
            resultArray.append(current!.val)
            current = current?.next
        }

        XCTAssertEqual(resultArray, expected)
    }

    func testRemoveNthFromEnd_SingleNode() {
        let head = ListNode.buildList(from: [1])

        let n = 1
        let expected: [Int] = []
        let result = removeNthNodeFromEndOfList.removeNthFromEnd(head, n)

        var current: ListNode? = result
        var resultArray: [Int] = []
        while current != nil {
            resultArray.append(current!.val)
            current = current?.next
        }

        XCTAssertEqual(resultArray, expected)
    }

    func testRemoveNthFromEnd_TwoNodes() {
        let head = ListNode.buildList(from: [1, 2])

        let n = 1
        let expected = [1]
        let result = removeNthNodeFromEndOfList.removeNthFromEnd(head, n)

        var current: ListNode? = result
        var resultArray: [Int] = []
        while current != nil {
            resultArray.append(current!.val)
            current = current?.next
        }

        XCTAssertEqual(resultArray, expected)
    }
}