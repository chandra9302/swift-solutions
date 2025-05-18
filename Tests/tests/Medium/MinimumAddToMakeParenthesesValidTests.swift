import XCTest
@testable import main

final class MinimumAddToMakeParenthesesValidTests: XCTestCase {
    var minimumAddToMakeParenthesesValid: MinimumAddToMakeParenthesesValid!

    override func setUp() {
        super.setUp()
        minimumAddToMakeParenthesesValid = MinimumAddToMakeParenthesesValid()
    }

    override func tearDown() {
        minimumAddToMakeParenthesesValid = nil
        super.tearDown()
    }

    func testMinAddToMakeValid_case1() {
        let s = "())"
        XCTAssertEqual(minimumAddToMakeParenthesesValid.minAddToMakeValid(s), 1)
    }

    func testMinAddToMakeValid_case2() {
        let s = "((("
        XCTAssertEqual(minimumAddToMakeParenthesesValid.minAddToMakeValid(s), 3)
    }

    func testMinAddToMakeValid_case3() {
        let s = "()))(("
        XCTAssertEqual(minimumAddToMakeParenthesesValid.minAddToMakeValid(s), 4)
    }
}