final class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        // Mapping of open brackets to their corresponding closing brackets
        let mapping: [Character: Character] = ["(" : ")", "[" : "]", "{" : "}"]
        
        // Iterate through each character in the string
        for char in s {
            // If the character is a closing bracket, check if it matches the last opening bracket
            if let match = mapping[char] {
                stack.append(match)
            } else if stack.isEmpty || stack.removeLast() != char {
                // If the stack is not empty and the last opening bracket does not match the current closing bracket, return false
                return false
            }
        }
        
        // If the stack is empty, all brackets were matched correctly
        return stack.isEmpty
    }
}