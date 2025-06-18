final class StringToInteger {
    func myAtoi(_ s: String) -> Int {
        // Convert the string to an array of characters after trimming whitespaces
        let chars = Array(s.trimmingCharacters(in: .whitespaces))
        // Check if the array is empty after trimming
         // If it is empty, return 0 as per the problem statement
        guard !chars.isEmpty else { return 0 }

        // The result variable will hold the final integer value
        var result = 0
        // A flag to check if the number is negative
        var isNegative = false
        // Start parsing the characters from the beginning
        var index = 0

        // Check for optional sign at the beginning
        if chars[index] == "-" {
            isNegative = true
            index += 1
        } else if chars[index] == "+" {
            index += 1
        }

        // Iterate through the characters until we reach a non-digit character or the end of the string.
        while index < chars.count, let digit = chars[index].wholeNumberValue {
            // Check for overflow conditions
            if result > (Int(Int32.max) - digit) / 10 {
                // If the result exceeds the maximum value for a 32-bit signed integer, return the appropriate limit
                return isNegative ? Int(Int32.min) : Int(Int32.max)
            }
            // Update the result by multiplying the current result by 10 and adding the new digit
            result = result * 10 + digit
            index += 1
        }

        // If the number is negative, return the negative result
        return isNegative ? -result : result
    }
}