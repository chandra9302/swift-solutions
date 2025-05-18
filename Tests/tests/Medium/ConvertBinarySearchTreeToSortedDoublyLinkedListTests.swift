import XCTest
@testable import main

final class ConvertBinarySearchTreeToSortedDoublyLinkedListTests: XCTestCase {
    var convertBinarySearchTreeToSortedDoublyLinkedList: ConvertBinarySearchTreeToSortedDoublyLinkedList!

    override func setUp() {
        super.setUp()
        convertBinarySearchTreeToSortedDoublyLinkedList = ConvertBinarySearchTreeToSortedDoublyLinkedList()
    }

    override func tearDown() {
        convertBinarySearchTreeToSortedDoublyLinkedList = nil
        super.tearDown()
    }

    func testConvertBSTToSortedDoublyLinkedList() {
        let root = TreeNode.buildTree(from: [Int?]([4, 2, 5, 1, 3]))

        let head = convertBinarySearchTreeToSortedDoublyLinkedList.treeToDoublyList(root)

        // Check the doubly linked list
        var current: TreeNode? = head
        var result: [Int] = []
        repeat {
            if let value = current?.val {
                result.append(value)
            }
            current = current?.right
        } while current !== head

        XCTAssertEqual(result, [1, 2, 3, 4, 5])
    }

    func testConvertBSTToSortedDoublyLinkedList_testcase1() {
        let root: TreeNode? = TreeNode.buildTree(from: [Int?]([2, 1, 3]))

        let head = convertBinarySearchTreeToSortedDoublyLinkedList.treeToDoublyList(root)

        // Check the doubly linked list
        var current: TreeNode? = head
        var result: [Int] = []
        repeat {
            if let value = current?.val {
                result.append(value)
            }
            current = current?.right
        } while current !== head
        XCTAssertEqual(result, [1, 2, 3])
    }
}