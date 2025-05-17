import XCTest
@testable import main

final class ConstructBinaryTreeFromStringTests: XCTestCase {
    func testConstructBinaryTreeFromString() {
        let constructBinaryTreeFromString = ConstructBinaryTreeFromString()
        
        // Test case 1
        let s1 = "4(2(3)(1))(6(5))"
        let expected1 = TreeNode.buildTree(from: [4, 2, 6, 3, 1, 5])
        let actual1 = constructBinaryTreeFromString.str2tree(s1)
        XCTAssertEqual(TreeNode.isSameTree(expected1, actual1), true)
        
        // Test case 2
        let s2 = "4(2)(3)"
        let expected2 = TreeNode.buildTree(from: [4, 2, 3])
        let actual2 = constructBinaryTreeFromString.str2tree(s2)
        XCTAssertEqual(TreeNode.isSameTree(expected2, actual2), true)
        
        // Test case 3
        let s3 = "4"
        let expected3 = TreeNode(4)
        let actual3 = constructBinaryTreeFromString.str2tree(s3)
        XCTAssertEqual(TreeNode.isSameTree(expected3, actual3), true)
        
        // Test case 4
        let s4 = ""
        let expected4: TreeNode? = nil
        let actual4 = constructBinaryTreeFromString.str2tree(s4)
        XCTAssertEqual(TreeNode.isSameTree(expected4, actual4), true)
    }
}