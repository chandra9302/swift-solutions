class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // Dictionary to store the unique characters
        var charSet = Set<Character>()
        var left = 0
        var maxLength = 0
        let chars = Array(s)

        // Iterate through the string
        for (_, char) in chars.enumerated() {
            // If the character is already in the set, remove characters from the left
            // until the current character is removed from the set.
            while charSet.contains(char) {
                charSet.remove(chars[left])
                left += 1
            }
            // Add the current character to the set
            charSet.insert(char)
            // Update the maximum length
            maxLength = max(maxLength, charSet.count)
        }
        // Return the maximum length of the substring without repeating characters
        return maxLength
    }
}