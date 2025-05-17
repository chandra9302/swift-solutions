import XCTest
@testable import main

final class SubarraySumEqualsKTests: XCTestCase {
    func testSubarraySumEqualsK() {
        let subarraySumEqualsK = SubarraySumEqualsK()
        XCTAssertEqual(subarraySumEqualsK.subarraySum([1, 1, 1], 2), 2)
        XCTAssertEqual(subarraySumEqualsK.subarraySum([1, 2, 3], 3), 2)
        XCTAssertEqual(subarraySumEqualsK.subarraySum([1, -1, 0], 0), 3)
        XCTAssertEqual(subarraySumEqualsK.subarraySum([0, 0, 0], 0), 6)
    }
}