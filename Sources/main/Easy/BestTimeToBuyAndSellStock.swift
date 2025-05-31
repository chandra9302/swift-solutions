final class BestTimeToBuyAndSellStock {
    func maxProfit(_ prices: [Int]) -> Int {
        
        // Edge cases
        // If the prices array is empty, return 0
        if prices.isEmpty {
            return 0
        }
        // If the prices array has only one element, return 0
        if prices.count == 1 {
            return 0
        }
        // If the prices array has exactly two elements, return the profit if any
        if prices.count == 2 {
            return max(0, prices[1] - prices[0])
        }
        // Initialize variables to track the minimum price and maximum profit
        // Start with the first price as the minimum price
        var minPrice = prices.first ?? 0
        // Initialize maximum profit to 0
        var maxProfit = 0
        
        // Iterate through the prices starting from the second element
        for price in prices.dropFirst() {
            // Update the minimum price if the current price is lower
            if price < minPrice {
                minPrice = price
            } else {
                // Calculate the profit if we sell at the current price
                let profit = price - minPrice
                // Update the maximum profit if the current profit is greater
                if profit > maxProfit {
                    maxProfit = profit
                }
            }
        }
        
        // Return the maximum profit found
        return maxProfit
    }
}