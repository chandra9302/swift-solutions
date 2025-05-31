import XCTest
@testable import main

final class DiameterOfBinaryTreeTests: XCTestCase {
    var diameterOfBinaryTree: DiameterOfBinaryTree!

    override func setUp() {
        super.setUp()
        diameterOfBinaryTree = DiameterOfBinaryTree()
    }

    override func tearDown() {
        diameterOfBinaryTree = nil
        super.tearDown()
    }
    
    func testDiameterOfBinaryTree() {
        let root = TreeNode.buildTree(from: ([1, 2, 3, 4, 5]))
        
        let result = diameterOfBinaryTree.diameterOfBinaryTree(root)
        XCTAssertEqual(result, 3) // The diameter is the path 4 -> 2 -> 1 -> 3
    }
    
    func testEmptyTree() {
        let result = diameterOfBinaryTree.diameterOfBinaryTree(nil)
        XCTAssertEqual(result, 0) // Diameter of an empty tree is 0
    }
    
    func testSingleNodeTree() {
        let root = TreeNode.buildTree(from: [1, 2])
        let result = diameterOfBinaryTree.diameterOfBinaryTree(root)
        XCTAssertEqual(result, 1)
    }
}