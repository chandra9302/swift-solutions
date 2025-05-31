import XCTest
@testable import main

final class SearchInRotatedSortedArrayTests: XCTestCase {
    var searchInRotatedSortedArray: SearchInRotatedSortedArray!

    override func setUp() {
        super.setUp()
        searchInRotatedSortedArray = SearchInRotatedSortedArray()
    }

    override func tearDown() {
        searchInRotatedSortedArray = nil
        super.tearDown()
    }

    func testSearchInRotatedSortedArrayExample1() {
        XCTAssertEqual(searchInRotatedSortedArray.search([4, 5, 6, 7, 0, 1, 2], 0), 4)
    }

    func testSearchInRotatedSortedArrayExample2() {
        XCTAssertEqual(searchInRotatedSortedArray.search([4, 5, 6, 7, 0, 1, 2], 3), -1)
    }

    func testSearchInRotatedSortedArrayExample3() {
        XCTAssertEqual(searchInRotatedSortedArray.search([1], 0), -1)
    }
}