import XCTest
@testable import main

final class ShortestPathInBinaryMatrixTests: XCTestCase {
    var shortestPathInBinaryMatrix: ShortestPathInBinaryMatrix!

    override func setUp() {
        super.setUp()
        shortestPathInBinaryMatrix = ShortestPathInBinaryMatrix()
    }

    override func tearDown() {
        shortestPathInBinaryMatrix = nil
        super.tearDown()
    }

    func testShortestPathInBinaryMatrix_case1() {
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0, 0, 0], [1, 1, 0], [1, 1, 0]]), 4)
    }

    func testShortestPathInBinaryMatrix_case2() {
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0, 0, 0], [1, 1, 1], [1, 1, 0]]), -1)
    }

    func testShortestPathInBinaryMatrix_case3() {
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0]]), 1)
    }

    func testShortestPathInBinaryMatrix_case4() {
        XCTAssertEqual(shortestPathInBinaryMatrix.shortestPathBinaryMatrix([[0, 1], [1, 0]]), 2)
    }
}