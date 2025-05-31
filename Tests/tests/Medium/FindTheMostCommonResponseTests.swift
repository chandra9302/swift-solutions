import XCTest
@testable import main

final class FindTheMostCommonResponseTests: XCTestCase {
    var findTheMostCommonResponse: FindTheMostCommonResponse!

    override func setUp() {
        super.setUp()
        findTheMostCommonResponse = FindTheMostCommonResponse()
    }

    override func tearDown() {
        findTheMostCommonResponse = nil
        super.tearDown()
    }

    func testFindTheMostCommonResponse_example1() {
        let responses = [["good","ok","good","ok"],["ok","bad","good","ok","ok"],["good"],["bad"]]
        let expectedResult = "good"
        XCTAssertEqual(findTheMostCommonResponse.findCommonResponse(responses), expectedResult)
    }

    func testFindTheMostCommonResponse_example2() {
        let responses = [["good","ok","good"],["ok","bad"],["bad","notsure"],["great","good"]]
        let expectedResult = "bad"
        XCTAssertEqual(findTheMostCommonResponse.findCommonResponse(responses), expectedResult)
    }

}