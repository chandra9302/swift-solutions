import XCTest
@testable import main

final class LowestCommonAncestorAfABinaryTreeTests: XCTestCase {
    func testLowestCommonAncestor() {
        let lowestCommonAncestor = LowestCommonAncestorAfABinaryTree()
        
        // Test case 1
        let root1 = TreeNode.buildTree(from: [3,5,1,6,2,0,8,nil,nil,7,4])
        let p1 = root1?.left // 5
        let q1 = root1?.right // 1
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root1, p: p1, q: q1), root1) // LCA is 3
        
        // Test case 2
        let p2 = root1?.left // 5
        let q2 = root1?.left?.right?.right // 4
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root1, p: p2, q: q2), p2)
        
        // Test case 3
        let root3 = TreeNode.buildTree(from: [1, 2])
        let p3 = root3
        let q3 = root3?.left // 2
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root3, p: p3, q: q3), root3)
    }
}