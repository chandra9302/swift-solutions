import XCTest
@testable import main

final class ClosestBinarySearchTreeValueTests: XCTestCase {
    var closestBinarySearchTreeValue: ClosestBinarySearchTreeValue!

    override func setUp() {
        super.setUp()
        closestBinarySearchTreeValue = ClosestBinarySearchTreeValue()
    }

    override func tearDown() {
        closestBinarySearchTreeValue = nil
        super.tearDown()
    }

    func testClosestValue_case1() {
        let root = TreeNode.buildTree(from: [4, 2, 5, 1, 3])
        let target = 3.714286
        XCTAssertEqual(closestBinarySearchTreeValue.closestValue(root, target), 4)
    }

    func testClosestValue_case2() {
        let root = TreeNode(1)
        let target = 4.428571
        XCTAssertEqual(closestBinarySearchTreeValue.closestValue(root, target), 1)
    }

    func testClosestValue_case3() {
        let root = TreeNode.buildTree(from: [4, 2, 5, 1, 3])
        let target = 3.5
        XCTAssertEqual(closestBinarySearchTreeValue.closestValue(root, target), 3)
    }

    func testClosestValue_case4() {
        let root = TreeNode.buildTree(from: [1, nil, 2])
        let target = 3.428571
        XCTAssertEqual(closestBinarySearchTreeValue.closestValue(root, target), 2)
    }
}