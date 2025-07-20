final class LetterCasePermutation {
    func letterCasePermutation(_ s: String) -> [String] {
        var result = [String]()
        let chars = Array(s)

        // Helper function to perform depth-first search / backtracking
        func dfs(_ index: Int, _ path: String) {
            // If we have processed all characters, add the current path to the result
            if index == chars.count {
                result.append(path)
                return
            }

            // Get the current character
            let char = chars[index]
            // If the character is a letter, we can choose to either keep it lowercase or uppercase
            if char.isLetter {
                // Recur with the character in lowercase and uppercase
                dfs(index+1, path + char.lowercased())
                dfs(index+1, path + char.uppercased())
            } else {
                // If it's not a letter, we just append it as is
                dfs(index+1, path + String(char))
            }
        }
        // Start the backtracking process from index 0 with an empty path
        dfs(0, "")
        return result
    }
}