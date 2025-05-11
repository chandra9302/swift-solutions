class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charSet = Set<Character>()
        var left = 0
        var maxLength = 0
        let chars = Array(s)

        for (_, char) in chars.enumerated() {
            while charSet.contains(char) {
                charSet.remove(chars[left])
                left += 1
            }
            charSet.insert(char)
            maxLength = max(maxLength, charSet.count)
        }

        return maxLength
    }
}