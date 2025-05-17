import XCTest
@testable import main

final class TopKFrequentElementsTests: XCTestCase {
    func testTopKFrequentElements() {
        let topKFrequentElements = TopKFrequentElements()
        XCTAssertEqual(topKFrequentElements.topKFrequent([1, 1, 1, 2, 2, 3], 2), [1, 2])
        XCTAssertEqual(topKFrequentElements.topKFrequent([1], 1), [1])
        XCTAssertEqual(topKFrequentElements.topKFrequent([4, 4, 4, 4, 5, 5, 5], 2), [4, 5])
    }
}