struct NumberOf1Bits {
    static func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var n = n
        // Loop until n becomes 0
        while n > 0 {
            count += 1
            n &= n - 1 // Clear the least significant bit set
        }
        return count
    }
}