import XCTest
@testable import main

final class SubarraySumEqualsKTests: XCTestCase {
    var subarraySumEqualsK: SubarraySumEqualsK!

    override func setUp() {
        super.setUp()
        subarraySumEqualsK = SubarraySumEqualsK()
    }

    override func tearDown() {
        subarraySumEqualsK = nil
        super.tearDown()
    }

    func testSubarraySumEqualsK_case1() {
        XCTAssertEqual(subarraySumEqualsK.subarraySum([1, 1, 1], 2), 2)
    }

    func testSubarraySumEqualsK_case2() {
        XCTAssertEqual(subarraySumEqualsK.subarraySum([1, 2, 3], 3), 2)
    }

    func testSubarraySumEqualsK_case3() {
        XCTAssertEqual(subarraySumEqualsK.subarraySum([1, -1, 0], 0), 3)
    }

    func testSubarraySumEqualsK_case4() {
        XCTAssertEqual(subarraySumEqualsK.subarraySum([0, 0, 0], 0), 6)
    }
}