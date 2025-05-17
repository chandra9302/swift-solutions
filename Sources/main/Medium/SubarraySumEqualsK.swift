class SubarraySumEqualsK {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        // Count of subarrays that sum to k
        var count = 0
        // Current sum of elements or prefix sum
        var sum = 0
        // Dictionary to store the frequency of prefix sums
        var map = [Int: Int]()
        // Initialize the map with a prefix sum of 0 with frequency 1

        map[0] = 1
        
        for num in nums {
            // Update the current sum
            sum += num
            // Check if there is a prefix sum that, when subtracted from the k is seen before
            // This means there is a subarray that sums to k
            if let prevCount = map[sum - k] {
                // If such a prefix sum exists, add its frequency to the count
                count += prevCount
            }
            // Update the frequency of the current prefix sum in the map
            map[sum, default: 0] += 1
        }
        
        // Return the total count of subarrays that sum to k
        return count
    }
}