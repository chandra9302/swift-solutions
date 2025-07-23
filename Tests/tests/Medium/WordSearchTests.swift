import XCTest
@testable import main

final class WordSearchTests: XCTestCase {
    var solution: WordSearch!

    override func setUp() {
        super.setUp()
        solution = WordSearch()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let board: [[Character]] = [
            ["A","B","C","E"],
            ["S","F","C","S"],
            ["A","D","E","E"]
        ]
        let word = "ABCCED"
        XCTAssertTrue(solution.exist(board, word))
    }

    func testExample2() {
        let board: [[Character]] = [
            ["A","B","C","E"],
            ["S","F","C","S"],
            ["A","D","E","E"]
        ]
        let word = "SEE"
        XCTAssertTrue(solution.exist(board, word))
    }

    func testExample3() {
        let board: [[Character]] = [
            ["A","B","C","E"],
            ["S","F","C","S"],
            ["A","D","E","E"]
        ]
        let word = "ABCB"
        XCTAssertFalse(solution.exist(board, word))
    }

    func testSingleCellTrue() {
        let board: [[Character]] = [["A"]]
        let word = "A"
        XCTAssertTrue(solution.exist(board, word))
    }

    func testSingleCellFalse() {
        let board: [[Character]] = [["A"]]
        let word = "B"
        XCTAssertFalse(solution.exist(board, word))
    }
}
