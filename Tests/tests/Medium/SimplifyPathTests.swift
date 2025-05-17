import XCTest
@testable import main 

final class SimplifyPathTests: XCTestCase {
    func testSimplifyPath() {
        let simplifyPath = SimplifyPath()
        XCTAssertEqual(simplifyPath.simplifyPath("/home/"), "/home")
        XCTAssertEqual(simplifyPath.simplifyPath("/../"), "/")
        XCTAssertEqual(simplifyPath.simplifyPath("/home//foo/"), "/home/foo")
        XCTAssertEqual(simplifyPath.simplifyPath("/a/./b/../../c/"), "/c")
        XCTAssertEqual(simplifyPath.simplifyPath("/a/../../b/../c//.//"), "/c")
        XCTAssertEqual(simplifyPath.simplifyPath("/a//b////c/d//././/.."), "/a/b/c")
    }
}