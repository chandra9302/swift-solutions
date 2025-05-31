import XCTest
@testable import main

final class PopulatingNextRightPointersInEachNodeTests: XCTestCase {
    func testConnectThreeLevelPerfectTree() {
        /*
                1
              /   \
             2     3
            / \   / \
           4   5 6   7
        */
        
        let root = NodeWithNext(1)
        root.left = NodeWithNext(2)
        root.right = NodeWithNext(3)
        root.left?.left = NodeWithNext(4)
        root.left?.right = NodeWithNext(5)
        root.right?.left = NodeWithNext(6)
        root.right?.right = NodeWithNext(7)

        let solution = PopulatingNextRightPointersInEachNode()
        _ = solution.connect(root)

        // Level 1
        XCTAssertNil(root.next)

        // Level 2
        XCTAssertTrue(root.left?.next === root.right)
        XCTAssertNil(root.right?.next)

        // Level 3
        XCTAssertTrue(root.left?.left?.next === root.left?.right)
        XCTAssertTrue(root.left?.right?.next === root.right?.left)
        XCTAssertTrue(root.right?.left?.next === root.right?.right)
        XCTAssertNil(root.right?.right?.next)
    }

    func testConnectSingleNode() {
        let root = NodeWithNext(1)
        let solution = PopulatingNextRightPointersInEachNode()
        _ = solution.connect(root)
        XCTAssertNil(root.next)
    }

    func testConnectEmptyRoot() {
        let solution = PopulatingNextRightPointersInEachNode()
        let result = solution.connect(nil)
        XCTAssertNil(result)
    }
}