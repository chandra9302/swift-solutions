import XCTest
@testable import main

final class NestedListWeightSumTests: XCTestCase {
    var nestedListWeightSum: NestedListWeightSum!

    override func setUp() {
        super.setUp()
        nestedListWeightSum = NestedListWeightSum()
    }

    override func tearDown() {
        nestedListWeightSum = nil
        super.tearDown()
    }

    func testNestedListWeightSum_case1() {
        // Test case 1: [[1,1],2,[1,1]]
        let nestedList1 = [
            NestedInteger([NestedInteger(1), NestedInteger(1)]),
            NestedInteger(2),
            NestedInteger([NestedInteger(1), NestedInteger(1)])
        ]
        // Expected result: (1+1)*2 + 2*1 + (1+1)*2 = 10
        XCTAssertEqual(nestedListWeightSum.depthSum(nestedList1), 10)
    }

    func testNestedListWeightSum_case2() {
        // Test case 2: [1,[4,[6]]]
        let nestedList2 = [
            NestedInteger(1),
            NestedInteger([NestedInteger(4), NestedInteger([NestedInteger(6)])])
        ]
        // Expected result: 1*1 + 4*2 + 6*3 = 27
        XCTAssertEqual(nestedListWeightSum.depthSum(nestedList2), 27)
    }

    func testNestedListWeightSum_case3() {
        // Test case 3: [0]
        let nestedList3 = [
            NestedInteger(0)
        ]
        // Expected result: 0*1 = 0
        XCTAssertEqual(nestedListWeightSum.depthSum(nestedList3), 0)
    }
}