final class Permutations {
    func permute(_ nums: [Int]) -> [[Int]] {
        var permutations = [[Int]]()
        var current = [Int]()
        // Track visited elements to avoid reusing them in the same permutation
        var visited = Array(repeating: false, count: nums.count)
        
        // Helper function to perform depth-first search / backtracking
        func dfs() {
            // Base case: if the current permutation has the same length as nums, add it to the result
            if current.count == nums.count {
                permutations.append(current)
                return
            }

            // Iterate through the numbers
            for (index, num) in nums.enumerated() {
                // Skip already visited numbers to avoid duplicates in the current permutation
                if visited[index] {
                    continue
                }
                // Add the current number to the permutation && mark it as visited
                visited[index] = true
                current.append(num)
                // Recur to build the next level of the permutation
                dfs()
                // Backtrack: remove the last added number and mark it as unvisited
                visited[index] = false
                current.removeLast()
            }
        }
        // Start the backtracking process
        dfs()
        return permutations
    }
}