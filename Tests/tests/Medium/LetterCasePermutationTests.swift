import XCTest
@testable import main

final class LetterCasePermutationTests: XCTestCase {
    var solution: LetterCasePermutation!

    override func setUp() {
        super.setUp()
        solution = LetterCasePermutation()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let s = "a1b2"
        let expected = ["a1b2", "a1B2", "A1b2", "A1B2"]
        let result = solution.letterCasePermutation(s)
        XCTAssertEqual(result, expected)
    }

    func testAllLetters() {
        let s = "ab"
        let expected: Set<String> = ["ab", "aB", "Ab", "AB"]
        let result = Set(solution.letterCasePermutation(s))
        XCTAssertEqual(result, expected)
    }

    func testAllDigits() {
        let s = "1234"
        let expected: Set<String> = ["1234"]
        let result = Set(solution.letterCasePermutation(s))
        XCTAssertEqual(result, expected)
    }

    func testEmptyString() {
        let s = ""
        let expected: Set<String> = [""]
        let result = Set(solution.letterCasePermutation(s))
        XCTAssertEqual(result, expected)
    }

    func testMixedCase() {
        let s = "aA"
        let expected: Set<String> = ["aa", "aA", "Aa", "AA"]
        let result = Set(solution.letterCasePermutation(s))
        XCTAssertEqual(result, expected)
    }
}
