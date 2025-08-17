import XCTest
@testable import main

final class ContainsDuplicateTests: XCTestCase {
    func testContainsDuplicateTrue() {
        let nums = [1,2,3,1]
        XCTAssertTrue(ContainsDuplicate.containsDuplicate(nums))
    }

    func testContainsDuplicateFalse() {
        let nums = [1,2,3,4]
        XCTAssertFalse(ContainsDuplicate.containsDuplicate(nums))
    }

    func testEmptyArray() {
        let nums: [Int] = []
        XCTAssertFalse(ContainsDuplicate.containsDuplicate(nums))
    }

    func testSingleElement() {
        let nums = [42]
        XCTAssertFalse(ContainsDuplicate.containsDuplicate(nums))
    }

    func testMultipleDuplicates() {
        let nums = [1,2,3,2,1]
        XCTAssertTrue(ContainsDuplicate.containsDuplicate(nums))
    }
}
