import XCTest
@testable import main

final class PowerCalculatorTests: XCTestCase {
    var powerCalculator: PowerCalculator!

    override func setUp() {
        super.setUp()
        powerCalculator = PowerCalculator()
    }

    override func tearDown() {
        powerCalculator = nil
        super.tearDown()
    }

    func testPowWithPositiveExponent() {
        XCTAssertEqual(powerCalculator.myPow(2.0, 10), 1024.0)
    }

    func testPowWithDecimalBase() {
        XCTAssertEqual(powerCalculator.myPow(2.1, 3), 9.261000000000001)
    }

    func testPowWithNegativeExponent() {
        XCTAssertEqual(powerCalculator.myPow(2.0, -2), 0.25)
    }

    func testPowWithZeroBase() {
        XCTAssertEqual(powerCalculator.myPow(0, 1), 0)
    }

    func testPowWithOneBase() {
        XCTAssertEqual(powerCalculator.myPow(1, 100), 1)
    }
}