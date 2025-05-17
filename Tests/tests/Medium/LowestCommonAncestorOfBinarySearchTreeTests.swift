import XCTest
@testable import main

final class LowestCommonAncestorOfBinarySearchTreeTests: XCTestCase {
    var lowestCommonAncestor: LowestCommonAncestorOfBinarySearchTree!

    override func setUp() {
        super.setUp()
        lowestCommonAncestor = LowestCommonAncestorOfBinarySearchTree()
    }

    override func tearDown() {
        lowestCommonAncestor = nil
        super.tearDown()
    }

    func testLowestCommonAncestor_case1() {
        // Test case 1 [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
        let root = TreeNode.buildTree(from: [6,2,8,0,4,7,9,nil,nil,3,5])
        let p = root?.left // 2
        let q = root?.right // 8
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root, p: p, q: q)?.val, 6) // LCA is 6
    }

    func testLowestCommonAncestor_case2() {
        // Test case 2 [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4
        let root = TreeNode.buildTree(from: [6,2,8,0,4,7,9,nil,nil,3,5])
        let p = root?.left // 2
        let q = root?.left?.right // 4
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root, p: p, q: q)?.val, 2) // LCA is 2
    }

    func testLowestCommonAncestor_case3() {
        // Test case 3 [2,1], p = 2, q = 1
        let root = TreeNode.buildTree(from: [2,1])
        let p = root // 2
        let q = root?.left // 1
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root, p: p, q: q)?.val, 2) // LCA is 2
    }

    func testLowestCommonAncestor_case4() {
        // Test case 4 [2,1], p = 1, q = 2
        let root = TreeNode.buildTree(from: [2,1])
        let p = root?.left // 1
        let q = root // 2
        XCTAssertEqual(lowestCommonAncestor.lowestCommonAncestor(root: root, p: p, q: q)?.val, 2) // LCA is 2
    }
}