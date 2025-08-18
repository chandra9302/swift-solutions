struct CoinChange {
    static func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount < 0 { return -1 }
        if amount == 0 { return 0 }
        var dp = Array(repeating: Int.max, count: amount + 1)
        dp[0] = 0
        
        for coin in coins {
            for x in coin...amount {
                if dp[x - coin] != Int.max {
                    dp[x] = min(dp[x], dp[x - coin] + 1)
                }
            }
        }
        
        return dp[amount] == Int.max ? -1 : dp[amount]
    }
}