import XCTest
@testable import main

final class LongestPalindromicSubstringTests: XCTestCase {
    var longestPalindromicSubstring: LongestPalindromicSubstring!

    override func setUp() {
        super.setUp()
        longestPalindromicSubstring = LongestPalindromicSubstring()
    }

    override func tearDown() {
        longestPalindromicSubstring = nil
        super.tearDown()
    }

    func testLongestPalindromeWithEvenLength() {
        let result = longestPalindromicSubstring.longestPalindrome("abba")
        XCTAssertEqual(result, "abba")
    }

    func testLongestPalindromeWithOddLength() {
        let result = longestPalindromicSubstring.longestPalindrome("racecar")
        XCTAssertEqual(result, "racecar")
    }

    func testLongestPalindromeWithNoPalindrome() {
        let result = longestPalindromicSubstring.longestPalindrome("abc")
        XCTAssertEqual(result, "a")
    }

    func testLongestPalindromeWithSingleCharacter() {
        let result = longestPalindromicSubstring.longestPalindrome("a")
        XCTAssertEqual(result, "a")
    }
}