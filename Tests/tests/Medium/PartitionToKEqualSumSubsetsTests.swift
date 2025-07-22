import XCTest
@testable import main

final class PartitionToKEqualSumSubsetsTests: XCTestCase {
    var solution: PartitionToKEqualSumSubsets!

    override func setUp() {
        super.setUp()
        solution = PartitionToKEqualSumSubsets()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let nums = [4,3,2,3,5,2,1]
        let k = 4
        XCTAssertTrue(solution.canPartitionKSubsets(nums, k))
    }

    func testExample2() {
        let nums = [1,2,3,4]
        let k = 3
        XCTAssertFalse(solution.canPartitionKSubsets(nums, k))
    }

    func testExample3() {
        let nums = [2,2,2,2,3,4,5]
        let k = 4
        XCTAssertFalse(solution.canPartitionKSubsets(nums, k))
    }

    func testAllEqual() {
        let nums = [2,2,2,2]
        let k = 2
        XCTAssertTrue(solution.canPartitionKSubsets(nums, k))
    }

    func testSingleElement() {
        let nums = [5]
        let k = 1
        XCTAssertTrue(solution.canPartitionKSubsets(nums, k))
    }

    func testImpossible() {
        let nums = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,16]
        let k = 4
        XCTAssertFalse(solution.canPartitionKSubsets(nums, k))
    }

    func testZeroK() {
        let nums = [1,2,3]
        let k = 0
        XCTAssertFalse(solution.canPartitionKSubsets(nums, k))
    }
}
