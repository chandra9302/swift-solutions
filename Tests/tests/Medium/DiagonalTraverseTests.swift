import XCTest
@testable import main

final class DiagonalTraverseTests: XCTestCase {
    var diagonalTraverse: DiagonalTraverse!

    override func setUp() {
        super.setUp()
        diagonalTraverse = DiagonalTraverse()
    }

    override func tearDown() {
        diagonalTraverse = nil
        super.tearDown()
    }

    func testFindDiagonalOrder_with3x3Matrix() {
        let matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        let expected = [1, 2, 4, 7, 5, 3, 6, 8, 9]
        XCTAssertEqual(diagonalTraverse.findDiagonalOrder(matrix), expected)
    }

    func testFindDiagonalOrder_with2x2Matrix() {
        let matrix = [[1, 2], [3, 4]]
        let expected = [1, 2, 3, 4]
        XCTAssertEqual(diagonalTraverse.findDiagonalOrder(matrix), expected)
    }

    func testFindDiagonalOrder_withEmptyMatrix() {
        let matrix: [[Int]] = []
        let expected: [Int] = []
        XCTAssertEqual(diagonalTraverse.findDiagonalOrder(matrix), expected)
    }
}