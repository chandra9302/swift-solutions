class NextPermutation {
    func nextPermutation(_ nums: inout [Int]) {
        let n = nums.count
        var i = n - 2
        
        // Find the first decreasing element from the end
        while i >= 0 && nums[i] >= nums[i + 1] {
            i -= 1
        }
        
        if i >= 0 {
            // Find the first element larger than nums[i] from the end
            var j = n - 1
            while j > i && nums[j] <= nums[i] {
                j -= 1
            }
            // Swap them
            nums.swapAt(i, j)
        }
        
        // Sort the elements after index i in ascending order
        nums[i + 1..<nums.count].sort()
    }
}