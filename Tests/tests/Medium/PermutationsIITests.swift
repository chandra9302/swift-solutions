import XCTest
@testable import main

final class PermutationsIITests: XCTestCase {
    var solution: PermutationsII!

    override func setUp() {
        super.setUp()
        solution = PermutationsII()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let nums = [1,1,2]
        let expected = [
            [1,1,2], [1,2,1], [2,1,1]
        ]
        let result = solution.permuteUnique(nums)
        XCTAssertEqual(result, expected)
    }

    func testAllUnique() {
        let nums = [1,2,3]
        let expected = [
            [1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]
        ]
        let result = solution.permuteUnique(nums)
        XCTAssertEqual(result, expected)
    }

    func testAllDuplicates() {
        let nums = [2,2,2]
        let expected = [[2,2,2]]
        let result = solution.permuteUnique(nums)
        XCTAssertEqual(result, expected)
    }

    func testTwoElements() {
        let nums = [1,1]
        let expected = [[1,1]]
        let result = solution.permuteUnique(nums)
        XCTAssertEqual(result, expected)
    }
}
