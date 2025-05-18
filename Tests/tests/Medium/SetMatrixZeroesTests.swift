import XCTest
@testable import main

final class SetMatrixZeroesTests: XCTestCase {
    var setMatrixZeroes: SetMatrixZeroes!

    override func setUp() {
        super.setUp()
        setMatrixZeroes = SetMatrixZeroes()
    }

    override func tearDown() {
        setMatrixZeroes = nil
        super.tearDown()
    }

    func testSetMatrixZeroesExample1() {
        var matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
        setMatrixZeroes.setZeroes(&matrix)
        XCTAssertEqual(matrix, [[1, 0, 1], [0, 0, 0], [1, 0, 1]])
    }
    func testSetMatrixZeroesExample2() {
        var matrix = [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]
        setMatrixZeroes.setZeroes(&matrix)
        XCTAssertEqual(matrix, [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]])
    }
    func testSetMatrixZeroesSingleRow() {
        var matrix = [[1, 2, 3]]
        setMatrixZeroes.setZeroes(&matrix)
        XCTAssertEqual(matrix, [[1, 2, 3]])
    }
}