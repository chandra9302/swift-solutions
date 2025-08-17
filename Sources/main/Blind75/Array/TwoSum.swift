struct TwoSum {
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        // Dictionary to store the indices of the numbers
        var numToIndex = [Int: Int]()
        
        // Iterate through the array
        for (index, num) in nums.enumerated() {
            // Calculate the complement
            // The complement is the number we need to find to reach the target
            let complement = target - num
            
            // Check if the complement exists in the dictionary
            if let complementIndex = numToIndex[complement] {
                // If it exists, return the indices of the two numbers
                return [complementIndex, index]
            }
            
            // If it doesn't exist, store the index of the current number
            numToIndex[num] = index
        }
        
        // If no solution is found, return an empty array
        return []
    }
}