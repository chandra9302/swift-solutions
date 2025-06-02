import XCTest
@testable import main

final class ContainsDuplicateIITests: XCTestCase {
    var containsDuplicateII: ContainsDuplicateII!

    override func setUp() {
        super.setUp()
        containsDuplicateII = ContainsDuplicateII()
    }

    override func tearDown() {
        containsDuplicateII = nil
        super.tearDown()
    }

    func testContainsNearbyDuplicate_case1() {
        let nums = [1, 2, 3, 1]
        let k = 3
        XCTAssertTrue(containsDuplicateII.containsNearbyDuplicate(nums, k))
    }

    func testContainsNearbyDuplicate_case2() {
        let nums = [1, 0, 1, 1]
        let k = 1
        XCTAssertTrue(containsDuplicateII.containsNearbyDuplicate(nums, k))
    }

    func testContainsNearbyDuplicate_case3() {
        let nums = [1, 2, 3, 4, 5]
        let k = 2
        XCTAssertFalse(containsDuplicateII.containsNearbyDuplicate(nums, k))
    }
}