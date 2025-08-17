struct MissingNumber {
    static func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let expectedSum = n * (n + 1) / 2
        let actualSum = nums.reduce(0, +)
        return expectedSum - actualSum
    }

    static func missingNumberXOR(_ nums: [Int]) -> Int {
        var result = nums.count
        for i in 0..<nums.count {
            result ^= i ^ nums[i]
        }
        return result
    }
}