import XCTest
@testable import main

final class BinaryTreeVerticalOrderTraversalTests: XCTestCase {
    func testBinaryTreeVerticalOrderTraversal() {
        let binaryTreeVerticalOrderTraversal = BinaryTreeVerticalOrderTraversal()
        
        // Test case 1
        let root1 = TreeNode.buildTree(from: [3,9,20,nil,nil,15,7])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root1), [[9], [3, 15], [20], [7]])
        
        // Test case 2
        let root2 = TreeNode.buildTree(from: [1,2,3,4,5,nil,6])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root2), [[4], [2], [1, 5], [3], [6]])
        
        // Test case 3
        let root3: TreeNode? = nil
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root3).isEmpty, true)

        // Test case 4
        let root4 = TreeNode.buildTree(from: [3,9,8,4,0,1,7])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root4), [[4],[9],[3,0,1],[8],[7]])

        // Test case 5
        let root5 = TreeNode.buildTree(from: [1,2,3,4,10,9,11,nil,5,nil,nil,nil,nil,nil,nil,nil,6])
        XCTAssertEqual(binaryTreeVerticalOrderTraversal.verticalOrder(root5), [[4],[2,5],[1,10,9,6],[3],[11]])
    }
}