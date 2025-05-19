final class LongestPalindromicSubstring {
    func longestPalindrome(_ s: String) -> String {
        let n = s.count
        guard n > 1 else { return s }
        
        var start = 0
        var maxLength = 1
        
        for i in 0..<n {
            let len1 = expandAroundCenter(s, left: i, right: i)
            let len2 = expandAroundCenter(s, left: i, right: i + 1)
            let len = max(len1, len2)
            
            if len > maxLength {
                maxLength = len
                start = i - (len - 1) / 2
            }
        }
        
        let startIndex = s.index(s.startIndex, offsetBy: start)
        let endIndex = s.index(startIndex, offsetBy: maxLength)
        
        return String(s[startIndex..<endIndex])
    }
    
    private func expandAroundCenter(_ s: String, left: Int, right: Int) -> Int {
        var left = left
        var right = right
        
        while left >= 0 && right < s.count && s[s.index(s.startIndex, offsetBy: left)] == s[s.index(s.startIndex, offsetBy: right)] {
            left -= 1
            right += 1
        }
        
        return right - left - 1
    }
}