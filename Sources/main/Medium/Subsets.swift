final class Subsets {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var subsets = [[Int]]()
        var currentSubset = [Int]()
        
        func dfs(_ start: Int) {
            subsets.append(currentSubset)

            for i in start..<nums.count {
                currentSubset.append(nums[i])
                dfs(i+1)
                currentSubset.removeLast()
            }
        }

        dfs(0)
        return subsets
    }
}