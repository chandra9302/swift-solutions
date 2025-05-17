import XCTest
@testable import main

final class PowerCalculatorTests: XCTestCase {
    func testPow() {
        let powerCalculator = PowerCalculator()
        XCTAssertEqual(powerCalculator.myPow(2.0, 10), 1024.0)
        XCTAssertEqual(powerCalculator.myPow(2.1, 3), 9.261000000000001)
        XCTAssertEqual(powerCalculator.myPow(2.0, -2), 0.25)
        XCTAssertEqual(powerCalculator.myPow(0, 1), 0)
        XCTAssertEqual(powerCalculator.myPow(1, 100), 1)
    }
}