import XCTest
@testable import main

final class KthLargestElementInAnArrayTests: XCTestCase {
    func testKthLargestElementInAnArray() {
        let kthLargestElementInAnArray = KthLargestElementInAnArray()
        XCTAssertEqual(kthLargestElementInAnArray.findKthLargest([3, 2, 1, 5, 6, 4], 2), 5)
        XCTAssertEqual(kthLargestElementInAnArray.findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4), 4)
        XCTAssertEqual(kthLargestElementInAnArray.findKthLargest([1], 1), 1)
    }
}