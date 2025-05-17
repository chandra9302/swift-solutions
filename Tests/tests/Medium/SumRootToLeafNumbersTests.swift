import XCTest
@testable import main

final class SumRootToLeafNumbersTests: XCTestCase {
    func testSumRootToLeafNumbers() {
        let sumRootToLeafNumbers = SumRootToLeafNumbers()
        
        // Test case 1
        let root1 = TreeNode.buildTree(from: [1, 2, 3])
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root1), 25) // 12 + 13 = 25
        
        // Test case 2
        let root2 = TreeNode.buildTree(from: [4, 9, 0, 5, 1])
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root2), 1026) // 495 + 491 + 40 = 1026
        
        // Test case 3
        let root3 = TreeNode(0)
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root3), 0) // No paths, sum is 0
        
        // Test case 4
        let root4 = TreeNode.buildTree(from: [1, 2])
        XCTAssertEqual(sumRootToLeafNumbers.sumNumbers(root4), 12) // Only one path: 12
    }
}