import XCTest
@testable import main

final class GoatLatinTests: XCTestCase {
    var goatLatin: GoatLatin!

    override func setUp() {
        super.setUp()
        goatLatin = GoatLatin()
    }

    override func tearDown() {
        goatLatin = nil
        super.tearDown()
    }

    func testGoatLatin_case1() {
        let sentence = "I speak Goat Latin"
        let expected = "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
        XCTAssertEqual(goatLatin.toGoatLatin(sentence), expected)
    }

    func testGoatLatin_case2() {
        let sentence = "The quick brown fox jumped over the lazy dog"
        let expected = "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"
        XCTAssertEqual(goatLatin.toGoatLatin(sentence), expected)
    }

    func testGoatLatin_case3() {
        let sentence = "Hello world"
        let expected = "elloHmaa orldwmaaa"
        XCTAssertEqual(goatLatin.toGoatLatin(sentence), expected)
    }
}