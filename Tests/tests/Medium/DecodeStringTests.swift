import XCTest
@testable import main

final class DecodeStringTests: XCTestCase {
    var decodeString: DecodeString!

    override func setUp() {
        super.setUp()
        decodeString = DecodeString()
    }

    override func tearDown() {
        decodeString = nil
        super.tearDown()
    }

    func testDecodeStringExample1() {
        XCTAssertEqual(decodeString.decodeString("3[a]2[bc]"), "aaabcbc")
    }

    func testDecodeStringExample2() {
        XCTAssertEqual(decodeString.decodeString("3[a2[c]]"), "accaccacc")
    }

    func testDecodeStringExample3() {
        XCTAssertEqual(decodeString.decodeString("2[abc]3[cd]ef"), "abcabccdcdcdef")
    }
}