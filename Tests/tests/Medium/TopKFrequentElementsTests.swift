import XCTest
@testable import main

final class TopKFrequentElementsTests: XCTestCase {
    var topKFrequentElements: TopKFrequentElements!

    override func setUp() {
        super.setUp()
        topKFrequentElements = TopKFrequentElements()
    }

    override func tearDown() {
        topKFrequentElements = nil
        super.tearDown()
    }

    func testTopKFrequentElements_case1() {
        XCTAssertEqual(topKFrequentElements.topKFrequent([1, 1, 1, 2, 2, 3], 2), [1, 2])
    }

    func testTopKFrequentElements_case2() {
        XCTAssertEqual(topKFrequentElements.topKFrequent([1], 1), [1])
    }

    func testTopKFrequentElements_case3() {
        XCTAssertEqual(topKFrequentElements.topKFrequent([4, 4, 4, 4, 5, 5, 5], 2), [4, 5])
    }
}