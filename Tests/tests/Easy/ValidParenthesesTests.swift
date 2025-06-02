import XCTest
@testable import main

final class ValidParenthesesTests: XCTestCase {
    var validParentheses: ValidParentheses!

    override func setUp() {
        super.setUp()
        validParentheses = ValidParentheses()
    }

    override func tearDown() {
        validParentheses = nil
        super.tearDown()
    }

    func testIsValid_case1() {
        XCTAssertTrue(validParentheses.isValid("()"))
    }

    func testIsValid_case2() {
        XCTAssertTrue(validParentheses.isValid("()[]{}"))
    }

    func testIsValid_case3() {
        XCTAssertFalse(validParentheses.isValid("(]"))
    }

    func testIsValid_case4() {
        XCTAssertFalse(validParentheses.isValid("([)]"))
    }

    func testIsValid_case5() {
        XCTAssertTrue(validParentheses.isValid("{[]}"))
    }
}