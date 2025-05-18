import XCTest
@testable import main

final class AllNodesDistanceKInBinaryTreeTests: XCTestCase {
    var allNodesDistanceKInBinaryTree: AllNodesDistanceKInBinaryTree!

    override func setUp() {
        super.setUp()
        allNodesDistanceKInBinaryTree = AllNodesDistanceKInBinaryTree()
    }

    override func tearDown() {
        allNodesDistanceKInBinaryTree = nil
        super.tearDown()
    }

    func testFindAllNodesDistanceK() {
        let root = TreeNode.buildTree(from: [1, 2, 3, 4, 5, 6, 7])
        let target = root?.left // Node with value 2
        let k = 1
        let expectedResult = [1, 4, 5] // Nodes at distance K from target
        XCTAssertEqual(allNodesDistanceKInBinaryTree.distanceK(root, target, k), expectedResult)
    }
    func testFindAllNodesDistanceK_EmptyTree() {
        let root: TreeNode? = nil
        let target: TreeNode? = nil
        let k = 0
        let expectedResult: [Int] = []
        XCTAssertEqual(allNodesDistanceKInBinaryTree.distanceK(root, target, k), expectedResult)
    }
    func testFindAllNodesDistanceK_SingleNode() {
        let root = TreeNode(1)
        let target = root
        let k = 0
        let expectedResult = [1]
        XCTAssertEqual(allNodesDistanceKInBinaryTree.distanceK(root, target, k), expectedResult)
    }
    func testFindAllNodesDistanceK_NegativeK() {
        let root = TreeNode.buildTree(from: [1, 2, 3, 4, 5, 6, 7])
        let target = root?.left // Node with value 2
        let k = -1
        let expectedResult: [Int] = []
        XCTAssertEqual(allNodesDistanceKInBinaryTree.distanceK(root, target, k), expectedResult)
    }
    func testFindAllNodesDistanceK_LargeK() {
        let root = TreeNode.buildTree(from: [1, 2, 3, 4, 5, 6, 7])
        let target = root?.left // Node with value 2
        let k = 10
        let expectedResult: [Int] = []
        XCTAssertEqual(allNodesDistanceKInBinaryTree.distanceK(root, target, k), expectedResult)
    }
}