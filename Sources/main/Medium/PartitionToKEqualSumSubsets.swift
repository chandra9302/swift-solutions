final class PartitionToKEqualSumSubsets {
    func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {
        guard k > 0 else { return false }

        // Check if the total sum is divisible by k
        let total = nums.reduce(0, +)
        guard total % k == 0 else { return false }
        // Each subset must sum to this value
        let target = total / k
        // Track used elements to avoid reusing them
        var used = Array(repeating: false, count: nums.count)
        // Current sum of the subset being formed
        var currentSum = 0
        // Number of buckets formed
        var buckets = 0
        // Bool to indicate if a valid partition has been found
        var foundValidPartition = false

        // Helper function to perform backtracking
        func backtrack( _ start: Int) {
            // If a valid partition has been found, no need to continue
            if foundValidPartition { return }

            // If we have formed k buckets, check if all elements are used
            if buckets == k {
                if used.allSatisfy({ $0 }) {
                    foundValidPartition = true
                }
                return
            }

            // if the current sum equals the target, we can start forming a new bucket
            if currentSum == target {
                buckets += 1
                currentSum = 0
                backtrack(0)
                buckets -= 1
                currentSum = target
                return
            }

            // Try to add each number to the current subset
            for i in start..<nums.count {
                // Skip if the number is already used or if adding it exceeds the target
                if used[i] || currentSum + nums[i] > target { continue }

                // Mark the number as used and add it to the current sum
                used[i] = true
                currentSum += nums[i]
                // Recur to try to form the next subset
                backtrack(i + 1)
                // Backtrack: remove the last added number and mark it as unused
                currentSum -= nums[i]
                used[i] = false

                if currentSum == 0 {
                    // If we are backtracking and the current sum is zero, we can stop further exploration
                    break
                }
            }
        }

        // Start the backtracking process
        backtrack(0)
        return foundValidPartition
    }
}