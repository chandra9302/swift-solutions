import XCTest
@testable import main

final class BinaryTreeRightSideViewTests: XCTestCase {
    var binaryTreeRightSideView: BinaryTreeRightSideView!

    override func setUp() {
        super.setUp()
        binaryTreeRightSideView = BinaryTreeRightSideView()
    }

    override func tearDown() {
        binaryTreeRightSideView = nil
        super.tearDown()
    }

    func testBinaryTreeRightSideView_case1() {
        let root1 = TreeNode.buildTree(from: [1,2,3,nil,5,nil,4])
        XCTAssertEqual(binaryTreeRightSideView.rightSideView(root1), [1, 3, 4])
    }

    func testBinaryTreeRightSideView_case2() {
        let root2 = TreeNode.buildTree(from: [1,2,3,4,nil,nil,nil,5])
        XCTAssertEqual(binaryTreeRightSideView.rightSideView(root2), [1, 3, 4, 5])
    }

    func testBinaryTreeRightSideView_case3() {
        let root3 = TreeNode.buildTree(from: [1, nil, 3])
        XCTAssertEqual(binaryTreeRightSideView.rightSideView(root3), [1, 3])
    }

    func testBinaryTreeRightSideView_case4() {
        let root4 = TreeNode.buildTree(from: [Int]())
        XCTAssertEqual(binaryTreeRightSideView.rightSideView(root4).isEmpty, true)
    }
}