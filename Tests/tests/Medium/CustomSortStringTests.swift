import XCTest
@testable import main

final class CustomSortStringTests: XCTestCase {
    var customSortString: CustomSortString!

    override func setUp() {
        super.setUp()
        customSortString = CustomSortString()
    }

    override func tearDown() {
        customSortString = nil
        super.tearDown()
    }

    func testCustomSortString() {
        XCTAssertEqual(customSortString.customSortString("cba", "abcd"), "cbad")
        XCTAssertEqual(customSortString.customSortString("kqep", "pekeq"), "kqeep")
        XCTAssertEqual(customSortString.customSortString("xyz", "abc"), "abc")
    }
}