import XCTest
@testable import main

final class MergeSortedArrayTests: XCTestCase {
    var mergeSortedArray: MergeSortedArray!

    override func setUp() {
        super.setUp()
        mergeSortedArray = MergeSortedArray()
    }

    override func tearDown() {
        mergeSortedArray = nil
        super.tearDown()
    }

    func testMergeSortedArrays_case1() {
        var nums1 = [1, 2, 3, 0, 0, 0]
        let m = 3
        let nums2 = [2, 5, 6]
        let n = 3
        mergeSortedArray.merge(&nums1, m, nums2, n)
        XCTAssertEqual(nums1, [1, 2, 2, 3, 5, 6])
    }

    func testMergeSortedArrays_case2() {
        var nums1 = [1]
        let m = 1
        let nums2: [Int] = []
        let n = 0
        mergeSortedArray.merge(&nums1, m, nums2, n)
        XCTAssertEqual(nums1, [1])
    }

    func testMergeSortedArrays_case3() {
        var nums1: [Int] = [0]
        let m = 0
        let nums2 = [1]
        let n = 1
        mergeSortedArray.merge(&nums1, m, nums2, n)
        XCTAssertEqual(nums1, [1])
    }
}