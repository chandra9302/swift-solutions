import XCTest
@testable import main

final class RangeSumOfBSTTests: XCTestCase {
    var rangeSumOfBST: RangeSumOfBST!

    override func setUp() {
        super.setUp()
        rangeSumOfBST = RangeSumOfBST()
    }

    override func tearDown() {
        rangeSumOfBST = nil
        super.tearDown()
    }

    func testRangeSumBST_case1() {
        let root = TreeNode.buildTree(from: [10, 5, 15, 3, 7, nil, 18])
        let result = rangeSumOfBST.rangeSumBST(root, 7, 15)
        XCTAssertEqual(result, 32) // 7 + 10 + 15
    }

    func testRangeSumBST_case2() {
        let root = TreeNode.buildTree(from: [10,5,15,3,7,13,18,1,nil,6])
        let result = rangeSumOfBST.rangeSumBST(root, 6, 10)
        XCTAssertEqual(result, 23) // 6 + 7 + 10
    }

    func testRangeSumBST_case3() {
        let root = TreeNode.buildTree(from: [10])
        let result = rangeSumOfBST.rangeSumBST(root, 5, 15)
        XCTAssertEqual(result, 10) // Only the root node is within the range
    }

    func testRangeSumBST_emptyTree() {
        let result = rangeSumOfBST.rangeSumBST(nil, 1, 10)
        XCTAssertEqual(result, 0) // Sum of an empty tree is zero
    }
}