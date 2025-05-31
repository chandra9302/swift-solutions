import XCTest
@testable import main

final class NumMatrixTests: XCTestCase {
    var numMatrix: NumMatrix!

    override func setUp() {
        super.setUp()
        numMatrix = NumMatrix([[3, 0, 1, 4, 2], [5, 6, 3, 2, 1], [1, 2, 0, 1, 5], [4, 1, 0, 1, 7], [1, 0, 3, 0, 5]])
    }

    override func tearDown() {
        numMatrix = nil
        super.tearDown()
    }
    
    func testSumRegion() {
        XCTAssertEqual(numMatrix.sumRegion(2, 1, 4, 3), 8)
        XCTAssertEqual(numMatrix.sumRegion(1, 1, 2, 2), 11)
        XCTAssertEqual(numMatrix.sumRegion(1, 2, 2, 4), 12)
        XCTAssertEqual(numMatrix.sumRegion(0, 0, 0, 0), 3)
    }
}