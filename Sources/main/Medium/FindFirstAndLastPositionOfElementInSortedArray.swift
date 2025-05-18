class FindFirstAndLastPositionOfElementInSortedArray {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [-1, -1]
        var left = 0
        var right = nums.count - 1
        
        // Find the first position of the target
        while left <= right {
            let mid = left + (right - left) / 2
            // Compare the target with the middle element
            if nums[mid] < target {
                // If the target is greater, move the left pointer to mid + 1
                left = mid + 1
            } else {
                // If the target is less than or equal, move the right pointer to mid - 1
                right = mid - 1
            }
        }
        
        // Check if the target is found at the left pointer
        // If left is within bounds and the element at left is equal to the target,
        // then we have found the first position of the target
        if left < nums.count && nums[left] == target {
            result[0] = left
        } else {
            // If the target is not found, return [-1, -1]
            return result
        }
        
        // Reset right pointer for finding the last position
        right = nums.count - 1
        
        // Find the last position of the target
        while left <= right {
            let mid = left + (right - left) / 2
            // Compare the target with the middle element
            // If the target is greater than or equal, move the left pointer to mid + 1
            // Otherwise, move the right pointer to mid - 1
            if nums[mid] <= target {
                // If the target is greater than or equal, move the left pointer to mid + 1
                left = mid + 1
            } else {
                // If the target is less, move the right pointer to mid - 1
                right = mid - 1
            }
        }
        
        // Check if the target is found at the right pointer
        result[1] = right
        
        // If right is within bounds and the element at right is equal to the target,
        return result
    }
}