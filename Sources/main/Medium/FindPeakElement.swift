class FindPeakElement {
    func findPeakElement(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            // Calculate the middle index
            let mid = (left + right) / 2
            
            // Compare the middle element with its next element
            if nums[mid] < nums[mid + 1] {
                // If the middle element is less than the next element,
                // it means there is a peak in the right half
                left = mid + 1
            } else {
                // If the middle element is greater than or equal to the next element,
                // it means there is a peak in the left half (including mid)
                right = mid
            }
        }
        
        // When left equals right, we have found the peak element
        return left
    }
}