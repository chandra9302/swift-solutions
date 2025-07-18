import XCTest
@testable import main

final class SubsetsTests: XCTestCase {
    var solution: Subsets!

    override func setUp() {
        super.setUp()
        solution = Subsets()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testSubsetsWithUniqueElements() {
        let nums = [1, 2, 3]
        let expected: Set<Set<Int>> = [
            [], [1], [2], [3], [1,2], [1,3], [2,3], [1,2,3]
        ]
        let result = Set(solution.subsets(nums).map { Set($0) })
        XCTAssertEqual(result, expected)
    }

    func testSubsetsWithEmptyInput() {
        let nums: [Int] = []
        let expected: Set<Set<Int>> = [ [] ]
        let result = Set(solution.subsets(nums).map { Set($0) })
        XCTAssertEqual(result, expected)
    }

    func testSubsetsWithSingleElement() {
        let nums = [42]
        let expected: Set<Set<Int>> = [ [], [42] ]
        let result = Set(solution.subsets(nums).map { Set($0) })
        XCTAssertEqual(result, expected)
    }

    func testSubsetsWithNegativeNumbers() {
        let nums = [-1, 0, 1]
        let expected: Set<Set<Int>> = [
            [], [-1], [0], [1], [-1,0], [-1,1], [0,1], [-1,0,1]
        ]
        let result = Set(solution.subsets(nums).map { Set($0) })
        XCTAssertEqual(result, expected)
    }
}
