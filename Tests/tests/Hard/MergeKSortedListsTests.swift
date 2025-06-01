import XCTest
@testable import main

final class MergeKSortedListsTests: XCTestCase {
    var mergeKSortedLists: MergeKSortedLists!

    override func setUp() {
        super.setUp()
        mergeKSortedLists = MergeKSortedLists()
    }

    override func tearDown() {
        mergeKSortedLists = nil
        super.tearDown()
    }
    
    func testExample1() {
        let lists = [ListNode.buildList(from: [1, 4, 5]), ListNode.buildList(from: [1, 3, 4]), ListNode.buildList(from: [2, 6])]
        let expected = ListNode.buildList(from: [1, 1, 2, 3, 4, 4, 5, 6])
        XCTAssertEqual(mergeKSortedLists.mergeKLists(lists), expected)
    }
    
    func testExample2() {
        let lists: [ListNode?] = []
        XCTAssertNil(mergeKSortedLists.mergeKLists(lists))
    }
    
    func testExample3() {
        let lists = [ListNode.buildList(from: [-1, 5]), ListNode.buildList(from: [1, 3]), ListNode.buildList(from: [2])]
        let expected = ListNode.buildList(from: [-1, 1, 2, 3, 5])
        XCTAssertEqual(mergeKSortedLists.mergeKLists(lists), expected)
    }
}