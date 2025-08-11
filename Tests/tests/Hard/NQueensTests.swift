import XCTest
@testable import main

final class NQueensTests: XCTestCase {
    var solution: NQueens!

    override func setUp() {
        super.setUp()
        solution = NQueens()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testNEquals4() {
        let n = 4
        let expected: Set<[String]> = Set([
            [".Q..","...Q","Q...","..Q."],
            ["..Q.","Q...","...Q",".Q.."]
        ])
        let result = Set(solution.solveNQueens(n))
        XCTAssertEqual(result, expected)
    }

    func testNEquals1() {
        let n = 1
        let expected: Set<[String]> = Set([["Q"]])
        let result = Set(solution.solveNQueens(n))
        XCTAssertEqual(result, expected)
    }

    func testNEquals2() {
        let n = 2
        let expected: Set<[String]> = Set([])
        let result = Set(solution.solveNQueens(n))
        XCTAssertEqual(result, expected)
    }

    func testNEquals3() {
        let n = 3
        let expected: Set<[String]> = Set([])
        let result = Set(solution.solveNQueens(n))
        XCTAssertEqual(result, expected)
    }
}
