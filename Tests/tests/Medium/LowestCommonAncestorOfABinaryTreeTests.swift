import XCTest
@testable import main

final class LowestCommonAncestorOfABinaryTreeTests: XCTestCase {
    var lowestCommonAncestor: LowestCommonAncestorOfABinaryTree!

    override func setUp() {
        super.setUp()
        lowestCommonAncestor = LowestCommonAncestorOfABinaryTree()
    }

    override func tearDown() {
        lowestCommonAncestor = nil
        super.tearDown()
    }

    func testLowestCommonAncestor_case1() {
        let root = TreeNode.buildTree(from: [3,5,1,6,2,0,8,nil,nil,7,4])
        let p = root?.left // 5
        let q = root?.right // 1
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root, p: p, q: q), root) // LCA is 3
    }

    func testLowestCommonAncestor_case2() {
        let root = TreeNode.buildTree(from: [3,5,1,6,2,0,8,nil,nil,7,4])
        let p = root?.left // 5
        let q = root?.left?.right?.right // 4
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root, p: p, q: q), p)
    }

    func testLowestCommonAncestor_case3() {
        let root = TreeNode.buildTree(from: [1, 2])
        let p = root
        let q = root?.left // 2
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root, p: p, q: q), root)
    }
}