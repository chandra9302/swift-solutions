class SearchInRotatedSortedArray {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            
            // Check if the middle element is the target
            if nums[mid] == target {
                return mid
            }
            
            // Check if the left half is sorted
            if nums[left] <= nums[mid] {
                // Target is in the left half
                if nums[left] <= target && target < nums[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else { // Right half is sorted
                // Target is in the right half
                if nums[mid] < target && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        
        return -1 // Target not found
    }
}