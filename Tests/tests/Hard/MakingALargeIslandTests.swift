import XCTest
@testable import main

final class MakingALargeIslandTests: XCTestCase {
    var makingALargeIsland : MakingALargeIsland!

    override func setUp() {
        super.setUp()
        makingALargeIsland = MakingALargeIsland()
    }

    override func tearDown() {
        makingALargeIsland = nil
        super.tearDown()
    }
    
    func testExample1() {
        let grid = [[1, 0], [0, 1]]
        let expected = 3
        XCTAssertEqual(makingALargeIsland.largestIsland(grid), expected)
    }
    
    func testExample2() {
        let grid = [[1, 1], [1, 0]]
        let expected = 4
        XCTAssertEqual(makingALargeIsland.largestIsland(grid), expected)
    }
    
    func testExample3() {
        let grid = [[1, 1], [1, 1]]
        let expected = 4
        XCTAssertEqual(makingALargeIsland.largestIsland(grid), expected)
    }
}