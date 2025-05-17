import XCTest
@testable import main

final class NextPermutationTests: XCTestCase {
    var nextPermutation: NextPermutation!

    override func setUp() {
        super.setUp()
        nextPermutation = NextPermutation()
    }

    override func tearDown() {
        nextPermutation = nil
        super.tearDown()
    }

    func testNextPermutation_case1() {
        var nums = [1, 2, 3]
        nextPermutation.nextPermutation(&nums)
        XCTAssertEqual(nums, [1, 3, 2])
    }

    func testNextPermutation_case2() {
        var nums = [3, 2, 1]
        nextPermutation.nextPermutation(&nums)
        XCTAssertEqual(nums, [1, 2, 3])
    }

    func testNextPermutation_case3() {
        var nums = [1, 1, 5]
        nextPermutation.nextPermutation(&nums)
        XCTAssertEqual(nums, [1, 5, 1])
    }
    
    func testNextPermutation_case4() {
        var nums = [1]
        nextPermutation.nextPermutation(&nums)
        XCTAssertEqual(nums, [1])
    }

    func testNextPermutation_case5() {
        var nums = [2, 3, 1]
        nextPermutation.nextPermutation(&nums)
        XCTAssertEqual(nums, [3, 1, 2])
    }
    func testNextPermutation_case6() {
        var nums = [1, 2, 0]
        nextPermutation.nextPermutation(&nums)
        XCTAssertEqual(nums, [2, 0, 1])
    }

    func testNextPermutation_case7() {
        var nums = [1, 3, 2]
        nextPermutation.nextPermutation(&nums)
        XCTAssertEqual(nums, [2, 1, 3])
    }
}