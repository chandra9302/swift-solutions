import XCTest
@testable import main

final class ContinuousSubarraySumTests: XCTestCase {
    var continuousSubarraySum: ContinuousSubarraySum!

    override func setUp() {
        super.setUp()
        continuousSubarraySum = ContinuousSubarraySum()
    }

    override func tearDown() {
        continuousSubarraySum = nil
        super.tearDown()
    }

    func testCheckSubarraySumWithValidInputAndDivisibleBy6() {
        XCTAssertTrue(continuousSubarraySum.checkSubarraySum([23, 2, 4, 6, 7], 6))
    }

    func testCheckSubarraySumWithValidInputAndDivisibleBy13() {
        XCTAssertTrue(continuousSubarraySum.checkSubarraySum([23, 2, 4, 6, 7], 13))
    }

    func testCheckSubarraySumWithValidInputAndNotDivisibleBy0() {
        XCTAssertFalse(continuousSubarraySum.checkSubarraySum([23, 2, 4, 6, 7], 0))
    }

    func testCheckSubarraySumWithShortArrayAndNotDivisibleBy0() {
        XCTAssertFalse(continuousSubarraySum.checkSubarraySum([1, 2], 0))
    }
}