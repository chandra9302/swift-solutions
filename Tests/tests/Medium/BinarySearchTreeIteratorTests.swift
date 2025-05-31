import XCTest
@testable import main

final class BinarySearchTreeIteratorTests: XCTestCase {

    func testBinarySearchTreeIterator() {
        let root = TreeNode(7)
        root.left = TreeNode(3)
        root.right = TreeNode(15)
        root.right?.left = TreeNode(9)
        root.right?.right = TreeNode(20)

        let iterator = BinarySearchTreeIterator(root)

        XCTAssertEqual(iterator.next(), 3)
        XCTAssertEqual(iterator.next(), 7)
        XCTAssertTrue(iterator.hasNext())
        XCTAssertEqual(iterator.next(), 9)
        XCTAssertTrue(iterator.hasNext())
        XCTAssertEqual(iterator.next(), 15)
        XCTAssertTrue(iterator.hasNext())
        XCTAssertEqual(iterator.next(), 20)
        XCTAssertFalse(iterator.hasNext())
    }
}