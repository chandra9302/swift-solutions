import XCTest
@testable import main

final class SearchInRotatedSortedArrayTests: XCTestCase {
    func testSearchInRotatedSortedArrayExample1() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([4, 5, 6, 7, 0, 1, 2], 0), 4)
    }

    func testSearchInRotatedSortedArrayExample2() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([4, 5, 6, 7, 0, 1, 2], 3), -1)
    }

    func testSearchInRotatedSortedArrayExample3() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([1], 0), -1)
    }

    func testSearchInRotatedSortedArraySingleElementFound() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([1], 1), 0)
    }

    func testSearchInRotatedSortedArrayNotRotated() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([1,2,3,4,5], 3), 2)
    }

    func testSearchInRotatedSortedArrayEmpty() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([], 1), -1)
    }

    func testSearchInRotatedSortedArrayAllSameExceptOne() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([2,2,2,3,2,2], 3), 3)
    }
    
    func testSearchInRotatedSortedArrayTargetAtEnd() {
        XCTAssertEqual(SearchInRotatedSortedArray.search([6,7,8,1,2,3,4,5], 5), 7)
    }
}