import XCTest
@testable import main

final class GroupShiftedStringsTests: XCTestCase {
    
    var groupShiftedStrings: GroupShiftedStrings!
    
    override func setUp() {
        super.setUp()
        groupShiftedStrings = GroupShiftedStrings()
    }
    
    override func tearDown() {
        groupShiftedStrings = nil
        super.tearDown()
    }
    
    func testGroupShiftedStrings_case1() {
        let strings = ["abc", "bcd", "acef", "xyz", "az", "ba", "a", "z"]
        let expected = [["acef"],["a","z"],["abc","bcd","xyz"],["az","ba"]].sorted { $0.count < $1.count }
        let actual = groupShiftedStrings.groupStrings(strings).sorted { $0.count < $1.count }
        XCTAssertEqual(actual, expected)
    }
    
    func testGroupShiftedStrings_case2() {
        let strings = ["a"]
        let expected = [["a"]]
        XCTAssertEqual(groupShiftedStrings.groupStrings(strings), expected)
    }
    
    func testGroupShiftedStrings_case3() {
        let strings = [String]()
        let expected: [[String]] = []
        XCTAssertEqual(groupShiftedStrings.groupStrings(strings), expected)
    }
}