import XCTest
@testable import main

final class LowestCommonAncestorAfABinaryTreeIIITests: XCTestCase {
    func testLowestCommonAncestorAfABinaryTreeIII() {
        let lowestCommonAncestorAfABinaryTreeIII = LowestCommonAncestorAfABinaryTreeIII()
        
        // Test case 1
        let root1 = Node(3)
        root1.left = Node(5)
        root1.left?.parent = root1
        root1.right = Node(1)
        root1.right?.parent = root1
        root1.left?.left = Node(6)
        root1.left?.left?.parent = root1.left
        root1.left?.right = Node(2)
        root1.left?.right?.parent = root1.left
        root1.left?.right?.left = Node(7)
        root1.left?.right?.left?.parent = root1.left?.right
        root1.left?.right?.right = Node(4)
        root1.left?.right?.right?.parent = root1.left?.right
        root1.right?.left = Node(0)
        root1.right?.left?.parent = root1.right
        root1.right?.right = Node(8)
        root1.right?.right?.parent = root1.right
        let p1 = root1.left // 5
        let q1 = root1.right // 1
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p1, q1)?.val, 3) // LCA is 3
        
        
        // Test case 2
        let p2 = root1.left // 5
        let q2 = root1.left?.right?.right // 4
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p2, q2)?.val, 5) // LCA is 5
        
        // Test case 3
        let root2 = Node(1)
        root2.left = Node(2)
        root2.left?.parent = root2
        let p3 = root2 // 1
        let q3 = root2.left // 2
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p3, q3)?.val, 1) // LCA is 1
    }
}