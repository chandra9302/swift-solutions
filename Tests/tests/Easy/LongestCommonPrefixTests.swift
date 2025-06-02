import XCTest
@testable import main

final class LongestCommonPrefixTests: XCTestCase {
    var longestCommonPrefix: LongestCommonPrefix!

    override func setUp() {
        super.setUp()
        longestCommonPrefix = LongestCommonPrefix()
    }

    override func tearDown() {
        longestCommonPrefix = nil
        super.tearDown()
    }

    func testLongestCommonPrefix_case1() {
        let strs = ["flower", "flow", "flight"]
        XCTAssertEqual(longestCommonPrefix.longestCommonPrefix(strs), "fl")
    }

    func testLongestCommonPrefix_case2() {
        let strs = ["dog", "racecar", "car"]
        XCTAssertEqual(longestCommonPrefix.longestCommonPrefix(strs), "")
    }

    func testLongestCommonPrefix_case3() {
        let strs = ["a"]
        XCTAssertEqual(longestCommonPrefix.longestCommonPrefix(strs), "a")
    }
}