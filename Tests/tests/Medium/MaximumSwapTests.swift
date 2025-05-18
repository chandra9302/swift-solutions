import XCTest
@testable import main

final class MaximumSwapTests: XCTestCase {
    var maximumSwap: MaximumSwap!

    override func setUp() {
        super.setUp()
        maximumSwap = MaximumSwap()
    }

    override func tearDown() {
        maximumSwap = nil
        super.tearDown()
    }

    func testMaximumSwap_case1() {
        XCTAssertEqual(maximumSwap.maximumSwap(2736), 7236)
    }

    func testMaximumSwap_case2() {
        XCTAssertEqual(maximumSwap.maximumSwap(9973), 9973)
    }

    func testMaximumSwap_case3() {
        XCTAssertEqual(maximumSwap.maximumSwap(1234), 4231)
    }
 
    func testMaximumSwap_case4() {
        XCTAssertEqual(maximumSwap.maximumSwap(4321), 4321)
    }

    func testMaximumSwap_case5() {
        XCTAssertEqual(maximumSwap.maximumSwap(0), 0)
    }

    func testMaximumSwap_case6() {
        XCTAssertEqual(maximumSwap.maximumSwap(9999), 9999)
    }

    func testMaximumSwap_case7() {
        XCTAssertEqual(maximumSwap.maximumSwap(98368), 98863)
    }

    func testMaximumSwap_case8() {
        XCTAssertEqual(maximumSwap.maximumSwap(11), 11)
    }
}