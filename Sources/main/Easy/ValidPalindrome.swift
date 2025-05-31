class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        // Convert the string to lowercase and create an array of characters
        let chars = Array(s.lowercased())
        // Initialize two pointers, one at the start and one at the end of the array
        var left = 0, right = chars.count - 1
        // Loop until the two pointers meet
        while left < right {
            // Skip non-alphanumeric characters
            while left < right && !chars[left].isLetter && !chars[left].isNumber {
                left += 1
            }
            while left < right && !chars[right].isLetter && !chars[right].isNumber {
                right -= 1
            }
            // Compare characters, if they are not equal, return false
            if chars[left] != chars[right] {
                return false
            }
            // Move the pointers towards the center
            left += 1
            right -= 1
        }
        // If all characters matched, return true
        return true
    }
}