import XCTest
@testable import main

final class SortColorsTests: XCTestCase {
    func testSortColors() {
        let sortColors = SortColors()
        var nums1 = [2, 0, 2, 1, 1, 0]
        sortColors.sortColors(&nums1)
        XCTAssertEqual(nums1, [0, 0, 1, 1, 2, 2])
        
        var nums2 = [2, 0, 1]
        sortColors.sortColors(&nums2)
        XCTAssertEqual(nums2, [0, 1, 2])
        
        var nums3 = [0]
        sortColors.sortColors(&nums3)
        XCTAssertEqual(nums3, [0])
        
        var nums4 = [1]
        sortColors.sortColors(&nums4)
        XCTAssertEqual(nums4, [1])
        
        var nums5 = [Int]()
        sortColors.sortColors(&nums5)
        XCTAssertEqual(nums5, [])
    }
}