import XCTest
@testable import main

final class LetterCombinationsOfAPhoneNumberTests: XCTestCase {
    var solution: LetterCombinationsOfAPhoneNumber!

    override func setUp() {
        super.setUp()
        solution = LetterCombinationsOfAPhoneNumber()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let digits = "23"
        let expected: Set<String> = ["ad","ae","af","bd","be","bf","cd","ce","cf"]
        let result = Set(solution.letterCombinations(digits))
        XCTAssertEqual(result, expected)
    }

    func testSingleDigit() {
        let digits = "2"
        let expected: Set<String> = ["a","b","c"]
        let result = Set(solution.letterCombinations(digits))
        XCTAssertEqual(result, expected)
    }

    func testEmptyInput() {
        let digits = ""
        let expected: Set<String> = []
        let result = Set(solution.letterCombinations(digits))
        XCTAssertEqual(result, expected)
    }

    func testMultipleDigits() {
        let digits = "79"
        let expected: Set<String> = [
            "pw","px","py","pz",
            "qw","qx","qy","qz",
            "rw","rx","ry","rz",
            "sw","sx","sy","sz"
        ]
        let result = Set(solution.letterCombinations(digits))
        XCTAssertEqual(result, expected)
    }
}
