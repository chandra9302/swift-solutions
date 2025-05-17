import XCTest
@testable import main

final class MinimumRemoveToMakeValidParenthesesTests: XCTestCase {
    var minimumRemoveToMakeValidParentheses: MinimumRemoveToMakeValidParentheses!

    override func setUp() {
        super.setUp()
        minimumRemoveToMakeValidParentheses = MinimumRemoveToMakeValidParentheses()
    }

    override func tearDown() {
        minimumRemoveToMakeValidParentheses = nil
        super.tearDown()
    }

    func testValidParenthesesCase1() {
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("lee(t(c)o)de)"), "lee(t(c)o)de")
    }

    func testValidParenthesesCase2() {
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("a)b(c)d"), "ab(c)d")
    }

    func testValidParenthesesCase3() {
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("))(("), "")
    }

    func testValidParenthesesCase4() {
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("(a(b(c)d)"), "a(b(c)d)")
    }
}