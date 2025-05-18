import XCTest
@testable import main

final class PalindromicSubstringsTests: XCTestCase {
    var palindromicSubstrings: PalindromicSubstrings!

    override func setUp() {
        super.setUp()
        palindromicSubstrings = PalindromicSubstrings()
    }

    override func tearDown() {
        palindromicSubstrings = nil
        super.tearDown()
    }

    func testCountSubstringsWithDistinctCharacters() {
        XCTAssertEqual(palindromicSubstrings.countSubstrings("abc"), 3) // "a", "b", "c"
    }

    func testCountSubstringsWithRepeatedCharacters() {
        XCTAssertEqual(palindromicSubstrings.countSubstrings("aaa"), 6) // "a", "a", "a", "aa", "aa", "aaa"
    }

    func testCountSubstringsWithMixedCharacters() {
        XCTAssertEqual(palindromicSubstrings.countSubstrings("ababa"), 9) // "a", "b", "a", "b", "a", "aba", "bab", "aba", "ababa"
    }
}