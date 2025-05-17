import XCTest
@testable import main

final class BuildingsWithAnOceanViewTests: XCTestCase {
    func testBuildingsWithAnOceanView() {
        let buildingsWithAnOceanView = BuildingsWithAnOceanView()
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([4, 2, 3, 1]), [0, 2, 3])
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([4, 3, 2, 1]), [0, 1, 2, 3])
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([1, 3, 2, 4]), [3])
        XCTAssertEqual(buildingsWithAnOceanView.oceanViewBuildings([1, 2, 3, 4]), [3]) 
    }
}