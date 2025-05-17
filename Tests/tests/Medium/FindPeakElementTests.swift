import XCTest
@testable import main

final class FindPeakElementTests: XCTestCase {
    func testFindPeakElement() {
        let findPeakElement = FindPeakElement()
        XCTAssertEqual(findPeakElement.findPeakElement([1, 2, 3, 1]), 2)
        XCTAssertEqual(findPeakElement.findPeakElement([1, 2, 1, 3, 5, 6, 4]), 5)
        XCTAssertEqual(findPeakElement.findPeakElement([1]), 0)
        XCTAssertEqual(findPeakElement.findPeakElement([1, 2]), 1)
        XCTAssertEqual(findPeakElement.findPeakElement([2, 1]), 0)
    }
}