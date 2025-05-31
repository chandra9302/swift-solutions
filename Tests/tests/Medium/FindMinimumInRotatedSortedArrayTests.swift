import XCTest
@testable import main

final class FindMinimumInRotatedSortedArrayTests: XCTestCase {
    var findMinimumInRotatedSortedArray: FindMinimumInRotatedSortedArray!

    override func setUp() {
        super.setUp()
        findMinimumInRotatedSortedArray = FindMinimumInRotatedSortedArray()
    }

    override func tearDown() {
        findMinimumInRotatedSortedArray = nil
        super.tearDown()
    }

    func testFindMinWithExample1() {
        XCTAssertEqual(findMinimumInRotatedSortedArray.findMin([3, 4, 5, 1, 2]), 1)
    }

    func testFindMinWithExample2() {
        XCTAssertEqual(findMinimumInRotatedSortedArray.findMin([4, 5, 6, 7, 0, 1, 2]), 0)
    }

    func testFindMinWithExample3() {
        XCTAssertEqual(findMinimumInRotatedSortedArray.findMin([11, 13, 15, 17]), 11)
    }
}