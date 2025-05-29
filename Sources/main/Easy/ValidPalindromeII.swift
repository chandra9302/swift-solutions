final class ValidPalindromeII {
    func validPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        // Two pointers approach to check if the string can be a palindrome
        var left = 0
        var right = chars.count - 1

        // Helper function to check if a substring is a palindrome
        func isPalindrome(_ i: Int, _ j: Int) -> Bool {
            var left = i
            var right = j
            while left < right {
                if chars[left] != chars[right] {
                    return false
                }
                left += 1
                right -= 1
            }
            return true
        }
        
        // Iterate through the string with two pointers
        while left < right {
            // If characters at left and right pointers are not equal,
            // we can either skip the left character or the right character
            // and check if the remaining substring is a palindrome
            if chars[left] != chars[right] {
                return isPalindrome(left + 1, right) || isPalindrome(left, right - 1)
            }
            // If they are equal, move both pointers inward
            left += 1
            right -= 1
        }
        
        // If we reach here, it means the string is already a palindrome
        return true
    }
}