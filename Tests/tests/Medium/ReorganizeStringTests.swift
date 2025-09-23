import XCTest
@testable import main

final class ReorganizeStringTests: XCTestCase {
    func testExample1() {
        let solution = ReorganizeString()
        let result = solution.reorganizeString("aab")
        XCTAssertTrue(result == "aba")
    }
    
    func testExample2() {
        let solution = ReorganizeString()
        let result = solution.reorganizeString("aaab")
        XCTAssertEqual(result, "")
    }
    
    func testSingleChar() {
        let solution = ReorganizeString()
        let result = solution.reorganizeString("a")
        XCTAssertEqual(result, "a")
    }
    
    func testAllUnique() {
        let solution = ReorganizeString()
        let result = solution.reorganizeString("abc")
        XCTAssertTrue(Set(result) == Set(["a","b","c"]))
        XCTAssertEqual(result.count, 3)
    }
    
    func testLongerString() {
        let solution = ReorganizeString()
        let input = "aaabbc"
        let result = solution.reorganizeString(input)
        XCTAssertEqual(result.count, input.count)
        for i in 1..<result.count {
            let arr = Array(result)
            XCTAssertNotEqual(arr[i], arr[i-1])
        }
    }
}
