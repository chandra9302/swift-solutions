final class CombinationSumII {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combinations = [[Int]]()
        var currentComb = [Int]()
        var currentSum = 0
        // Sort candidates to handle duplicates and facilitate pruning
        let sortedCandidates = candidates.sorted()

        // Helper function to perform depth-first search / backtracking
        func dfs(_ start: Int) {
            // Base cases
            if currentSum == target {
                combinations.append(currentComb)
                return
            }

            for i in start..<sortedCandidates.count {
                // Skip duplicates
                if i > start, sortedCandidates[i] == sortedCandidates[i-1] { continue }
                // If the current sum exceeds the target, no need to continue
                if currentSum + sortedCandidates[i] > target { break }
                // Use current candidate
                let candidate = sortedCandidates[i]
                currentSum += candidate
                currentComb.append(candidate)
                // Recur with the next index to avoid reusing the same element
                dfs(i + 1)
                // Backtrack: remove the last candidate and reduce current sum
                currentSum -= candidate
                currentComb.removeLast()
            }
        }
        // Start the backtracking process from index 0
        dfs(0)
        return combinations
    }
}