class BasicCalculatorII {
    func calculate(_ s: String) -> Int {
        var stack = [Int]()
        var currentNumber = 0
        // This variable will hold the last operation
        // We will use it to determine how to handle the current number
        var operation: Character = "+"
        // Add a dummy character to handle the last number
        // This is a common trick to avoid having to check for the end of the string
        let chars = Array(s + "+")

        // Iterate through the characters in the string
        chars.forEach { char in
            if char.isNumber {
                // If the character is a number, we need to build the current number
                currentNumber = currentNumber * 10 + Int(String(char))!
            } else if char != " " {
                // If the character is not a space, we need to handle the last operation
                // We will use the last operation to determine how to handle the current number
                // We will also reset the current number to 0
                switch operation {
                case "+":
                    stack.append(currentNumber)
                case "-":
                    stack.append(-currentNumber)
                case "*":
                    stack[stack.count - 1] *= currentNumber
                case "/":
                    stack[stack.count - 1] /= currentNumber
                default:
                    break
                }
                operation = char
                currentNumber = 0
            }
        }
        
        
        return stack.reduce(0, +)
    }
}