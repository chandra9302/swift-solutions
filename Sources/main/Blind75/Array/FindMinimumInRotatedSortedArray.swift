struct FindMinimumInRotatedSortedArray {
    static func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        
        // Iterate until left and right pointers converge
        while left < right {
            let mid = left + (right - left) / 2
            
            // Check if the middle element is greater than the rightmost element
            // If it is, the minimum must be in the right half
            // Otherwise, it is in the left half
            if nums[mid] > nums[right] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        // When left and right converge, we have found the minimum element
        // The left pointer will point to the minimum element
        // This is because the while loop continues until left is equal to right
        // and at that point, both pointers are at the minimum element
        return nums[left]
    }
}