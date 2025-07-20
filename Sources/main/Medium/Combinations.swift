final class Combinations {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        // Edge case: if n or k is zero, return an empty array
        guard n > 0, k > 0, k <= n else { return [] }
        // If k is greater than n, no combinations are possible
        guard k <= n else { return [] }
        // If n is zero or k is zero, return an empty array
        guard n > 0, k > 0 else { return [] }
        
        var combinations = [[Int]]()
        var currentComb = [Int]()

        // Helper function to perform depth-first search / backtracking
        func dfs(_ start: Int) {
            // Base case: if the current combination has k elements, add it to the result
            if currentComb.count == k {
                combinations.append(currentComb)
                return
            }

            // Iterate through the numbers from 'start' to 'n'
            for i in stride(from: start, through: n, by: 1) {
                // If the current combination has reached the size k, stop further exploration
                if currentComb.count + 1 > k { break }
                // Add the current number to the combination
                currentComb.append(i)
                // Recur with the next number
                dfs(i+1)
                // Backtrack: remove the last added number
                currentComb.removeLast()
            }
        }
        // Start the backtracking process from index 1
        dfs(1)
        return combinations
    }
}