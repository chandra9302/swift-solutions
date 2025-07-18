final class Permutations {
    func permute(_ nums: [Int]) -> [[Int]] {
        var permutations = [[Int]]()
        var visited = Array(repeating: false, count: nums.count)
        var current = [Int]()

        func dfs() {
            if current.count == nums.count {
                permutations.append(current)
                return
            }

            for (index, num) in nums.enumerated() {
                if !visited[index] {
                    visited[index] = true
                    current.append(num)
                    dfs()
                    visited[index] = false
                    current.removeLast()
                }
            }
        }
        dfs()
        return permutations
    }
}