struct ProductOfArrayExceptSelf {
    static func productExceptSelf(_ nums: [Int]) -> [Int] {
        let count = nums.count
        var result = Array(repeating: 1, count: count)
        
        // Calculate left products
        var leftProduct = 1
        for i in 0..<count {
            result[i] = leftProduct
            leftProduct *= nums[i]
        }
        
        // Calculate right products and multiply with left products
        var rightProduct = 1
        for i in (0..<count).reversed() {
            result[i] *= rightProduct
            rightProduct *= nums[i]
        }
        
        return result
    }
}