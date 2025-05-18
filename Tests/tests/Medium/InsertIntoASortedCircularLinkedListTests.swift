import XCTest
@testable import main

final class InsertIntoASortedCircularLinkedListTests: XCTestCase {
    var insertIntoASortedCircularLinkedList: InsertIntoASortedCircularLinkedList!

    override func setUp() {
        super.setUp()
        insertIntoASortedCircularLinkedList = InsertIntoASortedCircularLinkedList()
    }

    override func tearDown() {
        insertIntoASortedCircularLinkedList = nil
        super.tearDown()
    }

    func testInsertIntoSortedCircularLinkedList() {
        let head = Node(3)
        head.next = Node(4)
        head.next?.next = Node(1)
        head.next?.next?.next = head // Making it circular
        
        let result = insertIntoASortedCircularLinkedList.insert(head, 2)
        
        var current: Node? = result
        var resultArray: [Int] = []
        
        repeat {
            if let value = current?.val {
                resultArray.append(value)
            }
            current = current?.next
        } while current !== result
        
        XCTAssertEqual(resultArray, [3, 4, 1, 2])
    }

    func testInsertIntoSortedCircularLinkedListEmpty() {
        let result = insertIntoASortedCircularLinkedList.insert(nil, 5)
        
        XCTAssertEqual(result?.val, 5)
        XCTAssertEqual(result?.next?.val, 5)
    }

    func testInsertIntoSortedCircularLinkedListSingleNode() {
        let head = Node(1)
        head.next = head // Making it circular
        
        let result = insertIntoASortedCircularLinkedList.insert(head, 0)
        
        var current: Node? = result
        var resultArray: [Int] = []
        
        repeat {
            if let value = current?.val {
                resultArray.append(value)
            }
            current = current?.next
        } while current !== result
        
        XCTAssertEqual(resultArray, [1, 0])
    }
}