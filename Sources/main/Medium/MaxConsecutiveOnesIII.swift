class MaxConsecutiveOnesIII {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var left = 0
        var maxLength = 0
        var zeroCount = 0
        
        // Iterate through the array using a sliding window approach
        // The left pointer represents the start of the window, and the right pointer represents the end.
        for (right, num) in nums.enumerated() {
            // If the current number is zero, increment the zero count
            if num == 0 {
                zeroCount += 1
            }
            
            // If the zero count exceeds k, move the left pointer to the right
            // until the zero count is less than or equal to k
            while zeroCount > k {
                // If the number at the left pointer is zero, decrement the zero count
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                // Move the left pointer to the right
                left += 1
            }
            // Update the maximum length of the subarray found so far
            maxLength = max(maxLength, right - left + 1)
        }
        
        // Return the maximum length of the subarray with at most k zeros
        return maxLength
    }
}