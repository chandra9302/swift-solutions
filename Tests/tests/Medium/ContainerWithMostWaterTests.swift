import XCTest
@testable import main

final class ContainerWithMostWaterTests: XCTestCase {
    var solver: ContainerWithMostWater!

    override func setUp() {
        super.setUp()
        solver = ContainerWithMostWater()
    }

    override func tearDown() {
        solver = nil
        super.tearDown()
    }

    func testExample1() {
        let height = [1,8,6,2,5,4,8,3,7]
        XCTAssertEqual(solver.maxArea(height), 49)
    }

    func testExample2() {
        let height = [1,1]
        XCTAssertEqual(solver.maxArea(height), 1)
    }

    func testDecreasingHeights() {
        let height = [5,4,3,2,1]
        XCTAssertEqual(solver.maxArea(height), 6)
    }

    func testAllSameHeight() {
        let height = [3,3,3,3,3]
        XCTAssertEqual(solver.maxArea(height), 12)
    }

    func testSingleElement() {
        let height = [5]
        XCTAssertEqual(solver.maxArea(height), 0)
    }

    func testEmptyArray() {
        let height: [Int] = []
        XCTAssertEqual(solver.maxArea(height), 0)
    }
}