import XCTest
@testable import main

final class MovingAverageFromDataStreamTests: XCTestCase {

    func testMovingAverage_case1() {
        let movingAverageFromDataStream = MovingAverageFromDataStream(3) // Window size of 3
        XCTAssertEqual(movingAverageFromDataStream.next(1), 1.0)
        XCTAssertEqual(movingAverageFromDataStream.next(10), 5.5)
        XCTAssertEqual(movingAverageFromDataStream.next(3), 4.666666666666667)
        XCTAssertEqual(movingAverageFromDataStream.next(5), 6.0)
    }

    func testMovingAverage_case2() {
        let ma = MovingAverageFromDataStream(1) // Window size of 1
        XCTAssertEqual(ma.next(5), 5.0)
        XCTAssertEqual(ma.next(10), 10.0)
    }

    func testMovingAverage_case3() {
        let ma = MovingAverageFromDataStream(5) // Window size of 5
        XCTAssertEqual(ma.next(1), 1.0)
        XCTAssertEqual(ma.next(2), 1.5)
        XCTAssertEqual(ma.next(3), 2.0)
        XCTAssertEqual(ma.next(4), 2.5)
        XCTAssertEqual(ma.next(5), 3.0)
        XCTAssertEqual(ma.next(6), 4.0) // After this, the oldest value (1) is dropped
    }
}