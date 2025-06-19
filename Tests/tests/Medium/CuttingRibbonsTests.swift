import XCTest
@testable import main

final class CuttingRibbonsTests: XCTestCase {
    var cuttingRibbons: CuttingRibbons!

    override func setUp() {
        super.setUp()
        cuttingRibbons = CuttingRibbons()
    }

    override func tearDown() {
        cuttingRibbons = nil
        super.tearDown()
    }

    func testMaxLength() {
        XCTAssertEqual(cuttingRibbons.maxLength([1, 2, 3, 4, 5], 5), 2)
        XCTAssertEqual(cuttingRibbons.maxLength([5, 5, 5], 3), 5)
        XCTAssertEqual(cuttingRibbons.maxLength([1, 2, 3], 10), 0)
    }
}