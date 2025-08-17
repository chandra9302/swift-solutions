struct MaximumProductSubarray {
    static func maxProduct(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var maxProduct = nums[0]
        var minProduct = nums[0]
        var result = nums[0]
        
        for i in 1..<nums.count {
            let temp = maxProduct
            // Calculate the maximum and minimum products at the current position
            maxProduct = max(nums[i], maxProduct * nums[i], minProduct * nums[i])
            minProduct = min(nums[i], minProduct * nums[i], temp * nums[i])
            
            result = max(result, maxProduct)
        }
        
        return result
    }
}