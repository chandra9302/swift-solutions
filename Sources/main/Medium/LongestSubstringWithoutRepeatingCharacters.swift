class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // Dictionary to store the unique characters in the current window.
        var charSet = Set<Character>()
        var left = 0
        var maxLength = 0
        let chars = Array(s)

        // Iterate through the string using a sliding window approach.
        // The left pointer represents the start of the window, and the right pointer represents the end.
        for (_, char) in chars.enumerated() {
            // If the character is already in the set, move the left pointer to the right
            // until the character is removed from the set.
            while charSet.contains(char) {
                charSet.remove(chars[left])
                left += 1
            }
            // Add the current character to the set.
            charSet.insert(char)
            // Update the maximum length of the substring found so far.
            // The length of the current substring is the difference between the right pointer and the left pointer.
            maxLength = max(maxLength, charSet.count)
        }

        return maxLength
    }
}