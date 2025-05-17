import XCTest
@testable import main

final class LowestCommonAncestorOfBinarySearchTreeTests: XCTestCase {
    func testLowestCommonAncestor() {
        let lowestCommonAncestor = LowestCommonAncestorOfBinarySearchTree()
        
        // Test case 1 [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
        let root1 = TreeNode.buildTree(from: [6,2,8,0,4,7,9,nil,nil,3,5])
        
        let p1 = root1?.left
        let q1 = root1?.right // 8
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root1, p: p1, q: q1)?.val, 6) // LCA is 6
        
        // Test case 2  [6,2,8,0,4,7,9,null,null,3,5] p = 2, q = 4
        let p2 = root1?.left // 2
        let q2 = root1?.left?.right // 4
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root1, p: p2, q: q2)?.val, 2) // LCA is 2

        // Test case 3 [2,1], p = 2, q = 1
        let root3 = TreeNode.buildTree(from: [2,1])
        let p3 = root3 // 2
        let q3 = root3?.left // 1
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root3, p: p3, q: q3)?.val, 2) // LCA is 2
        
        // Test case 4 [2,1], p = 1, q = 2
        let p4 = root3?.left // 1
        let q4 = root3 // 2
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root3, p: p4, q: q4)?.val, 2) // LCA is 2
    }
}