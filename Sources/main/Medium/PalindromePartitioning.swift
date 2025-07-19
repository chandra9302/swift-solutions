final class PalindromePartitioning {
    func partition(_ s: String) -> [[String]] {
        var result = [[String]]()
        var currentPartition = [String]()
        let chars = Array(s)
        
        // Helper function to check if a substring is a palindrome
        func backtrack(_ start: Int) {
            // If we have reached the end of the string, add the current partition to the result
            if start >= chars.count {
                result.append(currentPartition)
                return
            }

            // Try every possible end index for the substring starting from 'start'
            for end in start..<chars.count {
                // Check if the substring from start to end is a palindrome
                let substring = String(chars[start...end])
                if isPalindrome(substring) {
                    // If it is a palindrome, add it to the current partition
                    currentPartition.append(substring)
                    // Recur for the next part of the string
                    backtrack(end + 1)
                    // Backtrack: remove the last added substring
                    currentPartition.removeLast()
                }
            }
        }
        
        // Start the backtracking process from index 0
        backtrack(0)
        return result
    }
}