class MaximumSwap {
    func maximumSwap(_ num: Int) -> Int {
        // num <= 11 is a special case where no swap can increase the number
        // For example, 10 -> 01, 11 -> 11
        guard num > 11 else { return num }
        // Convert the number to a string and then to an array of characters
        var digits = Array(String(num))
        // Initialize variables to keep track of the maximum digit seen so far
        var maxSoFar: Character = "0"
        // Initialize indices for the maximum digit and the digit to swap
        var maxIndex = -1
        var leftSwapIndex = -1
        var rightSwapIndex = -1

        // Iterate through the digits from right to left
        for i in stride(from: digits.count - 1, through: 0, by: -1) {
            // If we find a digit larger than the current maxSoFar, update maxSoFar and maxIndex
            if digits[i] > maxSoFar {
                maxSoFar = digits[i]
                maxIndex = i
            } else if digits[i] < maxSoFar {
                // If we find a digit smaller than maxSoFar, we can swap it with the max digit
                // We need to find the leftmost occurrence of the max digit to swap with
                // Update the leftSwapIndex to the current index
                // and the rightSwapIndex to the index of the max digit
                leftSwapIndex = i
                rightSwapIndex = maxIndex
            }
        }
        // If we found a valid swap, perform the swap
        // leftSwapIndex and rightSwapIndex will be -1 if no swap is possible
        if leftSwapIndex != -1, rightSwapIndex != -1 {
            digits.swapAt(leftSwapIndex, rightSwapIndex)
        }
        // Convert the digits back to an integer
        let swappedNum = Int(String(digits))!
        return swappedNum
    }
}