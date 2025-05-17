class RandomPickWithWeight {
    var prefixSum: [Int]
    var total: Int

    init(_ w: [Int]) {
        // Initialize the prefix sum array and total weight
        self.prefixSum = Array(repeating: 0, count: w.count)
        self.total = 0
        // Calculate the prefix sums and total weight
        for i in 0..<w.count {
            total += w[i]
            prefixSum[i] = total
        }
    }

    func pickIndex() -> Int {
        // Generate a random target weight
        let target = Int.random(in: 1...total)
        var left = 0
        var right = prefixSum.count - 1
        // Binary search to find the index of the target weight
        while left < right {
            let mid = left + (right - left) / 2
            // Compare the target with the prefix sum at mid
            if prefixSum[mid] < target {
                left = mid + 1
            } else {
                right = mid
            }
        }
        // When left equals right, we have found the index
        return left
    }
}