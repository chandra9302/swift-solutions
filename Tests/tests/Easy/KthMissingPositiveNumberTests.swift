import XCTest
@testable import main

final class KthMissingPositiveNumberTests: XCTestCase {
    var kthMissingPositiveNumber: KthMissingPositiveNumber!

    override func setUp() {
        super.setUp()
        kthMissingPositiveNumber = KthMissingPositiveNumber()
    }

    override func tearDown() {
        kthMissingPositiveNumber = nil
        super.tearDown()
    }
    
    func testExample1() {
        let arr = [2, 3, 4, 7, 11]
        let k = 5
        let expected = 9
        XCTAssertEqual(kthMissingPositiveNumber.findKthPositive(arr, k), expected)
    }
    
    func testExample2() {
        let arr = [1, 2, 3, 4]
        let k = 2
        let expected = 6
        XCTAssertEqual(kthMissingPositiveNumber.findKthPositive(arr, k), expected)
    }
    
    func testExample3() {
        let arr: [Int] = []
        let k = 1
        let expected = 1
        XCTAssertEqual(kthMissingPositiveNumber.findKthPositive(arr, k), expected)
    }
}