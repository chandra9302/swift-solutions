final class DecodeString {
    func decodeString(_ s: String) -> String {
        // String stack to keep track of the strings
        var stringStack = [String]()
        // Count stack to keep track of the numbers
        var countStack = [Int]()
        // Current string and count
        var currentString = ""
        var currentCount = 0

        // Iterate through each character in the string
        for char in s {
            // If the character is a digit, update the current count
            if char.isNumber {
                currentCount = currentCount * 10 + Int(String(char))!
            } else if char == "[" {
                // If we encounter a '[', push the current count and string onto their respective stacks
                // and reset the current count and string
                countStack.append(currentCount)
                stringStack.append(currentString)
                currentCount = 0
                currentString = ""
            } else if char == "]" {
                // If we encounter a ']', pop the last count and string from their respective stacks
                // and repeat the current string the popped count times
                let repeatCount = countStack.removeLast()
                let prevString = stringStack.removeLast()
                currentString = prevString + String(repeating: currentString, count: repeatCount)
            } else {
                // If the character is a letter, append it to the current string
                currentString.append(char)
            }
        }
        // After processing all characters, currentString will contain the decoded string
        return currentString
    }
}