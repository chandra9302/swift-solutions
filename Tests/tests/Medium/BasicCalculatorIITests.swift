import XCTest
@testable import main

final class BasicCalculatorIITests: XCTestCase {
    func testBasicCalculatorII() {
        let basicCalculatorII = BasicCalculatorII()
        XCTAssertEqual(basicCalculatorII.calculate("3+2*2"), 7)
        XCTAssertEqual(basicCalculatorII.calculate(" 3/2 "), 1)
        XCTAssertEqual(basicCalculatorII.calculate(" 3+5 "), 8)
        XCTAssertEqual(basicCalculatorII.calculate("14-3/2"), 13)
        XCTAssertEqual(basicCalculatorII.calculate("1-1+1"), 1)
    }
}