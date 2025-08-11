import XCTest
@testable import main

final class GeneralizedAbbreviationTests: XCTestCase {
    var solution: GeneralizedAbbreviation!

    override func setUp() {
        super.setUp()
        solution = GeneralizedAbbreviation()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let word = "word"
        let expected: [String] = ["4","3d","2r1","2rd","1o2","1o1d","1or1","1ord","w3","w2d","w1r1","w1rd","wo2","wo1d","wor1","word"]
        let result = solution.generateAbbreviations(word)
        for abbr in expected {
            XCTAssertTrue(result.contains(abbr), "Expected abbreviation \(abbr) not found in result")
        }
        XCTAssertEqual(result.count, expected.count, "Result count does not match expected count")
    }

    func testSingleChar() {
        let word = "a"
        let expected: Set<String> = ["1", "a"]
        let result = Set(solution.generateAbbreviations(word))
        XCTAssertEqual(result, expected)
    }

    func testEmptyString() {
        let word = ""
        let expected: Set<String> = [""]
        let result = Set(solution.generateAbbreviations(word))
        XCTAssertEqual(result, expected)
    }

    func testTwoChars() {
        let word = "ab"
        let expected = ["2", "1b", "a1", "ab"]
        let result = solution.generateAbbreviations(word)
        for abbr in expected {
            XCTAssertTrue(result.contains(abbr), "Expected abbreviation \(abbr) not found in result")
        }
        XCTAssertEqual(result.count, expected.count, "Result count does not match expected count")
    }
}
