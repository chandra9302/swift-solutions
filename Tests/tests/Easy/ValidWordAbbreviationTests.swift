import XCTest
@testable import main

final class ValidWordAbbreviationTests: XCTestCase {
    var validWordAbbreviation: ValidWordAbbreviation!

    override func setUp() {
        super.setUp()
        validWordAbbreviation = ValidWordAbbreviation()
    }

    override func tearDown() {
        validWordAbbreviation = nil
        super.tearDown()
    }

    func testIsValidAbbreviation_case1() {
        XCTAssertTrue(validWordAbbreviation.validWordAbbreviation("internationalization", "i12iz4n"))
    }

    func testIsValidAbbreviation_case2() {
        XCTAssertFalse(validWordAbbreviation.validWordAbbreviation("apple", "a2e"))
    }

    func testIsValidAbbreviation_case3() {
        XCTAssertTrue(validWordAbbreviation.validWordAbbreviation("substitution", "s10n"))
    }

}