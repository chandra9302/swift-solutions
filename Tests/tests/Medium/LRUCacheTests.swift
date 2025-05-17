import XCTest
@testable import main

final class LRUCacheTests: XCTestCase {
    func testLRUCache() {
        let lruCache = LRUCache(capacity: 2)
        lruCache.put(1, 1)
        lruCache.put(2, 2)
        XCTAssertEqual(lruCache.get(1), 1) // returns 1
        lruCache.put(3, 3) // evicts key 2
        XCTAssertEqual(lruCache.get(2), -1) // returns -1 (not found)
        lruCache.put(4, 4) // evicts key 1
        XCTAssertEqual(lruCache.get(1), -1) // returns -1 (not found)
        XCTAssertEqual(lruCache.get(3), 3) // returns 3
        XCTAssertEqual(lruCache.get(4), 4) // returns 4
    }
}