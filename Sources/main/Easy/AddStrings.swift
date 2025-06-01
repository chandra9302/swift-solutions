final class AddStrings {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let chars1 = Array(num1)
        let chars2 = Array(num2)
        var i = chars1.count - 1
        var j = chars2.count - 1
        var carry = 0
        var result = ""
        
        // Loop until both strings are processed and no carry remains
        while i >= 0 || j >= 0 || carry > 0 {
            // Get the current digit from each string, or 0 if we've exhausted one of them
            let digit1 = i >= 0 ? Int(String(chars1[i])) ?? 0 : 0
            let digit2 = j >= 0 ? Int(String(chars2[j])) ?? 0 : 0
            
            // Calculate the sum of the digits and the carry
            let sum = digit1 + digit2 + carry
            // Update the carry for the next iteration
            carry = sum / 10
            // Append the last digit of the sum to the result
            result.append(Character("\(sum % 10)")) // Convert to character
            // Move to the next digits
            i -= 1
            j -= 1
        }
        
        // The result is built in reverse order, so we need to reverse it before returning
        return String(result.reversed())
    }
}