final class PermutationsII {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var permutations = [[Int]]()
        var current = [Int]()
        var visited = Array(repeating: false, count: nums.count)
        let sortedNums = nums.sorted()

        func dfs() {
            if current.count == sortedNums.count {
                permutations.append(current)
                return
            }

            for i in 0..<sortedNums.count {
                if visited[i] || (i > 0 && sortedNums[i] == sortedNums[i-1] && !visited[i-1]) {
                    continue
                }
                visited[i] = true
                current.append(sortedNums[i])
                dfs()
                current.removeLast()
                visited[i] = false
            }
        }

        dfs()
        return permutations
    }
}