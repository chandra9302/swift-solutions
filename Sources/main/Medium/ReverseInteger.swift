final class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        // Initialize variables
        var reversedInteger = 0
        // Check if the input integer is negative
        let isNegative = x < 0
        // Work with the absolute value of the input integer
        var absX = abs(x)

        // Loop to reverse the digits of the integer until all digits are processed
        while absX > 0 {
            // Extract the last digit
            let digit = absX % 10
            // Remove the last digit from absX
            absX /= 10
            // Check for overflow before updating the reversed integer
            if reversedInteger > (Int(Int32.max) - digit) / 10 {
                return 0
            }
            // Update the reversed integer
            reversedInteger = reversedInteger * 10 + digit
        }
        // Return the reversed integer with the correct sign
        return isNegative ? -reversedInteger : reversedInteger
    }
}