import XCTest
@testable import main

final class ExclusiveTimeOfFunctionsTests: XCTestCase {
    var exclusiveTimeOfFunctions: ExclusiveTimeOfFunctions!

    override func setUp() {
        super.setUp()
        exclusiveTimeOfFunctions = ExclusiveTimeOfFunctions()
    }

    override func tearDown() {
        exclusiveTimeOfFunctions = nil
        super.tearDown()
    }

    func testExclusiveTimeExample1() {
        let n = 2
        let logs = ["0:start:0", "1:start:2", "1:end:5", "0:end:6"]
        let expected = [3, 4]
        XCTAssertEqual(exclusiveTimeOfFunctions.exclusiveTime(n, logs), expected)
    }

    func testExclusiveTimeExample2() {
        let n = 1
        let logs = ["0:start:0","0:start:2","0:end:5","0:start:6","0:end:6","0:end:7"]
        let expected = [8]
        XCTAssertEqual(exclusiveTimeOfFunctions.exclusiveTime(n, logs), expected)
    }

    func testExclusiveTimeExample3() {
        let n = 2
        let logs = ["0:start:0","0:start:2","0:end:5","1:start:6","1:end:6","0:end:7"]
        let expected = [7, 1]
        XCTAssertEqual(exclusiveTimeOfFunctions.exclusiveTime(n, logs), expected)
    }
}