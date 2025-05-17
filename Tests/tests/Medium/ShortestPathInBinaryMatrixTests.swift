import XCTest
@testable import main

final class ShortestPathInBinaryMatrixTests: XCTestCase {
    func testShortestPathInBinaryMatrix() {
        let shortestPathInBinaryMatrix = ShortestPathInBinaryMatrix()
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0, 0, 0], [1, 1, 0], [1, 1, 0]]), 4)
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0, 0, 0], [1, 1, 1], [1, 1, 0]]), -1)
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0]]), 1)
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0, 1], [1, 0]]), 2)
    }
}