import XCTest
@testable import main

final class LowestCommonAncestorOfABinaryTreeIIITests: XCTestCase {
    var lowestCommonAncestorAfABinaryTreeIII: LowestCommonAncestorOfABinaryTreeIII!
    var root1: NodeWithParent!
    var root2: NodeWithParent!

    override func setUp() {
        super.setUp()
        lowestCommonAncestorAfABinaryTreeIII = LowestCommonAncestorOfABinaryTreeIII()
        
        // Tree 1 setup
        root1 = NodeWithParent(3)
        root1.left = NodeWithParent(5)
        root1.left?.parent = root1
        root1.right = NodeWithParent(1)
        root1.right?.parent = root1
        root1.left?.left = NodeWithParent(6)
        root1.left?.left?.parent = root1.left
        root1.left?.right = NodeWithParent(2)
        root1.left?.right?.parent = root1.left
        root1.left?.right?.left = NodeWithParent(7)
        root1.left?.right?.left?.parent = root1.left?.right
        root1.left?.right?.right = NodeWithParent(4)
        root1.left?.right?.right?.parent = root1.left?.right
        root1.right?.left = NodeWithParent(0)
        root1.right?.left?.parent = root1.right
        root1.right?.right = NodeWithParent(8)
        root1.right?.right?.parent = root1.right

        // Tree 2 setup
        root2 = NodeWithParent(1)
        root2.left = NodeWithParent(2)
        root2.left?.parent = root2
    }

    override func tearDown() {
        lowestCommonAncestorAfABinaryTreeIII = nil
        root1 = nil
        root2 = nil
        super.tearDown()
    }

    func DISABLED_testLowestCommonAncestorAfABinaryTreeIII_case1() {
        let p1 = root1.left // 5
        let q1 = root1.right // 1
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p1, q1)?.val, 3) // LCA is 3
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor2(p1, q1)?.val, 3) // LCA is 3
    }

    func testLowestCommonAncestorAfABinaryTreeIII_case2() {
        let p2 = root1.left // 5
        let q2 = root1.left?.right?.right // 4
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p2, q2)?.val, 5) // LCA is 5
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor2(p2, q2)?.val, 5) // LCA is 5
    }

    func testLowestCommonAncestorAfABinaryTreeIII_case3() {
        let p3 = root2 // 1
        let q3 = root2.left // 2
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p3, q3)?.val, 1) // LCA is 1
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor2(p3, q3)?.val, 1) // LCA is 1
    }
}