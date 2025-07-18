import XCTest
@testable import main

final class CombinationSumTests: XCTestCase {
    var solution: CombinationSum!

    override func setUp() {
        super.setUp()
        solution = CombinationSum()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let candidates = [2,3,6,7]
        let target = 7
        let expected: Set<Set<Int>> = [ [7], [2,2,3] ]
        let result = Set(solution.combinationSum(candidates, target).map { Set($0) })
        XCTAssertEqual(result, expected)
    }

    func testExample2() {
        let candidates = [2,3,5]
        let target = 8
        let expected: Set<Set<Int>> = [ [2,2,2,2], [2,3,3], [3,5] ]
        let result = Set(solution.combinationSum(candidates, target).map { Set($0) })
        XCTAssertEqual(result, expected)
    }

    func testNoSolution() {
        let candidates = [2]
        let target = 1
        let expected: Set<Set<Int>> = []
        let result = Set(solution.combinationSum(candidates, target).map { Set($0) })
        XCTAssertEqual(result, expected)
    }

    func testSingleCandidate() {
        let candidates = [3]
        let target = 9
        let expected: Set<Set<Int>> = [ [3,3,3] ]
        let result = Set(solution.combinationSum(candidates, target).map { Set($0) })
        XCTAssertEqual(result, expected)
    }

    func testEmptyCandidates() {
        let candidates: [Int] = []
        let target = 7
        let expected: Set<Set<Int>> = []
        let result = Set(solution.combinationSum(candidates, target).map { Set($0) })
        XCTAssertEqual(result, expected)
    }
}
