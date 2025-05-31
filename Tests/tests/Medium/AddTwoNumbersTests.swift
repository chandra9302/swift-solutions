import XCTest
@testable import main

final class AddTwoNumbersTests: XCTestCase {
    var addTwoNumbers: AddTwoNumbers!

    override func setUp() {
        super.setUp()
        addTwoNumbers = AddTwoNumbers()
    }

    override func tearDown() {
        addTwoNumbers = nil
        super.tearDown()
    }

    func testAddTwoNumbersExample1() {
        let l1 = ListNode.buildList(from: [2, 4, 3])
        let l2 = ListNode.buildList(from: [5, 6, 4])


        let result = addTwoNumbers.addTwoNumbers(l1, l2)
        
        let expectedValues = [7, 0, 8]
        var actualValues: [Int] = []
        var currentNode: ListNode? = result
        while currentNode != nil {
            actualValues.append(currentNode!.val)
            currentNode = currentNode?.next
        }
        XCTAssertEqual(actualValues, expectedValues)
    }

    func testAddTwoNumbersExample2() {
        let l1 = ListNode.buildList(from: [0])
        let l2 = ListNode.buildList(from: [0])

        let result = addTwoNumbers.addTwoNumbers(l1, l2)
        
        let expectedValues = [0]
        var actualValues: [Int] = []
        var currentNode: ListNode? = result
        while currentNode != nil {
            actualValues.append(currentNode!.val)
            currentNode = currentNode?.next
        }
        XCTAssertEqual(actualValues, expectedValues)
    }
    func testAddTwoNumbersExample3() {
        let l1 = ListNode.buildList(from: [9, 9, 9, 9, 9, 9, 9])
        let l2 = ListNode.buildList(from: [9, 9, 9, 9])

        let result = addTwoNumbers.addTwoNumbers(l1, l2)
        
        let expectedValues = [8, 9, 9, 9, 0, 0, 0, 1]
        var actualValues: [Int] = []
        var currentNode: ListNode? = result
        while currentNode != nil {
            actualValues.append(currentNode!.val)
            currentNode = currentNode?.next
        }
        XCTAssertEqual(actualValues, expectedValues)
    }
}