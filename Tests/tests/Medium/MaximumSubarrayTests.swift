import XCTest
@testable import main

final class MaximumSubarrayTests: XCTestCase {
    var maximumSubarray: MaximumSubarray!

    override func setUp() {
        super.setUp()
        maximumSubarray = MaximumSubarray()
    }

    override func tearDown() {
        maximumSubarray = nil
        super.tearDown()
    }

    func testMaximumSubarrayExample1() {
        XCTAssertEqual(maximumSubarray.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6) // [4, -1, 2, 1]
    }

    func testMaximumSubarrayExample2() {
        XCTAssertEqual(maximumSubarray.maxSubArray([1]), 1) // [1]
    }

    func testMaximumSubarrayExample3() {
        XCTAssertEqual(maximumSubarray.maxSubArray([5, 4, -1, 7, 8]), 23) // [5, 4, -1, 7, 8]
    }
}