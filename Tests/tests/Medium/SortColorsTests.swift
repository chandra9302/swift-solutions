import XCTest
@testable import main

final class SortColorsTests: XCTestCase {
    var sortColors: SortColors!

    override func setUp() {
        super.setUp()
        sortColors = SortColors()
    }

    override func tearDown() {
        sortColors = nil
        super.tearDown()
    }

    func testSortColorsWithMultipleElements() {
        var nums = [2, 0, 2, 1, 1, 0]
        sortColors.sortColors(&nums)
        XCTAssertEqual(nums, [0, 0, 1, 1, 2, 2])
    }

    func testSortColorsWithThreeElements() {
        var nums = [2, 0, 1]
        sortColors.sortColors(&nums)
        XCTAssertEqual(nums, [0, 1, 2])
    }

    func testSortColorsWithSingleZero() {
        var nums = [0]
        sortColors.sortColors(&nums)
        XCTAssertEqual(nums, [0])
    }

    func testSortColorsWithSingleOne() {
        var nums = [1]
        sortColors.sortColors(&nums)
        XCTAssertEqual(nums, [1])
    }

    func testSortColorsWithEmptyArray() {
        var nums = [Int]()
        sortColors.sortColors(&nums)
        XCTAssertEqual(nums, [])
    }
}