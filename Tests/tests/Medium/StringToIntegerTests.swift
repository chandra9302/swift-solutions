import XCTest
@testable import main

final class StringToIntegerTests: XCTestCase {
    var stringToInteger: StringToInteger!

    override func setUp() {
        super.setUp()
        stringToInteger = StringToInteger()
    }

    override func tearDown() {
        stringToInteger = nil
        super.tearDown()
    }

    func testMyAtoi_ValidInput() {
        XCTAssertEqual(stringToInteger.myAtoi("42"), 42)
        XCTAssertEqual(stringToInteger.myAtoi("   -42"), -42)
        XCTAssertEqual(stringToInteger.myAtoi("4193 with words"), 4193)
        XCTAssertEqual(stringToInteger.myAtoi("words and 987"), 0)
        XCTAssertEqual(stringToInteger.myAtoi("-91283472332"), Int(Int32.min))
    }
}