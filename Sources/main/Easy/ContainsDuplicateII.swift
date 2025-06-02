final class ContainsDuplicateII {
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        // Dictionary to store the last index of each number
        var numIndices = [Int: Int]()
        
        // Enumerate through the array to check for duplicates within the range k
        for (index, num) in nums.enumerated() {
            // If the number has been seen before and the difference between indices is less than or equal to k, return true
            if let lastIndex = numIndices[num], index - lastIndex <= k {
                return true
            }
            // Update the last index of the number
            numIndices[num] = index
        }
        // If no such pair is found, return false
        return false
    }
}