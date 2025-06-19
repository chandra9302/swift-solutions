final class CuttingRibbons {
    func maxLength(_ ribbons: [Int], _ k: Int) -> Int {
        // Binary search for the maximum length
        var left = 1
        // The maximum possible length is the longest ribbon
        var right = ribbons.max() ?? 0
        // Variable to store the result
        var result = 0

        // Perform binary search to find the maximum length
        while left <= right {
            // Calculate the mid length
            let mid = left + (right - left) / 2
            // Count how many pieces can be obtained with the current mid length
            let count = ribbons.reduce(0) { $0 + $1 / mid }

            // If we can get at least k pieces, try for a longer length
            if count >= k {
                result = mid
                left = mid + 1
            } else {
                // If we cannot get k pieces, try a shorter length
                right = mid - 1
            }
        }

        // Return the maximum length found
        return result
    }
}