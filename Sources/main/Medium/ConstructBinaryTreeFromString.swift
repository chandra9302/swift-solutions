class ConstructBinaryTreeFromString {
    func str2tree(_ s: String) -> TreeNode? {
        guard !s.isEmpty else { return nil }
        
        // Initialize a stack to keep track of the nodes
        var stack: [TreeNode] = []
        // Initialize a variable to keep track of the sign
        var sign = 1
        let chars = Array(s)
        var i = 0

        // Iterate through the characters in the string
        while i < chars.count {
            // If the character is a negative sign, change the sign to negative
            if chars[i] == "-" {
                sign *= -1
                i += 1
            } else if chars[i].isNumber {
                // If the character is a digit, extract the number. Severals characters can be part of the number.
                var num = ""
                while i < chars.count, chars[i].isNumber {
                    num.append(chars[i])
                    i += 1
                }
                // Create a new node with the extracted number and the current sign
                let node = TreeNode(Int(num)! * sign)
                // Reset the sign to positive for the next number
                sign = 1

                // If the stack is not empty, set the current node as a child of the last node in the stack
                if !stack.isEmpty {
                    let parent = stack.last!
                    // If the parent node has no left child, set the current node as the left child
                    if parent.left == nil {
                        parent.left = node
                    } else {
                        // If the parent node already has a left child, set the current node as the right child
                        parent.right = node
                    }
                }
                // Append the current node to the stack
                stack.append(node)
            } else if chars[i] == ")" {
                // If the character is a closing parenthesis, pop the last node from the stack
                stack.removeLast()
                i += 1
            } else if chars[i] == "(" {
                // If the character is an opening parenthesis, just move to the next character
                i += 1
            }
        }        
        
        // Return the root of the tree, which is the first node in the stack
        // The stack will contain the root node at the end of the iteration
        return stack.first
    }
}