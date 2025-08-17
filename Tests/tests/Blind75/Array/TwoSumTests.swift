import XCTest
@testable import main
final class TwoSumTests: XCTestCase {
    func testTwoSum() {
        XCTAssertEqual(TwoSum.twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(TwoSum.twoSum([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(TwoSum.twoSum([3, 3], 6), [0, 1])
    }
}