import XCTest
@testable import main

final class DesignTicTacToeTests: XCTestCase {
    var designTicTacToe: DesignTicTacToe!

    override func setUp() {
        super.setUp()
        designTicTacToe = DesignTicTacToe(3) // Initialize with a 3x3 board
    }

    override func tearDown() {
        designTicTacToe = nil
        super.tearDown()
    }

    func testPlayGame() {
        XCTAssertEqual(designTicTacToe.move(0, 0, 1), 0) // Player 1 moves
        XCTAssertEqual(designTicTacToe.move(0, 2, 2), 0) // Player 2 moves
        XCTAssertEqual(designTicTacToe.move(2, 2, 1), 0) // Player 1 moves
        XCTAssertEqual(designTicTacToe.move(1, 1, 2), 0) // Player 2 moves
        XCTAssertEqual(designTicTacToe.move(2, 0, 1), 0) // Player 1 moves
        XCTAssertEqual(designTicTacToe.move(1, 0, 2), 0) // Player 2 moves
        XCTAssertEqual(designTicTacToe.move(2, 1, 1), 1) // Player 1 wins
    }

    func testPlayGameWithInvalidMove() {
        XCTAssertEqual(designTicTacToe.move(0, 0, 1), 0) // Player 1 moves
        XCTAssertEqual(designTicTacToe.move(0, 0, 2), -1) // Invalid move (cell already occupied)
        XCTAssertEqual(designTicTacToe.move(3, 3, 1), -1) // Invalid move (out of bounds)
        XCTAssertEqual(designTicTacToe.move(-1, -1, 2), -1) // Invalid move (out of bounds)
    }
}