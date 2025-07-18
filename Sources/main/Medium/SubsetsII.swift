class SubsetsII {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var currentSubset: [Int] = []
        // Sort the input to handle duplicates
        // This ensures that duplicates are adjacent
        // and can be skipped easily
        let sortedNums = nums.sorted()

        // Helper function for backtracking / dfs
        func dfs(_ start: Int) {
            // Append the current subset to the result
            result.append(currentSubset)

            // Iterate through the sorted numbers starting from 'start'
            for i in start..<sortedNums.count {
                // If the current number is the same as the previous one,
                // skip it to avoid duplicates in the current subset
                if i > start && sortedNums[i] == sortedNums[i - 1] { 
                    continue 
                }
                // Include the current number in the subset
                currentSubset.append(sortedNums[i])
                // DFS with the next index
                dfs(i + 1)
                // Backtrack: remove the last added number
                currentSubset.removeLast()
            }
        }

        // Start the DFS from index 0
        dfs(0)
        // Return the result containing all unique subsets
        return result
    }
}