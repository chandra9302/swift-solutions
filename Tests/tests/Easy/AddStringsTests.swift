import XCTest
@testable import main

final class AddStringsTests: XCTestCase {
    var addStrings: AddStrings!

    override func setUp() {
        super.setUp()
        addStrings = AddStrings()
    }

    override func tearDown() {
        addStrings = nil
        super.tearDown()
    }
    
    func testExample1() {
        let num1 = "11"
        let num2 = "123"
        let expected = "134"
        XCTAssertEqual(addStrings.addStrings(num1, num2), expected)
    }
    
    func testExample2() {
        let num1 = "456"
        let num2 = "77"
        let expected = "533"
        XCTAssertEqual(addStrings.addStrings(num1, num2), expected)
    }
    
    func testExample3() {
        let num1 = "0"
        let num2 = "0"
        let expected = "0"
        XCTAssertEqual(addStrings.addStrings(num1, num2), expected)
    }
}