import XCTest
@testable import main

final class MergeIntervalsTests: XCTestCase {
    func testMergeIntervals() {
        let mergeIntervals = MergeIntervals()
        XCTAssertEqual(mergeIntervals.merge([[1, 3], [2, 6], [8, 10], [15, 18]]), [[1, 6], [8, 10], [15, 18]])
        XCTAssertEqual(mergeIntervals.merge([[1, 4], [4, 5]]), [[1, 5]])
        XCTAssertEqual(mergeIntervals.merge([[1, 4], [0, 4]]), [[0, 4]])
        XCTAssertEqual(mergeIntervals.merge([[1, 2], [3, 4], [5, 6]]), [[1, 2], [3, 4], [5, 6]])
    }
}