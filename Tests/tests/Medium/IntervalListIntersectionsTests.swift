import XCTest
@testable import main

final class IntervalListIntersectionsTests: XCTestCase {
    var intervalListIntersections: IntervalListIntersections!

    override func setUp() {
        super.setUp()
        intervalListIntersections = IntervalListIntersections()
    }

    override func tearDown() {
        intervalListIntersections = nil
        super.tearDown()
    }

    func testIntervalIntersectionExample1() {
        let firstList = [[0,2],[5,10],[13,23],[24,25]], secondList = [[1,5],[8,12],[15,24],[25,26]]
        let expected = [[1,2],[5,5],[8,10],[15,23],[24,24],[25,25]]
        XCTAssertEqual(intervalListIntersections.intervalIntersection(firstList, secondList), expected)
    }

    func testIntervalIntersectionExample2() {
        let firstList = [[1, 3], [5, 9]]
        let secondList: [[Int]] = []
        let expected: [[Int]] = []
        XCTAssertEqual(intervalListIntersections.intervalIntersection(firstList, secondList), expected)
    }

    func testIntervalIntersectionExample3() {   
        let firstList: [[Int]] = []
        let secondList = [[4, 8], [10, 15]]
        let expected: [[Int]] = []
        XCTAssertEqual(intervalListIntersections.intervalIntersection(firstList, secondList), expected)
    }
    
    func testIntervalIntersectionExample4() {
        let firstList = [[1, 7]]
        let secondList = [[3, 10]]
        let expected = [[3, 7]]
        XCTAssertEqual(intervalListIntersections.intervalIntersection(firstList, secondList), expected)
    }
}