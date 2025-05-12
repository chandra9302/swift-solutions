import XCTest
@testable import main

final class GenerateParenthesesTests: XCTestCase {
    func testGenerateParentheses() {
        let generateParentheses = GenerateParentheses()
        XCTAssertEqual(generateParentheses.generateParenthesis(3), ["((()))", "(()())", "(())()", "()(())", "()()()"])
        XCTAssertEqual(generateParentheses.generateParenthesis(1), ["()"])
        XCTAssertEqual(generateParentheses.generateParenthesis(0), [])
    }
}