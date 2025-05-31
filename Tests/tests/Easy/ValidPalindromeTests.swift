import XCTest
@testable import main

final class ValidPalindromeTests: XCTestCase {
    var validPalindrome: ValidPalindrome!

    override func setUp() {
        super.setUp()
        validPalindrome = ValidPalindrome()
    }

    override func tearDown() {
        validPalindrome = nil
        super.tearDown()
    }

    func testIsPalindrome_case1() {
        XCTAssertTrue(validPalindrome.isPalindrome("A man, a plan, a canal: Panama"))
    }

    func testIsPalindrome_case2() {
        XCTAssertFalse(validPalindrome.isPalindrome("race a car"))
    }
    func testIsPalindrome_case3() {
        XCTAssertTrue(validPalindrome.isPalindrome(" "))
    }
}