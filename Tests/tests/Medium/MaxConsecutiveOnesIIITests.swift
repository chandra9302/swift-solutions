import XCTest
@testable import main

final class MaxConsecutiveOnesIIITests: XCTestCase {
    var maxConsecutiveOnesIII: MaxConsecutiveOnesIII!

    override func setUp() {
        super.setUp()
        maxConsecutiveOnesIII = MaxConsecutiveOnesIII()
    }

    override func tearDown() {
        maxConsecutiveOnesIII = nil
        super.tearDown()
    }

    func testLongestOnes() {
        XCTAssertEqual(maxConsecutiveOnesIII.longestOnes([1, 1, 0, 0, 1, 1, 1], 2), 7)
        XCTAssertEqual(maxConsecutiveOnesIII.longestOnes([0, 0, 1, 1, 0, 0], 2), 4)
        XCTAssertEqual(maxConsecutiveOnesIII.longestOnes([1, 0, 1, 0, 1], 2), 5)
    }
}