import XCTest
@testable import main

final class CombinationSumIIITests: XCTestCase {
    var solution: CombinationSumIII!

    override func setUp() {
        super.setUp()
        solution = CombinationSumIII()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let k = 3, n = 7
        let expected = [ [1,2,4] ]
        let result = solution.combinationSum3(k, n)
        XCTAssertEqual(result, expected)
    }

    func testExample2() {
        let k = 3, n = 9
        let expected = [ [1,2,6], [1,3,5], [2,3,4] ]
        let result = solution.combinationSum3(k, n)
        XCTAssertEqual(result, expected)
    }

    func testNoSolution() {
        let k = 4, n = 1
        let expected = [[Int]]()
        let result = solution.combinationSum3(k, n)
        XCTAssertEqual(result, expected)
    }

    func testMaxK() {
        let k = 9, n = 45
        let expected = [[1,2,3,4,5,6,7,8,9]]
        let result = solution.combinationSum3(k, n)
        XCTAssertEqual(result, expected)
    }
}
