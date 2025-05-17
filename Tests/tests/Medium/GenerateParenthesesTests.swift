import XCTest
@testable import main

final class GenerateParenthesesTests: XCTestCase {
    var generateParentheses: GenerateParentheses!

    override func setUp() {
        super.setUp()
        generateParentheses = GenerateParentheses()
    }

    override func tearDown() {
        generateParentheses = nil
        super.tearDown()
    }

    func testGenerateParenthesesWithThree() {
        XCTAssertEqual(generateParentheses.generateParenthesis(3), ["((()))", "(()())", "(())()", "()(())", "()()()"])
    }

    func testGenerateParenthesesWithOne() {
        XCTAssertEqual(generateParentheses.generateParenthesis(1), ["()"])
    }

    func testGenerateParenthesesWithZero() {
        XCTAssertEqual(generateParentheses.generateParenthesis(0), [])
    }
}