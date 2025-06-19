import XCTest
@testable import main

final class GroupAnagramsTests: XCTestCase {
    var groupAnagrams: GroupAnagrams!

    override func setUp() {
        super.setUp()
        groupAnagrams = GroupAnagrams()
    }

    override func tearDown() {
        groupAnagrams = nil
        super.tearDown()
    }

    func testGroupAnagrams_case1() {
        let strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
        let result = groupAnagrams.groupAnagrams(strs)
        let expected: Set<Set<String>> = [
            ["eat", "tea", "ate"],
            ["tan", "nat"],
            ["bat"]
        ]
        let resultSet = Set(result.map { Set($0) })
        XCTAssertEqual(resultSet, expected)
    }

    func testGroupAnagrams_case2() {
        let strs = [""]
        let result = groupAnagrams.groupAnagrams(strs)
        let expected: Set<Set<String>> = [
            [""]
        ]
        let resultSet = Set(result.map { Set($0) })
        XCTAssertEqual(resultSet, expected)
    }

    func testGroupAnagrams_case3() {
        let strs = ["a"]
        let result = groupAnagrams.groupAnagrams(strs)
        let expected: Set<Set<String>> = [
            ["a"]
        ]
        let resultSet = Set(result.map { Set($0) })
        XCTAssertEqual(resultSet, expected)
    }
}