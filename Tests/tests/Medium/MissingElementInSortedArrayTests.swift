import XCTest
@testable import main

final class MissingElementInSortedArrayTests: XCTestCase {
    var solver: MissingElementInSortedArray!

    override func setUp() {
        super.setUp()
        solver = MissingElementInSortedArray()
    }

    override func tearDown() {
        solver = nil
        super.tearDown()
    }

    func testExample1() {
        let nums = [4, 7, 9, 10]
        let k = 1
        XCTAssertEqual(solver.missingElement(nums, k), 5)
    }

    func testExample2() {
        let nums = [4, 7, 9, 10]
        let k = 3
        XCTAssertEqual(solver.missingElement(nums, k), 8)
    }

    func testExample3() {
        let nums = [1, 2, 4]
        let k = 3
        XCTAssertEqual(solver.missingElement(nums, k), 6)
    }
}