import XCTest
@testable import main

final class CoinChangeTests: XCTestCase {
    func testCoinChange_basic() {
        XCTAssertEqual(CoinChange.coinChange([1, 2, 5], 11), 3) // 5+5+1
        XCTAssertEqual(CoinChange.coinChange([2], 3), -1)
        XCTAssertEqual(CoinChange.coinChange([1], 0), 0)
        XCTAssertEqual(CoinChange.coinChange([1], 2), 2)
    }
    
    func testCoinChange_largeAmount() {
        XCTAssertEqual(CoinChange.coinChange([1, 2, 5], 100), 20)
    }
    
    func testCoinChange_noCoins() {
        XCTAssertEqual(CoinChange.coinChange([], 7), -1)
    }
    
    func testCoinChange_singleCoin() {
        XCTAssertEqual(CoinChange.coinChange([7], 14), 2)
        XCTAssertEqual(CoinChange.coinChange([7], 13), -1)
    }
}
