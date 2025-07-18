// swift
import XCTest
@testable import main

final class SubsetsIITests: XCTestCase {
    var subsetsII: SubsetsII!

    override func setUp() {
        super.setUp()
        subsetsII = SubsetsII()
    }

    override func tearDown() {
        subsetsII = nil
        super.tearDown()
    }

    func testExampleWithDuplicates() {
        let nums = [1,2,2]
        let expected: Set<Set<Int>> = [
            [],
            [1],
            [2],
            [1,2],
            [2,2],
            [1,2,2]
        ]
        let result = subsetsII.subsetsWithDup(nums).map { Set($0) }
        XCTAssertEqual(Set(result), expected)
    }

    func testAllUnique() {
        let nums = [1,2,3]
        let expected: Set<Set<Int>> = [
            [],
            [1],
            [2],
            [3],
            [1,2],
            [1,3],
            [2,3],
            [1,2,3]
        ]
        let result = subsetsII.subsetsWithDup(nums).map { Set($0) }
        XCTAssertEqual(Set(result), expected)
    }

    func testAllSame() {
        let nums = [2,2,2]
        let expected: Set<[Int]> = [
            [],
            [2],
            [2,2],
            [2,2,2]
        ]
        let result = Set(subsetsII.subsetsWithDup(nums))
        XCTAssertEqual(result, expected)
    }

    func testEmptyInput() {
        let nums: [Int] = []
        let expected: Set<[Int]> = [
            []
        ]
        let result = Set(subsetsII.subsetsWithDup(nums))
        XCTAssertEqual(result, expected)
    }

    func testNegativeNumbersAndDuplicates() {
        let nums = [-1,2,-1,2]
        let expected: Set<Set<Int>> = [
            [],
            [-1],
            [2],
            [-1,2],
            [-1,-1],
            [-1,-1,2],
            [2,2],
            [-1,2,2],
            [-1,-1,2,2]
        ]
        let result = subsetsII.subsetsWithDup(nums).map { Set($0) }
        XCTAssertEqual(Set(result), expected)
    }
}