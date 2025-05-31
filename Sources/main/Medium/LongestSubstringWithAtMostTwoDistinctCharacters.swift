final class LongestSubstringWithAtMostTwoDistinctCharacters {
    func lengthOfLongestSubstringTwoDistinct(_ s: String) -> Int {
        let s = Array(s)
        // Left & right pointers for the sliding window
        var left = 0
        var right = 0
        var charCount: [Character: Int] = [:]

        var maxLength = 0

        // Iterate through the string using a sliding window approach
        while right < s.count {
            // Add the current character to the count
            // If the character is not in the dictionary, add it with a count of 1
            let char = s[right]
            charCount[char, default: 0] += 1

            // If the character count exceeds 2, move the left pointer to the right
            while charCount.count > 2 {
                let leftChar = s[left]
                // Decrease the count of the left character
                charCount[leftChar, default: 0] -= 1
                // If the count becomes 0, remove the character from the dictionary
                if charCount[leftChar] ?? 0 <= 0 {
                    charCount.removeValue(forKey: leftChar)
                }
                // Move the left pointer to the right
                left += 1
            }
            // Update the maximum length of the substring found so far
            maxLength = max(maxLength, right - left + 1)
            right += 1
        }

        // Return the maximum length of the substring with at most 2 distinct characters
        return maxLength
    }
}