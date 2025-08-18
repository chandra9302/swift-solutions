struct ClimbingStairs {
    // Dynamic Programming approach
    static func climbStairs(_ n: Int) -> Int {
        // Base case
        guard n > 2 else { return n }
        
        // Create an array to store the number of ways to reach each step
        var dp = [Int](repeating: 0, count: n + 1)
        // Base cases
        dp[1] = 1
        dp[2] = 2
        
        // Fill the dp array using the relation dp[i] = dp[i - 1] + dp[i - 2]
        for i in 3...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        
        return dp[n]
    }
}