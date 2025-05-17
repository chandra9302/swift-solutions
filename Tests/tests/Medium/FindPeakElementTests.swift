import XCTest
@testable import main

final class FindPeakElementTests: XCTestCase {
    var findPeakElement: FindPeakElement!

    override func setUp() {
        super.setUp()
        findPeakElement = FindPeakElement()
    }

    override func tearDown() {
        findPeakElement = nil
        super.tearDown()
    }

    func testFindPeakElementWithDescendingArray() {
        XCTAssertEqual(findPeakElement.findPeakElement([1, 2, 3, 1]), 2)
    }

    func testFindPeakElementWithMultiplePeaks() {
        XCTAssertEqual(findPeakElement.findPeakElement([1, 2, 1, 3, 5, 6, 4]), 5)
    }

    func testFindPeakElementWithSingleElement() {
        XCTAssertEqual(findPeakElement.findPeakElement([1]), 0)
    }

    func testFindPeakElementWithTwoAscendingElements() {
        XCTAssertEqual(findPeakElement.findPeakElement([1, 2]), 1)
    }

    func testFindPeakElementWithTwoDescendingElements() {
        XCTAssertEqual(findPeakElement.findPeakElement([2, 1]), 0)
    }
}