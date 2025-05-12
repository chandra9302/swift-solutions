class GenerateParentheses {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        // If n is 0, return an empty array
        if n == 0 { return result }

        // Backtracking function to generate parentheses
        func backtrack(_ current: String, _ open: Int, _ close: Int) {
            // If the current string has reached the maximum length, add it to the result
            // The maximum length is 2 * n because we need n open and n close parentheses
            if current.count == n * 2 {
                result.append(current)
                return
            }

            // If the number of open parentheses is less than n, we can add an open parenthesis
            // we can add an open parenthesis.
            if open < n {
                backtrack(current + "(", open + 1, close)
            }

            // If the number of close parentheses is less than the number of open parentheses,
            // we can add a close parenthesis.
            if close < open {
                backtrack(current + ")", open, close + 1)
            }
        }
        // Start the backtracking process with an empty string and 0 open and close parentheses
        backtrack("", 0, 0)
        // Return the result array containing all valid combinations of parentheses
        return result
    }
}