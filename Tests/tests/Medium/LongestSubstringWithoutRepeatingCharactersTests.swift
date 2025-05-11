import XCTest
@testable import main
final class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {
    func testLongestSubstringWithoutRepeatingCharacters() {
        let longestSubstringWithoutRepeatingCharacters = LongestSubstringWithoutRepeatingCharacters()
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring("abcabcbb"), 3) // abc
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring("bbbbb"), 1) // b
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring("pwwkew"), 3) // wke
        XCTAssertEqual(longestSubstringWithoutRepeatingCharacters.lengthOfLongestSubstring(""), 0) // ""
    }
}