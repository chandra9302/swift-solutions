import XCTest
@testable import main

final class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {
    var longestSubstringWithoutRepeatingCharacters: LongestSubstringWithoutRepeatingCharacters!

    override func setUp() {
        super.setUp()
        longestSubstringWithoutRepeatingCharacters = LongestSubstringWithoutRepeatingCharacters()
    }

    override func tearDown() {
        longestSubstringWithoutRepeatingCharacters = nil
        super.tearDown()
    }

    func testLengthOfLongestSubstringWithUniqueCharacters() {
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring("abcabcbb"), 3) // abc
    }

    func testLengthOfLongestSubstringWithRepeatingCharacters() {
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring("bbbbb"), 1) // b
    }

    func testLengthOfLongestSubstringWithMixedCharacters() {
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring("pwwkew"), 3) // wke
    }

    func testLengthOfLongestSubstringWithEmptyString() {
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring(""), 0) // ""
    }
}