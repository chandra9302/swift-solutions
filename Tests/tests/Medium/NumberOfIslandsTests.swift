import XCTest
@testable import main

final class NumberOfIslandsTests: XCTestCase {
    var numberOfIslands: NumberOfIslands!

    override func setUp() {
        super.setUp()
        numberOfIslands = NumberOfIslands()
    }

    override func tearDown() {
        numberOfIslands = nil
        super.tearDown()
    }

    func testNumIslandsExample1() {
        let grid: [[Character]] = [
            ["1", "1", "0", "0", "0"],
            ["1", "1", "0", "0", "0"],
            ["0", "0", "1", "0", "0"],
            ["0", "0", "0", "1", "1"]
        ]
        XCTAssertEqual(numberOfIslands.numIslands(grid), 3)
    }

    func testNumIslandsExample2() {
        let grid: [[Character]] = [
            ["1", "1", "0", "0", "0"],
            ["1", "0", "0", "1", "1"],
            ["0", "0", "0", "0", "0"],
            ["0", "1", "1", "1", "1"]
        ]
        XCTAssertEqual(numberOfIslands.numIslands(grid), 3)
    }

    func testNumIslandsExample3() {
        let grid: [[Character]] = [
            ["0", "0", "0", "0"],
            ["0", "0", "0", "0"],
            ["0", "0", "0", "0"],
            ["0", "0", "0", "0"]
        ]
        XCTAssertEqual(numberOfIslands.numIslands(grid), 0)
    }

    func testNumIslandsExample4() {
        let grid: [[Character]] = [
            ["1", "0", "1", "0"],
            ["0", "1", "0", "1"],
            ["1", "0", "1", "0"],
            ["0", "1", "0", "1"]
        ]
        XCTAssertEqual(numberOfIslands.numIslands(grid), 8)
    }

    func testNumIslandsExample5() {
        let grid: [[Character]] = [
            ["1", "1", "1", "1", "0"],
            ["1", "0", "0", "1", "0"],
            ["1", "1", "0", "0", "0"],
            ["0", "0", "0", "1", "1"]
        ]
        XCTAssertEqual(numberOfIslands.numIslands(grid), 2)
    }

    func testNumIslandsExample6() {
        let grid: [[Character]] = [
            ["1", "1", "1"],
            ["1", "1", "1"],
            ["1", "1", "1"]
        ]
        XCTAssertEqual(numberOfIslands.numIslands(grid), 1)
    }

    func testNumIslandsExample7() {
        let grid = [[Character]]()
        XCTAssertEqual(numberOfIslands.numIslands(grid), 0)
    }
}