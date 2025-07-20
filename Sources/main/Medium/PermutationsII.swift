final class PermutationsII {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var permutations = [[Int]]()
        var current = [Int]()
        // Track visited elements to avoid reusing them in the same permutation
        var visited = Array(repeating: false, count: nums.count)
        // Sort the numbers to handle duplicates
        let sortedNums = nums.sorted()

        // Helper function to perform depth-first search / backtracking
        func dfs() {
            // Base case: if the current permutation has the same length as nums, add it to the result
            if current.count == sortedNums.count {
                permutations.append(current)
                return
            }

            // Iterate through the numbers
            for i in 0..<sortedNums.count {
                // Skip already visited numbers to avoid duplicates in the current permutation
                // Also skip duplicates: if the current number is the same as the previous one and the previous one was not used in this position, skip it
                if visited[i] || (i > 0 && sortedNums[i] == sortedNums[i-1] && !visited[i-1]) {
                    continue
                }
                // Add the current number to the permutation and mark it as visited
                visited[i] = true
                current.append(sortedNums[i])
                // Recur to build the next level of the permutation
                dfs()
                // Backtrack: remove the last added number and mark it as unvisited
                current.removeLast()
                visited[i] = false
            }
        }

        dfs()
        return permutations
    }
}