final class StringToInteger {
    func myAtoi(_ s: String) -> Int {
        // Trim leading and trailing whitespace
        let trimmedString = s.trimmingCharacters(in: .whitespacesAndNewlines)
        // Check if the string is empty after trimming
        guard !trimmedString.isEmpty else { return 0 }
        
        // Initialize variables
        var sign = 1
        var index = 0
        let length = trimmedString.count
        let maxInt = Int32.max
        let minInt = Int32.min
        
        // Check for sign
        // If the first character is a sign, update the sign and increment the index
        if trimmedString[trimmedString.startIndex] == "-" {
            sign = -1
            index += 1
        } else if trimmedString[trimmedString.startIndex] == "+" {
            index += 1
        }
        
        // Initialize result variable
        var result: Int32 = 0
        
        // Iterate through the string until a non-digit character is found or the end of the string is reached
        while index < length {
            // Check if the character is a digit
            let char = trimmedString[trimmedString.index(trimmedString.startIndex, offsetBy: index)]
            guard let digit = char.wholeNumberValue else { break }
            
            // Check for overflow
            // If the result is greater than the maximum integer value, return the maximum or minimum integer value
            if result > (maxInt - Int32(digit)) / 10 {
                // If the sign is positive, return the maximum integer value
                // If the sign is negative, return the minimum integer value
                return sign == 1 ? Int(maxInt) : Int(minInt)
            }
            
            // Update the result
            result = result * 10 + Int32(digit)
            // Increment the index
            index += 1
        }
        
        // Return the result multiplied by the sign
        // The result is multiplied by the sign to account for negative numbers
        return Int(result * Int32(sign))
    }
}