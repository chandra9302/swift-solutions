final class CombinationSum {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combinations = [[Int]]()
        var currentSum = 0
        var currentComb = [Int]()

        // Helper function to perform depth-first search / backtracking
        func dfs(_ start: Int) {
            // Base cases
            guard start < candidates.count else { return }
            guard currentSum <= target else { return }
            if currentSum == target {
                combinations.append(currentComb)
                return
            }

            // Iterate through candidates starting from 'start' index
            for i in start..<candidates.count {
                let candidate = candidates[i]
                // Use current candidate
                currentSum += candidate
                currentComb.append(candidate)
                // Recur with the same candidate (allowing for unlimited usage)
                dfs(i)
                // Backtrack: remove the last candidate and reduce current sum
                currentSum -= candidate
                currentComb.removeLast()
            }
        }

        dfs(0)
        return combinations
    }
}