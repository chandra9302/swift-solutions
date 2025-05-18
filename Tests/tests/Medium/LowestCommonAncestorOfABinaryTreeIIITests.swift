import XCTest
@testable import main

final class LowestCommonAncestorOfABinaryTreeIIITests: XCTestCase {
    var lowestCommonAncestorAfABinaryTreeIII: LowestCommonAncestorOfABinaryTreeIII!
    var root1: Node!
    var root2: Node!

    override func setUp() {
        super.setUp()
        lowestCommonAncestorAfABinaryTreeIII = LowestCommonAncestorOfABinaryTreeIII()
        
        // Tree 1 setup
        root1 = Node(3)
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

        // Tree 2 setup
        root2 = Node(1)
        root2.left = Node(2)
        root2.left?.parent = root2
    }

    override func tearDown() {
        lowestCommonAncestorAfABinaryTreeIII = nil
        root1 = nil
        root2 = nil
        super.tearDown()
    }

    func testLowestCommonAncestorAfABinaryTreeIII_case1() {
        let p1 = root1.left // 5
        let q1 = root1.right // 1
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p1, q1)?.val, 3) // LCA is 3
    }

    func testLowestCommonAncestorAfABinaryTreeIII_case2() {
        let p2 = root1.left // 5
        let q2 = root1.left?.right?.right // 4
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p2, q2)?.val, 5) // LCA is 5
    }

    func testLowestCommonAncestorAfABinaryTreeIII_case3() {
        let p3 = root2 // 1
        let q3 = root2.left // 2
        XCTAssertEqual(lowestCommonAncestorAfABinaryTreeIII.lowestCommonAncestor(p3, q3)?.val, 1) // LCA is 1
    }
}