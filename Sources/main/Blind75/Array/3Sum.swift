class ThreeSum {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        // This function finds all unique triplets in the array that sum up to zero.
        var result = [[Int]]()
        guard nums.count >= 3 else {
            // If there are less than 3 numbers, return an empty array
            return result
        }
        // Sort the input array to make it easier to avoid duplicates
        let sortedNums = nums.sorted()

         
        // Iterate through the sorted array
        for i in 0..<sortedNums.count - 2 {
            // Skip duplicate elements to avoid repeating the same triplet
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }
            
            // Use two pointers to find pairs that sum up to the negative of the current element
            var left = i + 1
            var right = sortedNums.count - 1
            
            // While the left pointer is less than the right pointer
            while left < right {
                let sum = sortedNums[i] + sortedNums[left] + sortedNums[right]
                
                // If the sum is zero, we found a triplet
                if sum == 0 {
                    result.append([sortedNums[i], sortedNums[left], sortedNums[right]])
                    // Move the left and right pointers to find other potential triplets
                    // Skip duplicate elements to avoid repeating the same triplet
                    while left < right && sortedNums[left] == sortedNums[left + 1] {
                        left += 1
                    }
                    // Skip duplicate elements to avoid repeating the same triplet
                    while left < right && sortedNums[right] == sortedNums[right - 1] {
                        right -= 1
                    }
                    // Move both pointers inward to continue searching for other pairs
                    left += 1
                    right -= 1
                } else if sum < 0 {
                    // If the sum is less than zero, we need a larger number
                    left += 1
                } else {
                    // If the sum is greater than zero, we need a smaller number
                    right -= 1
                }
            }
        }
        return result
    }
}