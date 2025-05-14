import XCTest
@testable import main

final class MinimumRemoveToMakeValidParenthesesTests: XCTestCase {
    func testMinimumRemoveToMakeValidParentheses() {
        let minimumRemoveToMakeValidParentheses = MinimumRemoveToMakeValidParentheses()
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("lee(t(c)o)de)"), "lee(t(c)o)de")
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("a)b(c)d"), "ab(c)d")
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("))(("), "")
        XCTAssertEqual(minimumRemoveToMakeValidParentheses.minRemoveToMakeValid("(a(b(c)d)"), "a(b(c)d)")
    }
}