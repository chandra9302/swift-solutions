import XCTest
@testable import main

final class KokoEatingBananasTests: XCTestCase {
    func testMinEatingSpeed() {
        let koko = KokoEatingBananas()
        XCTAssertEqual(koko.minEatingSpeed([3, 6, 7, 11], 8), 4)
        XCTAssertEqual(koko.minEatingSpeed([30, 11, 23, 4, 20], 5), 30)
        XCTAssertEqual(koko.minEatingSpeed([30, 11, 23, 4, 20], 6), 23)
    }
}