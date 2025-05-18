class MinimumAddToMakeParenthesesValid {
    func minAddToMakeValid(_ s: String) -> Int {
        // Initialize counters for left and right parentheses
        // left counts the number of unmatched open parentheses
        // right counts the number of unmatched close parentheses
        var left = 0
        var right = 0
        
        // Iterate through each character in the string
        for char in s {
            // If the character is an open parenthesis, increment left
            if char == "(" {
                left += 1
            } else if char == ")" {
                // If the character is a close parenthesis, check if there is a matching open parenthesis
                // If there is, decrement left
                if left > 0 {
                    left -= 1
                } else {
                    // If there isn't, increment right
                    // This means we have an unmatched close parenthesis
                    right += 1
                }
            }
        }
        
        // The total number of parentheses to add is the sum of unmatched open and close parentheses
        return left + right
    }
}