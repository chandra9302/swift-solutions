import XCTest
@testable import main

final class CheckCompletenessOfABinaryTreeTests: XCTestCase {
    var checkCompletenessOfABinaryTree: CheckCompletenessOfABinaryTree!

    override func setUp() {
        super.setUp()
        checkCompletenessOfABinaryTree = CheckCompletenessOfABinaryTree()
    }

    override func tearDown() {
        checkCompletenessOfABinaryTree = nil
        super.tearDown()
    }

    func testIsCompleteBinaryTree_case1() {
        let root = TreeNode.buildTree(from: [Int?]([1, 2, 3, 4, 5, 6, nil]))

        XCTAssertTrue(checkCompletenessOfABinaryTree.isCompleteTree(root))
    }

    func testIsCompleteBinaryTree_case2() {
        let root = TreeNode.buildTree(from: [Int?]([1, 2, 3, 4, 5, nil, 7]))

        XCTAssertFalse(checkCompletenessOfABinaryTree.isCompleteTree(root))
    }

    func testIsCompleteBinaryTree_case3() {
        let root = TreeNode.buildTree(from: [Int?]([1, 2, 3]))

        XCTAssertTrue(checkCompletenessOfABinaryTree.isCompleteTree(root))
    }
}