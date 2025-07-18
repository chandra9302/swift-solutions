import XCTest
@testable import main

final class PermutationsTests: XCTestCase {
    var solution: Permutations!

    override func setUp() {
        super.setUp()
        solution = Permutations()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let nums = [1,2,3]
        let expected = [
            [1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]
        ]
        let result = solution.permute(nums)
        XCTAssertEqual(result, expected)
    }

    func testSingleElement() {
        let nums = [42]
        let expected = [[42]]
        let result = solution.permute(nums)
        XCTAssertEqual(result, expected)
    }

    func testTwoElements() {
        let nums = [0,1]
        let expected = [[0,1], [1,0]]
        let result = solution.permute(nums)
        XCTAssertEqual(result, expected)
    }
}
