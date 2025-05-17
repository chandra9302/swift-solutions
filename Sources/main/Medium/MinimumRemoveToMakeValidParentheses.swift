class MinimumRemoveToMakeValidParentheses {
    func minRemoveToMakeValid(_ s: String) -> String {
        var stack = [Int]()
        var chars = Array(s)
        
        // First pass: find all invalid parentheses
        for (i, char) in s.enumerated() {
            if char == "(" {
                stack.append(i)
            } else if char == ")" {
                if !stack.isEmpty {
                    stack.removeLast()
                } else {
                    // Replace unmatched ")" with a space
                    // We can also use a set to mark invalid indices
                    chars[i] = " "
                }
            }
        }
        
        // Mark remaining unmatched "(" as invalid
        for index in stack {
            chars[index] = " "
        }
        
        // Remove all invalid characters
        return String(chars.filter { $0 != " " })
    }
}