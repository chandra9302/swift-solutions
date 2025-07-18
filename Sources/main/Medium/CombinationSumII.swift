final class CombinationSumII {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combinations = [[Int]]()
        var currentComb = [Int]()
        var currentSum = 0
        let sortedCandidates = candidates.sorted()

        func dfs(_ start: Int) {
            if currentSum == target {
                combinations.append(currentComb)
                return
            }

            if currentSum > target { return }

            for i in start..<sortedCandidates.count {
                if i > start, sortedCandidates[i] == sortedCandidates[i-1] { continue }
                let candidate = sortedCandidates[i]
                currentSum += candidate
                currentComb.append(candidate)
                dfs(i + 1)
                currentSum -= candidate
                currentComb.removeLast()
            }
        }

        dfs(0)
        return combinations
    }
}