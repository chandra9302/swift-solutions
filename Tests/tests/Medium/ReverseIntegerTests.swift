import XCTest
@testable import main

final class ReverseIntegerTests: XCTestCase {
    var reverseInteger: ReverseInteger!

    override func setUp() {
        super.setUp()
        reverseInteger = ReverseInteger()
    }

    override func tearDown() {
        reverseInteger = nil
        super.tearDown()
    }

    func testReverse_PositiveNumber() {
        XCTAssertEqual(reverseInteger.reverse(123), 321)
    }

    func testReverse_NegativeNumber() {
        XCTAssertEqual(reverseInteger.reverse(-123), -321)
    }

    func testReverse_NumberWithTrailingZeros() {
        XCTAssertEqual(reverseInteger.reverse(120), 21)
    }

    func testReverse_Zero() {
        XCTAssertEqual(reverseInteger.reverse(0), 0)
    }

    func testReverse_Overflow() {
        XCTAssertEqual(reverseInteger.reverse(1534236469), 0) // Overflow case
        XCTAssertEqual(reverseInteger.reverse(-1534236469), 0) // Overflow case
    }
}