import XCTest
@testable import main

final class PalindromePartitioningTests: XCTestCase {
    var solution: PalindromePartitioning!

    override func setUp() {
        super.setUp()
        solution = PalindromePartitioning()
    }

    override func tearDown() {
        solution = nil
        super.tearDown()
    }

    func testExample1() {
        let s = "aab"
        let expected: Set<[String]> = Set([
            ["a", "a", "b"],
            ["aa", "b"]
        ])
        let result = Set(solution.partition(s))
        XCTAssertEqual(result, expected)
    }

    func testSingleChar() {
        let s = "a"
        let expected: Set<[String]> = Set([["a"]])
        let result = Set(solution.partition(s))
        XCTAssertEqual(result, expected)
    }

    func testAllPalindromes() {
        let s = "aaa"
        let expected: Set<[String]> = Set([
            ["a","a","a"],
            ["a","aa"],
            ["aa","a"],
            ["aaa"]
        ])
        let result = Set(solution.partition(s))
        XCTAssertEqual(result, expected)
    }

    func testNoPalindromeExceptSingle() {
        let s = "abc"
        let expected: Set<[String]> = Set([
            ["a","b","c"]
        ])
        let result = Set(solution.partition(s))
        XCTAssertEqual(result, expected)
    }

    func testEmptyString() {
        let s = ""
        let expected: Set<[String]> = Set([[]])
        let result = Set(solution.partition(s))
        XCTAssertEqual(result, expected)
    }
}
