import XCTest
@testable import main
final class TwoSumTest: XCTestCase {
    func testTwoSum() {
        let twoSum = TwoSum()
        XCTAssertEqual(twoSum.twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(twoSum.twoSum([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(twoSum.twoSum([3, 3], 6), [0, 1])
    }
}