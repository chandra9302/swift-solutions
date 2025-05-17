class MaximumSubarray {
    // Kadane's Algorithm
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var currentSum = 0
        
        // Iterate through the array
        nums.forEach { num in
            // Add the current number to the current sum
            currentSum += num
            // Update the maximum sum if the current sum is greater
            maxSum = max(maxSum, currentSum)
            // If the current sum becomes negative, reset it to 0
            if currentSum < 0 {
                currentSum = 0
            }
        }
        
        return maxSum
    }
}