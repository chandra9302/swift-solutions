class ContinuousSubarraySum {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        let n = nums.count
        if n < 2 { return false }
        
        var sum = 0
        // Dictionary to store the first occurrence of each sum
        var map = [Int: Int]()
        map[0] = -1 // Handle the case where the subarray starts from index 0
        
        for i in 0..<n {
            // Calculate the cumulative sum or prefix sum
            // The prefix sum is the sum of all elements from the start to the current index
            sum += nums[i]
            // If k is not zero, we take the modulo of the sum with k
            if k != 0 {
                sum %= k
            }
            
            // If the sum is already in the map, we check if the distance between the current index and 
            // the previous index is greater than 1
            if let prevIndex = map[sum] {
                if i - prevIndex > 1 {
                    return true
                }
            } else {
                // If the sum is not in the map, we store the current index
                map[sum] = i
            }
        }
        
        return false
    }
}