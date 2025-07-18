final class CombinationSumIII {
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        var combinations: [[Int]] = []
        var currentComb = [Int]()
        var currentSum = 0

        func dfs(_ start: Int) {
            if currentSum == n, currentComb.count == k {
                combinations.append(currentComb)
                return
            }

            for i in start..<10 {
                if currentSum + i > n || currentComb.count + 1 > k { break }
                currentSum += i
                currentComb.append(i)
                dfs(i + 1)
                currentSum -= i
                currentComb.removeLast()
            }
        }

        dfs(1)
        return combinations
    }
}