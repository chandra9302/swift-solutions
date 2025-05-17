import XCTest
@testable import main

final class BinaryTreeVerticalOrderTraversalTests: XCTestCase {
    var binaryTreeVerticalOrderTraversal: BinaryTreeVerticalOrderTraversal!

    override func setUp() {
        super.setUp()
        binaryTreeVerticalOrderTraversal = BinaryTreeVerticalOrderTraversal()
    }

    func testBinaryTreeVerticalOrderTraversal_case1() {
        let root = TreeNode.buildTree(from: [3,9,20,nil,nil,15,7])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root), [[9], [3, 15], [20], [7]])
    }

    func testBinaryTreeVerticalOrderTraversal_case2() {
        let root = TreeNode.buildTree(from: [1,2,3,4,5,nil,6])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root), [[4], [2], [1, 5], [3], [6]])
    }

    func testBinaryTreeVerticalOrderTraversal_case3() {
        let root: TreeNode? = nil
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root).isEmpty, true)
    }

    func testBinaryTreeVerticalOrderTraversal_case4() {
        let root = TreeNode.buildTree(from: [3,9,8,4,0,1,7])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root), [[4],[9],[3,0,1],[8],[7]])
    }

    func testBinaryTreeVerticalOrderTraversal_case5() {
        let root = TreeNode.buildTree(from: [1,2,3,4,10,9,11,nil,5,nil,nil,nil,nil,nil,nil,nil,6])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root), [[4],[2,5],[1,10,9,6],[3],[11]])
    }
}