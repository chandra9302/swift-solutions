import XCTest
@testable import main

final class MissingNumberTests: XCTestCase {
    func testMissingNumber_basic() {
        XCTAssertEqual(MissingNumber.missingNumber([3, 0, 1]), 2)
        XCTAssertEqual(MissingNumber.missingNumber([0, 1]), 2)
        XCTAssertEqual(MissingNumber.missingNumber([9,6,4,2,3,5,7,0,1]), 8)
        XCTAssertEqual(MissingNumber.missingNumber([0]), 1)
        XCTAssertEqual(MissingNumber.missingNumber([1]), 0)
    }
    
    func testMissingNumberXOR_basic() {
        XCTAssertEqual(MissingNumber.missingNumberXOR([3, 0, 1]), 2)
        XCTAssertEqual(MissingNumber.missingNumberXOR([0, 1]), 2)
        XCTAssertEqual(MissingNumber.missingNumberXOR([9,6,4,2,3,5,7,0,1]), 8)
        XCTAssertEqual(MissingNumber.missingNumberXOR([0]), 1)
        XCTAssertEqual(MissingNumber.missingNumberXOR([1]), 0)
    }
    
    func testMissingNumber_empty() {
        XCTAssertEqual(MissingNumber.missingNumber([]), 0)
        XCTAssertEqual(MissingNumber.missingNumberXOR([]), 0)
    }
    
    func testMissingNumber_large() {
        let n = 10000
        let nums = Array(0...n).filter { $0 != 1234 }
        XCTAssertEqual(MissingNumber.missingNumber(nums), 1234)
        XCTAssertEqual(MissingNumber.missingNumberXOR(nums), 1234)
    }
}
