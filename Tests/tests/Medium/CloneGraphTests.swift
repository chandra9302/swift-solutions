import XCTest
@testable import main

final class CloneGraphTests: XCTestCase {
    var cloneGraph: CloneGraph!

    override func setUp() {
        super.setUp()
        cloneGraph = CloneGraph()
    }

    override func tearDown() {
        cloneGraph = nil
        super.tearDown()
    }

    func testCloneGraph() {
        let node1 = GraphNode(1)
        let node2 = GraphNode(2)
        let node3 = GraphNode(3)
        let node4 = GraphNode(4)

        node1.neighbors = [node2, node4]
        node2.neighbors = [node1, node3]
        node3.neighbors = [node2, node4]
        node4.neighbors = [node1, node3]

        let clonedNode1 = cloneGraph.cloneGraph(node1)

        XCTAssertNotIdentical(node1, clonedNode1)
    }
}
//    func testCloneGraphWithEmptyGraph() {