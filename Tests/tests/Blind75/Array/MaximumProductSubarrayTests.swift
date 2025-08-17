import XCTest
@testable import main

final class MaximumProductSubarrayTests: XCTestCase {
    func testMaxProductPositiveAndNegative() {
        let nums = [2,3,-2,4]
        XCTAssertEqual(MaximumProductSubarray.maxProduct(nums), 6)
    }

    func testMaxProductAllNegative() {
        let nums = [-2,-3,-4]
        XCTAssertEqual(MaximumProductSubarray.maxProduct(nums), 12)
    }

    func testMaxProductSingleElement() {
        let nums = [5]
        XCTAssertEqual(MaximumProductSubarray.maxProduct(nums), 5)
    }

    func testMaxProductZero() {
        let nums = [0,2]
        XCTAssertEqual(MaximumProductSubarray.maxProduct(nums), 2)
    }

    func testMaxProductEmpty() {
        let nums: [Int] = []
        XCTAssertEqual(MaximumProductSubarray.maxProduct(nums), 0)
    }

    func testMaxProductMixed() {
        let nums = [2,-5,-2,-4,3]
        XCTAssertEqual(MaximumProductSubarray.maxProduct(nums), 24)
    }
}
