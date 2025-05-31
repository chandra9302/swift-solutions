import XCTest
@testable import main

final class ValidPalindromeIIITests: XCTestCase {
    var validPalindromeII: ValidPalindromeII!

    override func setUp() {
        super.setUp()
        validPalindromeII = ValidPalindromeII()
    }

    override func tearDown() {
        validPalindromeII = nil
        super.tearDown()
    }

    func testValidPalindrome_case1() {
        XCTAssertTrue(validPalindromeII.validPalindrome("aba"))
    }

    func testValidPalindrome_case2() {
        XCTAssertTrue(validPalindromeII.validPalindrome("abca"))
    }

    func testValidPalindrome_case3() {
        XCTAssertFalse(validPalindromeII.validPalindrome("abc"))
    }
}