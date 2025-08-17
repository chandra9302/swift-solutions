import XCTest
@testable import main

final class BestTimeToBuyAndSellStockTests: XCTestCase {
    var bestTimeToBuyAndSellStock: BestTimeToBuyAndSellStock!

    override func setUp() {
        super.setUp()
        bestTimeToBuyAndSellStock = BestTimeToBuyAndSellStock()
    }

    override func tearDown() {
        bestTimeToBuyAndSellStock = nil
        super.tearDown()
    }

    func testMaxProfit_case1() {
        let prices = [7, 1, 5, 3, 6, 4]
        let result = bestTimeToBuyAndSellStock.maxProfit(prices)
        XCTAssertEqual(result, 5) // Buy at 1 and sell at 6
    }

    func testMaxProfit_case2() {
        let prices = [7, 6, 4, 3, 1]
        let result = bestTimeToBuyAndSellStock.maxProfit(prices)
        XCTAssertEqual(result, 0) // No profit can be made
    }

    func testMaxProfit_case3() {
        let prices = [2, 4, 1]
        let result = bestTimeToBuyAndSellStock.maxProfit(prices)
        XCTAssertEqual(result, 2) // Buy at 2 and sell at 4
    }
}