import XCTest
@testable import main

final class SquaresOfASortedArrayTests: XCTestCase {
    var squaresOfASortedArray: SquaresOfASortedArray!

    override func setUp() {
        super.setUp()
        squaresOfASortedArray = SquaresOfASortedArray()
    }

    override func tearDown() {
        squaresOfASortedArray = nil
        super.tearDown()
    }
    
    func testExample1() {
        let nums = [-4, -1, 0, 3, 10]
        let expected = [0, 1, 9, 16, 100]
        XCTAssertEqual(squaresOfASortedArray.sortedSquares(nums), expected)
    }
    
    func testExample2() {
        let nums = [-7, -3, 2, 3, 11]
        let expected = [4, 9, 9, 49, 121]
        XCTAssertEqual(squaresOfASortedArray.sortedSquares(nums), expected)
    }
}