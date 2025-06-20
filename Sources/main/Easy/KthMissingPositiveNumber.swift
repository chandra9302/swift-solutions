class KthMissingPositiveNumber {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var left = 0, right = arr.count - 1

        func missingCount(upTo index: Int) -> Int {
            // Calculate how many positive integers are missing up to arr[index]
            return arr[index] - (index + 1)
        }

        // Edge case: if k is larger than the number of missing numbers in the array
        if arr.isEmpty || k > missingCount(upTo: arr.count - 1) + arr.count {
            return k
        }

        // Binary search to find the position where k missing numbers would fit
        while left <= right {
            let mid = left + (right - left) / 2
            // Calculate how many positive integers are missing up to arr[mid]
            let missingCount = arr[mid] - (mid + 1)

            if missingCount < k {
                // If there are fewer missing numbers than k, move to the right
                left = mid + 1
            } else {
                // If there are enough or more missing numbers, move to the left
                right = mid - 1
            }
        }
        // After the loop, left is the position where k missing numbers would fit
        // The k-th missing positive number will be in between arr[left - 1] and arr[left]
        return arr[left - 1] + (k - missingCount(upTo: left - 1))
    }
}