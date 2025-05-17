import XCTest
@testable import main 

final class SimplifyPathTests: XCTestCase {
    var simplifyPath: SimplifyPath!

    override func setUp() {
        super.setUp()
        simplifyPath = SimplifyPath()
    }

    override func tearDown() {
        simplifyPath = nil
        super.tearDown()
    }

    func testSimplifyPathWithHome() {
        XCTAssertEqual(simplifyPath.simplifyPath("/home/"), "/home")
    }

    func testSimplifyPathWithParentDirectory() {
        XCTAssertEqual(simplifyPath.simplifyPath("/../"), "/")
    }

    func testSimplifyPathWithDoubleSlashes() {
        XCTAssertEqual(simplifyPath.simplifyPath("/home//foo/"), "/home/foo")
    }

    func testSimplifyPathWithDotAndParentDirectories() {
        XCTAssertEqual(simplifyPath.simplifyPath("/a/./b/../../c/"), "/c")
    }

    func testSimplifyPathWithComplexPath() {
        XCTAssertEqual(simplifyPath.simplifyPath("/a/../../b/../c//.//"), "/c")
    }

    func testSimplifyPathWithMultipleSlashesAndDots() {
        XCTAssertEqual(simplifyPath.simplifyPath("/a//b////c/d//././/.."), "/a/b/c")
    }
}