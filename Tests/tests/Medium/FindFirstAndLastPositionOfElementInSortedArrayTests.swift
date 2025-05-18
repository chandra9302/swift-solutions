import XCTest
@testable import main

final class FindFirstAndLastPositionOfElementInSortedArrayTests: XCTestCase {
    var findFirstAndLastPosition: FindFirstAndLastPositionOfElementInSortedArray!

    override func setUp() {
        super.setUp()
        findFirstAndLastPosition = FindFirstAndLastPositionOfElementInSortedArray()
    }

    override func tearDown() {
        findFirstAndLastPosition = nil
        super.tearDown()
    }

    func testSearchRange_case1() {
        let nums = [5, 7, 7, 8, 8, 10]
        let target = 8
        XCTAssertEqual(findFirstAndLastPosition.searchRange(nums, target), [3, 4])
    }
    func testSearchRange_case2() {
        let nums = [5, 7, 7, 8, 8, 10]
        let target = 6
        XCTAssertEqual(findFirstAndLastPosition.searchRange(nums, target), [-1, -1])
    }
    func testSearchRange_case3() {
        let nums = [Int]()
        let target = 0
        XCTAssertEqual(findFirstAndLastPosition.searchRange(nums, target), [-1, -1])
    }
    func testSearchRange_case4() {
        let nums = [1]
        let target = 1
        XCTAssertEqual(findFirstAndLastPosition.searchRange(nums, target), [0, 0])
    }
    func testSearchRange_case5() {
        let nums = [1, 2, 3, 4, 5]
        let target = 3
        XCTAssertEqual(findFirstAndLastPosition.searchRange(nums, target), [2, 2])
    }
    func testSearchRange_case6() {
        let nums = [1, 2, 2, 2, 3]
        let target = 2
        XCTAssertEqual(findFirstAndLastPosition.searchRange(nums, target), [1, 3])
    }
}