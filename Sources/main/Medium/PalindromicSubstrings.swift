class PalindromicSubstrings {
    func countSubstrings(_ s: String) -> Int {
        let chars = Array(s)

        // Helper function to count palindromes centered at left and right
        func countPalindromes(_ left: Int, _ right: Int) -> Int {
            var count = 0
            var left = left, right = right
            // Expand around the center while the characters are equal
            // and within the bounds of the string
            while left >= 0 && right < chars.count && chars[left] == chars[right] {
                // Found a palindrome
                count += 1
                left -= 1
                right += 1
            }
            // Return the count of palindromes found
            return count
        }

        var totalCount = 0
        for i in 0..<chars.count {
            // Count odd-length palindromes
            totalCount += countPalindromes(i, i)
            // Count even-length palindromes
            totalCount += countPalindromes(i, i + 1)
        }
        // Return the total count of palindromic substrings
        return totalCount
    }
}