import XCTest
@testable import main

final class MaximumSubarrayTests: XCTestCase {
    func testMaximumSubarray() {
        let maximumSubarray = MaximumSubarray()
        XCTAssertEqual(maximumSubarray.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6) // [4, -1, 2, 1]
        XCTAssertEqual(maximumSubarray.maxSubArray([1]), 1) // [1]
        XCTAssertEqual(maximumSubarray.maxSubArray([5, 4, -1, 7, 8]), 23) // [5, 4, -1, 7, 8]
    }
}