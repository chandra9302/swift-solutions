import XCTest
@testable import main

final class CombinationSumIITests: XCTestCase {
    var solution: CombinationSumII!

    override func setUp() {
        super.setUp()
        solution = CombinationSumII()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let candidates = [10,1,2,7,6,1,5]
        let target = 8
        let expected: Set<Set<Int>> = [
            [1,1,6], [1,2,5], [1,7], [2,6]
        ]
        let result = Set(solution.combinationSum2(candidates, target).map { Set($0) })
        for combination in expected {
            XCTAssertTrue(result.contains(combination), "Expected combination \(combination) not found in result")
        }
    }

    func testExample2() {
        let candidates = [2,5,2,1,2]
        let target = 5
        let expected = [ [1,2,2], [5] ]
        let result = solution.combinationSum2(candidates, target)
        XCTAssertEqual(expected, result)
    }

    func testNoSolution() {
        let candidates = [3,3,3]
        let target = 2
        let expected = [[Int]]()
        let result = solution.combinationSum2(candidates, target)
        XCTAssertEqual(expected, result)
    }

    func testEmptyCandidates() {
        let candidates: [Int] = []
        let target = 3
        let expected = [[Int]]()
        let result = solution.combinationSum2(candidates, target)
        XCTAssertEqual(expected, result)
    }
}
