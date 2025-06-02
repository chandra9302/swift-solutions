final class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        
        // Start with the first string as the initial prefix
        var prefix = strs[0]
        
        // Compare the prefix with each string in the array
        for str in strs[1...] {
            while !str.hasPrefix(prefix) {
                // Shorten the prefix until it matches the start of the current string
                prefix.removeLast()
                // If at any point the prefix becomes empty, we can break early
                if prefix.isEmpty {
                    return ""
                }
            }
        }
        
        return prefix
    }
}