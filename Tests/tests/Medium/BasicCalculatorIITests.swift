import XCTest
@testable import main

final class BasicCalculatorIITests: XCTestCase {
    var basicCalculatorII: BasicCalculatorII!

    override func setUp() {
        super.setUp()
        basicCalculatorII = BasicCalculatorII()
    }

    override func tearDown() {
        basicCalculatorII = nil
        super.tearDown()
    }

    func testAdditionAndMultiplication() {
        XCTAssertEqual(basicCalculatorII.calculate("3+2*2"), 7)
    }

    func testDivisionWithSpaces() {
        XCTAssertEqual(basicCalculatorII.calculate(" 3/2 "), 1)
    }

    func testSimpleAddition() {
        XCTAssertEqual(basicCalculatorII.calculate(" 3+5 "), 8)
    }

    func testSubtractionAndDivision() {
        XCTAssertEqual(basicCalculatorII.calculate("14-3/2"), 13)
    }

    func testMixedOperations() {
        XCTAssertEqual(basicCalculatorII.calculate("1-1+1"), 1)
    }
}