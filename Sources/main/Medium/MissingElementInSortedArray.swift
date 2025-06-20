final class MissingElementInSortedArray {
    // This is a solution to the problem of finding the k-th missing positive integer in a sorted array of unique positive integers.
    func missingElement(_ nums: [Int], _ k: Int) -> Int {
        var left = 0, right = nums.count - 1

        // Only missingCount function is different from kthMissingPositiveNumber problem
        func missingCount(upTo index: Int) -> Int {
            // Calculate how many integers are missing up to nums[index]
            return nums[index] - nums[0] - index
        }

        // Binary search to find the position where k missing numbers would fit
        while left <= right {
            let mid = left + (right - left) / 2
            // Calculate how many positive integers are missing up to nums[mid]
            let missingCount = missingCount(upTo: mid)

            if missingCount < k {
                // If there are fewer missing numbers than k, move to the right
                left = mid + 1
            } else {
                // If there are enough or more missing numbers, move to the left
                right = mid - 1
            }
        }
        // After the loop, left is the position where k missing numbers would fit
        // The k-th missing positive number will be in between nums[left - 1] and nums[left]
        return nums[left - 1] + (k - missingCount(upTo: left - 1))
    }
}