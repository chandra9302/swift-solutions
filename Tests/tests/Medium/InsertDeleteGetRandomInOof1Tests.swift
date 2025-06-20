import XCTest
@testable import main

final class InsertDeleteGetRandomInOof1Tests: XCTestCase {
    func testInsertReturnsTrueForNewElement() {
        let ds = InsertDeleteGetRandomInOof1()
        XCTAssertTrue(ds.insert(10))
        XCTAssertTrue(ds.insert(20))
    }

    func testInsertReturnsFalseForDuplicateElement() {
        let ds = InsertDeleteGetRandomInOof1()
        XCTAssertTrue(ds.insert(5))
        XCTAssertFalse(ds.insert(5))
    }

    func testRemoveReturnsTrueForExistingElement() {
        let ds = InsertDeleteGetRandomInOof1()
        ds.insert(1)
        XCTAssertTrue(ds.remove(1))
    }

    func testRemoveReturnsFalseForNonExistingElement() {
        let ds = InsertDeleteGetRandomInOof1()
        XCTAssertFalse(ds.remove(100))
        ds.insert(2)
        XCTAssertFalse(ds.remove(3))
    }

    func testInsertRemoveInsertSequence() {
        let ds = InsertDeleteGetRandomInOof1()
        XCTAssertTrue(ds.insert(7))
        XCTAssertTrue(ds.remove(7))
        XCTAssertTrue(ds.insert(7))
    }

    func testGetRandomReturnsInsertedElement() {
        let ds = InsertDeleteGetRandomInOof1()
        ds.insert(42)
        XCTAssertEqual(ds.getRandom(), 42)
    }

    func testGetRandomReturnsAnyOfInsertedElements() {
        let ds = InsertDeleteGetRandomInOof1()
        let values = [1, 2, 3, 4, 5]
        for v in values { ds.insert(v) }
        let randomValue = ds.getRandom()
        XCTAssertTrue(values.contains(randomValue))
    }

    func testRemoveUpdatesInternalStateCorrectly() {
        let ds = InsertDeleteGetRandomInOof1()
        ds.insert(1)
        ds.insert(2)
        ds.insert(3)
        XCTAssertTrue(ds.remove(2))
        let remaining = [ds.getRandom(), ds.getRandom()]
        XCTAssertTrue(remaining.allSatisfy { $0 == 1 || $0 == 3 })
    }

    func testMultipleInsertRemoveAndRandom() {
        let ds = InsertDeleteGetRandomInOof1()
        XCTAssertTrue(ds.insert(10))
        XCTAssertTrue(ds.insert(20))
        XCTAssertTrue(ds.insert(30))
        XCTAssertTrue(ds.remove(20))
        XCTAssertFalse(ds.remove(20))
        let val = ds.getRandom()
        XCTAssertTrue(val == 10 || val == 30)
    }
}