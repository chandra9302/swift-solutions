import XCTest
@testable import main

final class ThreeSumTests: XCTestCase {
    var threeSum: ThreeSum!

    override func setUp() {
        super.setUp()
        threeSum = ThreeSum()
    }

    override func tearDown() {
        threeSum = nil
        super.tearDown()
    }

    func testThreeSumExample1() {
        let nums = [-1, 0, 1, 2, -1, -4]
        let expected = [[-1, -1, 2], [-1, 0, 1]]
        XCTAssertEqual(threeSum.threeSum(nums), expected)
    }

    func testThreeSumExample2() {
        let nums = [Int]()
        let expected: [[Int]] = []
        XCTAssertEqual(threeSum.threeSum(nums), expected)
    }

    func testThreeSumExample3() {
        let nums = [0,0,0]
        let expected: [[Int]] = [[0,0,0]]
        XCTAssertEqual(threeSum.threeSum(nums), expected)
    }
}