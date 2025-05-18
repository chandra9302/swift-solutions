import XCTest
@testable import main

final class AccountsMergeTests: XCTestCase {
    var accountsMerge: AccountsMerge!

    override func setUp() {
        super.setUp()
        accountsMerge = AccountsMerge()
    }

    override func tearDown() {
        accountsMerge = nil
        super.tearDown()
    }

    func testAccountsMergeExample1() {
        let accounts = [["John","johnsmith@mail.com","john_newyork@mail.com"],["John","johnsmith@mail.com","john00@mail.com"],["Mary","mary@mail.com"],["John","johnnybravo@mail.com"]]
        let expected = [["John", "johnnybravo@mail.com"], ["John", "john00@mail.com", "john_newyork@mail.com", "johnsmith@mail.com"], ["Mary", "mary@mail.com"]]

        let result = accountsMerge.accountsMerge(accounts)
        let sortedResult = result.map { [$0[0]] + $0.dropFirst().sorted() }.sorted(by: { $0[1] < $1[1] })
        let sortedExpected = expected.map { [$0[0]] + $0.dropFirst().sorted() }.sorted(by: { $0[1] < $1[1] })
        XCTAssertEqual(sortedResult, sortedExpected)
    }

    func testAccountsMergeExample2() {
        let accounts = [["Gabe","Gabe0@m.co","Gabe3@m.co","Gabe1@m.co"],["Kevin","Kevin3@m.co","Kevin5@m.co","Kevin0@m.co"],["Ethan","Ethan5@m.co","Ethan4@m.co","Ethan0@m.co"],["Hanzo","Hanzo3@m.co","Hanzo1@m.co","Hanzo0@m.co"],["Fern","Fern5@m.co","Fern1@m.co","Fern0@m.co"]]
        let expected = [["Fern", "Fern0@m.co", "Fern1@m.co", "Fern5@m.co"], ["Gabe", "Gabe0@m.co", "Gabe1@m.co", "Gabe3@m.co"], ["Hanzo", "Hanzo0@m.co", "Hanzo1@m.co", "Hanzo3@m.co"], ["Ethan", "Ethan0@m.co", "Ethan4@m.co", "Ethan5@m.co"], ["Kevin", "Kevin0@m.co", "Kevin3@m.co", "Kevin5@m.co"]]

        let result = accountsMerge.accountsMerge(accounts)
        let sortedResult = result.map { [$0[0]] + $0.dropFirst().sorted() }.sorted(by: { $0[1] < $1[1] })
        let sortedExpected = expected.map { [$0[0]] + $0.dropFirst().sorted() }.sorted(by: { $0[1] < $1[1] })
        XCTAssertEqual(sortedResult, sortedExpected)
    }
}