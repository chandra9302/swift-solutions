import XCTest
@testable import main

final class MinStackTests: XCTestCase {
    var minStack: MinStack!

    override func setUp() {
        super.setUp()
        minStack = MinStack()
    }

    override func tearDown() {
        minStack = nil
        super.tearDown()
    }

    func testPushAndTop() {
        minStack.push(3)
        XCTAssertEqual(minStack.top(), 3)
        minStack.push(5)
        XCTAssertEqual(minStack.top(), 5)
    }

    func testGetMin() {
        minStack.push(3)
        XCTAssertEqual(minStack.getMin(), 3)
        minStack.push(5)
        XCTAssertEqual(minStack.getMin(), 3)
        minStack.push(2)
        XCTAssertEqual(minStack.getMin(), 2)
        minStack.push(1)
        XCTAssertEqual(minStack.getMin(), 1)
    }

    func testPop() {
        minStack.push(3)
        minStack.push(2)
        minStack.push(1)
        XCTAssertEqual(minStack.getMin(), 1)
        minStack.pop()
        XCTAssertEqual(minStack.getMin(), 2)
        minStack.pop()
        XCTAssertEqual(minStack.getMin(), 3)
    }

    func testMixedOperations() {
        minStack.push(2)
        minStack.push(0)
        minStack.push(3)
        minStack.push(0)
        XCTAssertEqual(minStack.getMin(), 0)
        minStack.pop()
        XCTAssertEqual(minStack.getMin(), 0)
        minStack.pop()
        XCTAssertEqual(minStack.getMin(), 0)
        minStack.pop()
        XCTAssertEqual(minStack.getMin(), 2)
    }
}