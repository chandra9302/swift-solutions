import XCTest
@testable import main

final class CarPoolingTests: XCTestCase {
    var carPooling: CarPooling!

    override func setUp() {
        super.setUp()
        carPooling = CarPooling()
    }

    override func tearDown() {
        carPooling = nil
        super.tearDown()
    }

    func testCarPoolingExample1() {
        let trips = [[2, 1, 5], [3, 3, 7]]
        let capacity = 4
        XCTAssertFalse(carPooling.carPooling(trips, capacity))
    }

    func testCarPoolingExample2() {
        let trips = [[2, 1, 5], [3, 3, 7]]
        let capacity = 5
        XCTAssertTrue(carPooling.carPooling(trips, capacity))
    }
}