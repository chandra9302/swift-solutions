import XCTest
@testable import main

final class ClimbingStairsTests: XCTestCase {
    func testClimbStairs_basic() {
        XCTAssertEqual(ClimbingStairs.climbStairs(1), 1)
        XCTAssertEqual(ClimbingStairs.climbStairs(2), 2)
        XCTAssertEqual(ClimbingStairs.climbStairs(3), 3)
        XCTAssertEqual(ClimbingStairs.climbStairs(4), 5)
        XCTAssertEqual(ClimbingStairs.climbStairs(5), 8)
    }
    
    func testClimbStairs_large() {
        XCTAssertEqual(ClimbingStairs.climbStairs(10), 89)
        XCTAssertEqual(ClimbingStairs.climbStairs(20), 10946)
    }
    
    func testClimbStairs_edgeCases() {
        XCTAssertEqual(ClimbingStairs.climbStairs(0), 0)
    }
}
