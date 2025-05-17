import XCTest
@testable import main

final class KthLargestElementInAnArrayTests: XCTestCase {
    var kthLargestElementInAnArray: KthLargestElementInAnArray!

    override func setUp() {
        super.setUp()
        kthLargestElementInAnArray = KthLargestElementInAnArray()
    }

    override func tearDown() {
        kthLargestElementInAnArray = nil
        super.tearDown()
    }

    func testFindKthLargestWithExample1() {
        XCTAssertEqual(kthLargestElementInAnArray.findKthLargest([3, 2, 1, 5, 6, 4], 2), 5)
    }

    func testFindKthLargestWithExample2() {
        XCTAssertEqual(kthLargestElementInAnArray.findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4), 4)
    }

    func testFindKthLargestWithSingleElement() {
        XCTAssertEqual(kthLargestElementInAnArray.findKthLargest([1], 1), 1)
    }
}