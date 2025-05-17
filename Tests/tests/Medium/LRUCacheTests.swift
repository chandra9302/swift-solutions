import XCTest
@testable import main

final class LRUCacheTests: XCTestCase {
    var lruCache: LRUCache!

    override func setUp() {
        super.setUp()
        lruCache = LRUCache(capacity: 2)
    }

    override func tearDown() {
        lruCache = nil
        super.tearDown()
    }

    func testPutAndGetKey1() {
        lruCache.put(1, 1)
        XCTAssertEqual(lruCache.get(1), 1) // returns 1
    }

    func testEvictKey2() {
        lruCache.put(1, 1)
        lruCache.put(2, 2)
        lruCache.put(3, 3) // evicts key 1
        XCTAssertEqual(lruCache.get(1), -1) // returns -1 (not found)
    }

    func testEvictKey1() {
        lruCache.put(1, 1)
        lruCache.put(2, 2)
        lruCache.put(3, 3) // evicts key 2
        lruCache.put(4, 4) // evicts key 1
        XCTAssertEqual(lruCache.get(1), -1) // returns -1 (not found)
    }

    func testGetKey3() {
        lruCache.put(1, 1)
        lruCache.put(2, 2)
        lruCache.put(3, 3) // evicts key 2
        XCTAssertEqual(lruCache.get(3), 3) // returns 3
    }

    func testGetKey4() {
        lruCache.put(1, 1)
        lruCache.put(2, 2)
        lruCache.put(3, 3) // evicts key 2
        lruCache.put(4, 4) // evicts key 1
        XCTAssertEqual(lruCache.get(4), 4) // returns 4
    }
}