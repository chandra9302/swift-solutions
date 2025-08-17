import XCTest
@testable import main

final class FindMinimumInRotatedSortedArrayTests: XCTestCase {
    // No instance needed, use static method

    func testFindMinWithExample1() {
        XCTAssertEqual(FindMinimumInRotatedSortedArray.findMin([3, 4, 5, 1, 2]), 1)
    }

    func testFindMinWithExample2() {
        XCTAssertEqual(FindMinimumInRotatedSortedArray.findMin([4, 5, 6, 7, 0, 1, 2]), 0)
    }

    func testFindMinWithExample3() {
        XCTAssertEqual(FindMinimumInRotatedSortedArray.findMin([11, 13, 15, 17]), 11)
    }
}