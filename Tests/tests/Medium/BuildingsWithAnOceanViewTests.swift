import XCTest
@testable import main

final class BuildingsWithAnOceanViewTests: XCTestCase {
    var buildingsWithAnOceanView: BuildingsWithAnOceanView!

    override func setUp() {
        super.setUp()
        buildingsWithAnOceanView = BuildingsWithAnOceanView()
    }

    override func tearDown() {
        buildingsWithAnOceanView = nil
        super.tearDown()
    }

    func testOceanViewBuildingsCase1() {
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([4, 2, 3, 1]), [0, 2, 3])
    }

    func testOceanViewBuildingsCase2() {
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([4, 3, 2, 1]), [0, 1, 2, 3])
    }

    func testOceanViewBuildingsCase3() {
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([1, 3, 2, 4]), [3])
    }

    func testOceanViewBuildingsCase4() {
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([1, 2, 3, 4]), [3])
    }
}