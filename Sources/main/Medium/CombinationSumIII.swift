final class CombinationSumIII {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        // Edge case: if k is 0 or n is 0, return empty combinations
        guard k > 0, n > 0 else { return [] }
        // If k is greater than 9, no valid combinations are possible
        guard k <= 9 else { return [] }
        // If n is less than k, no valid combinations are possible
        guard n >= k * (k + 1) / 2 else { return [] }
        // If n is greater than 45, no valid combinations are possible
        guard n <= 45 else { return [] }

        // Initialize the result array
        var combinations: [[Int]] = []
        var currentComb = [Int]()
        var currentSum = 0

        // Helper function to perform depth-first search / backtracking
        func dfs(_ start: Int) {
            // Base case: if the current combination has k elements and the sum equals n
            if currentSum == n && currentComb.count == k {
                combinations.append(currentComb)
                return
            }

            // Iterate through numbers from 'start' to 9
            for i in start..<10 {
                // If the current sum exceeds n or the combination size exceeds k, stop further exploration
                if currentSum + i > n || currentComb.count + 1 > k { break }
                // Add the current number to the combination
                currentSum += i
                currentComb.append(i)
                // Recur with the next number, ensuring we do not reuse the same number
                dfs(i + 1)
                // Backtrack: remove the last added number and reduce current sum
                currentSum -= i
                currentComb.removeLast()
            }
        }

        dfs(1)
        return combinations
    }
}