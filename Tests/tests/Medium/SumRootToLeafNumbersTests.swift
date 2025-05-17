import XCTest
@testable import main

final class SumRootToLeafNumbersTests: XCTestCase {
    var sumRootToLeafNumbers: SumRootToLeafNumbers!

    override func setUp() {
        super.setUp()
        sumRootToLeafNumbers = SumRootToLeafNumbers()
    }

    override func tearDown() {
        sumRootToLeafNumbers = nil
        super.tearDown()
    }

    func testSumRootToLeafNumbers_case1() {
        let root = TreeNode.buildTree(from: [1, 2, 3])
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root), 25) // 12 + 13 = 25
    }

    func testSumRootToLeafNumbers_case2() {
        let root = TreeNode.buildTree(from: [4, 9, 0, 5, 1])
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root), 1026) // 495 + 491 + 40 = 1026
    }

    func testSumRootToLeafNumbers_case3() {
        let root = TreeNode(0)
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root), 0) // No paths, sum is 0
    }

    func testSumRootToLeafNumbers_case4() {
        let root = TreeNode.buildTree(from: [1, 2])
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root), 12) // Only one path: 12
    }
}