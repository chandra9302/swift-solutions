import XCTest
@testable import main

final class RemoveDuplicatesFromSortedArrayTests: XCTestCase {
    var removeDuplicatesFromSortedArray: RemoveDuplicatesFromSortedArray!

    override func setUp() {
        super.setUp()
        removeDuplicatesFromSortedArray = RemoveDuplicatesFromSortedArray()
    }

    override func tearDown() {
        removeDuplicatesFromSortedArray = nil
        super.tearDown()
    }

    func testRemoveDuplicates_case1() {
        var nums = [1, 1, 2]
        let length = removeDuplicatesFromSortedArray.removeDuplicates(&nums)
        XCTAssertEqual(length, 2)
        XCTAssertEqual(nums.prefix(length), [1, 2])
    }

    func testRemoveDuplicates_case2() {
        var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
        let length = removeDuplicatesFromSortedArray.removeDuplicates(&nums)
        XCTAssertEqual(length, 5)
        XCTAssertEqual(nums.prefix(length), [0, 1, 2, 3, 4])
    }

    func testRemoveDuplicates_case3() {
        var nums = [Int]()
        let length = removeDuplicatesFromSortedArray.removeDuplicates(&nums)
        XCTAssertEqual(length, 0)
        XCTAssertTrue(nums.isEmpty)
    }
}