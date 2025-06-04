final class SquaresOfASortedArray {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        // Two-pointer approach to find squares of sorted array
        var left = 0
        var right = nums.count - 1
        var result = [Int](repeating: 0, count: nums.count)
        
        // Iterate from the end of the result array to the beginning
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            // Fill the result array from the end to the beginning
            let leftSquare = nums[left] * nums[left]
            let rightSquare = nums[right] * nums[right]
            
            // Compare the squares and place the larger one at the current index
            if leftSquare > rightSquare {
                result[i] = leftSquare
                left += 1
            } else {
                result[i] = rightSquare
                right -= 1
            }
        }
        
        return result
    }
}