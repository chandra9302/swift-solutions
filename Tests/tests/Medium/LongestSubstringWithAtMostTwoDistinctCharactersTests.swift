import XCTest
@testable import main

final class LongestSubstringWithAtMostTwoDistinctCharactersTests: XCTestCase {
    var longestSubstringWithAtMostTwoDistinctCharacters: LongestSubstringWithAtMostTwoDistinctCharacters!

    override func setUp() {
        super.setUp()
        longestSubstringWithAtMostTwoDistinctCharacters = LongestSubstringWithAtMostTwoDistinctCharacters()
    }

    override func tearDown() {
        longestSubstringWithAtMostTwoDistinctCharacters = nil
        super.tearDown()
    }

    func testLongestSubstringWithAtMostTwoDistinctCharactersExample1() {
        XCTAssertEqual(longestSubstringWithAtMostTwoDistinctCharacters.lengthOfLongestSubstringTwoDistinct("eceba"), 3) // "ece"
    }

    func testLongestSubstringWithAtMostTwoDistinctCharactersExample2() {
        XCTAssertEqual(longestSubstringWithAtMostTwoDistinctCharacters.lengthOfLongestSubstringTwoDistinct("ccaabbb"), 5) // "aabbb"
    }
}