class KthSmallestElementInASortedMatrix {
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        // Binary search on the value
        // The range of values is between the smallest and largest elements in the matrix
        // The smallest element is at the top-left corner and the largest is at the bottom-right corner
        var left = matrix[0][0]
        var right = matrix[matrix.count - 1][matrix[0].count - 1]
        
        // Perform binary search to find the kth smallest element
        while left < right {
            // Calculate the mid value
            let mid = left + (right - left) / 2
            // Count the number of elements less than or equal to mid
            let count = countLessEqual(matrix, mid)
            
            // If the count is less than k, we need to search in the right half
            if count < k {
                left = mid + 1
            } else {
                // If the count is greater than or equal to k, we need to search in the left half
                right = mid
            }
        }
        
        // When left equals right, we have found the kth smallest element
        // The left pointer will point to the kth smallest element
        return left
    }
    
    private func countLessEqual(_ matrix: [[Int]], _ target: Int) -> Int {
        var count = 0
        // Start from the bottom-left corner of the matrix
        var row = matrix.count - 1
        var col = 0
        
        // Traverse the matrix
        while row >= 0 && col < matrix[0].count {
            // If the current element is less than or equal to the target,
            if matrix[row][col] <= target {
                // Count all elements in the current row that are less than or equal to the target
                // Since the matrix is sorted, all elements to the left of the current element are also less than or equal to the target
                count += row + 1
                // Move to the next column
                col += 1
            } else {
                // If the current element is greater than the target, move up to the previous row
                row -= 1
            }
        }
        
        return count
    }
}