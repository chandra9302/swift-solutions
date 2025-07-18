import XCTest
@testable import main

final class CombinationsTests: XCTestCase {
    var solution: Combinations!

    override func setUp() {
        super.setUp()
        solution = Combinations()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let n = 4, k = 2
        let expected = [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
        let result = solution.combine(n, k)
        XCTAssertEqual(result, expected)
    }

    func testKEqualsN() {
        let n = 3, k = 3
        let expected = [ [1,2,3] ]
        let result = solution.combine(n, k)
        XCTAssertEqual(result, expected)
    }

    func testKIsOne() {
        let n = 3, k = 1
        let expected = [ [1], [2], [3] ]
        let result = solution.combine(n, k)
        XCTAssertEqual(result, expected)
    }

    func testKIsZero() {
        let n = 5, k = 0
        let expected = [ [Int] ]()
        let result = solution.combine(n, k)
        XCTAssertEqual(result, expected)
    }

    func testNLessThanK() {
        let n = 2, k = 3
        let expected = [ [Int] ]()
        let result = solution.combine(n, k)
        XCTAssertEqual(result, expected)
    }
}
