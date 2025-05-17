class TopKFrequentElements {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequencyMap = [Int: Int]()
        
        // Count the frequency of each number
        for num in nums {
            frequencyMap[num, default: 0] += 1
        }
        
        // Create a bucket array where index represents frequency
        var buckets = Array(repeating: [Int](), count: nums.count + 1)
        for (num, freq) in frequencyMap {
            buckets[freq].append(num)
        }
        
        // Collect the top k frequent elements
        var result = [Int]()
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            for num in buckets[i] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
        
        return result
    }
}