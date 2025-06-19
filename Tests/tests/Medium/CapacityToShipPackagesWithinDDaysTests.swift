import XCTest
@testable import main

final class CapacityToShipPackagesWithinDDaysTests: XCTestCase {
    var capacityToShipPackagesWithinDDays: CapacityToShipPackagesWithinDDays!

    override func setUp() {
        super.setUp()
        capacityToShipPackagesWithinDDays = CapacityToShipPackagesWithinDDays()
    }

    override func tearDown() {
        capacityToShipPackagesWithinDDays = nil
        super.tearDown()
    }

    func testShipWithinDays_case1() {
        let weights = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let days = 5
        let expectedCapacity = 15

        XCTAssertEqual(capacityToShipPackagesWithinDDays.shipWithinDays(weights, days), expectedCapacity)
    }

    func testShipWithinDays_case2() {
        let weights = [3, 2, 2, 4, 1, 4]
        let days = 3
        let expectedCapacity = 6

        XCTAssertEqual(capacityToShipPackagesWithinDDays.shipWithinDays(weights, days), expectedCapacity)
    }

    func testShipWithinDays_case3() {
        let weights = [1, 2, 3, 1, 1]
        let days = 4
        let expectedCapacity = 3

        XCTAssertEqual(capacityToShipPackagesWithinDDays.shipWithinDays(weights, days), expectedCapacity)
    }
}