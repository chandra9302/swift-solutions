import XCTest
@testable import main

final class MinimumWindowSubstringTests: XCTestCase {
    var minimumWindowSubstring: MinimumWindowSubstring!

    override func setUp() {
        super.setUp()
        minimumWindowSubstring = MinimumWindowSubstring()
    }

    override func tearDown() {
        minimumWindowSubstring = nil
        super.tearDown()
    }
    
    func testExample1() {
        let s = "ADOBECODEBANC"
        let t = "ABC"
        let expected = "BANC"
        XCTAssertEqual(minimumWindowSubstring.minWindow(s, t), expected)
    }
    
    func testExample2() {
        let s = "a"
        let t = "a"
        let expected = "a"
        XCTAssertEqual(minimumWindowSubstring.minWindow(s, t), expected)
    }
    
    func testExample3() {
        let s = "a"
        let t = "aa"
        let expected = ""
        XCTAssertEqual(minimumWindowSubstring.minWindow(s, t), expected)
    }
}