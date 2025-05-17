import XCTest
@testable import main

final class MergeIntervalsTests: XCTestCase {
    var mergeIntervals: MergeIntervals!

    override func setUp() {
        super.setUp()
        mergeIntervals = MergeIntervals()
    }

    override func tearDown() {
        mergeIntervals = nil
        super.tearDown()
    }

    func testMergeIntervalsWithOverlappingIntervals() {
        XCTAssertEqual(mergeIntervals.merge([[1, 3], [2, 6], [8, 10], [15, 18]]), [[1, 6], [8, 10], [15, 18]])
    }

    func testMergeIntervalsWithTouchingIntervals() {
        XCTAssertEqual(mergeIntervals.merge([[1, 4], [4, 5]]), [[1, 5]])
    }

    func testMergeIntervalsWithContainedIntervals() {
        XCTAssertEqual(mergeIntervals.merge([[1, 4], [0, 4]]), [[0, 4]])
    }

    func testMergeIntervalsWithNonOverlappingIntervals() {
        XCTAssertEqual(mergeIntervals.merge([[1, 2], [3, 4], [5, 6]]), [[1, 2], [3, 4], [5, 6]])
    }
}