final class MinimumWindowSubstring {
    func minWindow(_ s: String, _ t: String) -> String {

        guard !s.isEmpty && !t.isEmpty else { return "" }
        
        let sChars = Array(s), tChars = Array(t)
        var tCount = [Character: Int]()
        var window = [Character: Int]()

        for char in tChars {
            tCount[char, default: 0] += 1
        }
        // Number of unique characters in t that we need to match in the window
        let need = tCount.count
        // Variables to track the number of unique characters in the current window that match the target
        var have = 0
        // Result variables to track the minimum window found
        // res will store the start and end indices of the minimum window
        var res = [-1, -1], resLen = Int.max
        var left = 0
        // Sliding window approach
        for (right, char) in sChars.enumerated() {
            // Add the current character to the window
            window[char, default: 0] += 1

            // If the current character's count matches the target character's count, increment 'have'
            // This means we have one more character in the window that matches the target
            if let tCharCount = tCount[char], 
            let windowCharCount = window[char], 
            tCharCount == windowCharCount {
                have += 1
            }

            // Now try to shrink the window from the left side
            // why while? Because we need to shrink the window to get min
            while have == need {
                // Update the result if the current window is smaller than the previous smallest window
                if (right - left + 1) < resLen {
                    res = [left, right]
                    resLen = (right - left + 1)
                }

                // Remove the leftmost character from the window
                if let windowCharCount = window[sChars[left]] {
                    window[sChars[left]] = windowCharCount - 1
                    // If the count of the leftmost character goes below the target count, decrement 'have'
                    if let tCharCount = tCount[sChars[left]], 
                    let windowCharCount = window[sChars[left]], 
                    tCharCount > windowCharCount {
                        have -= 1
                    }
                }
                // Move the left pointer to the right to shrink the window
                left += 1
            }
        }
        // If resLen is still Int.max, it means we didn't find any valid window
        // Otherwise, return the substring from the start to end indices stored in res
        return resLen == Int.max ? "" : String(sChars[res[0]...res[1]])
    }
}