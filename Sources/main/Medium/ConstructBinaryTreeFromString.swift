class ConstructBinaryTreeFromString {
    func str2tree(_ s: String) -> TreeNode? {
        guard !s.isEmpty else { return nil }
        
        var stack: [TreeNode] = []
        var sign = 1
        let chars = Array(s)
        var i = 0

        while i < chars.count {
            if chars[i] == "-" {
                sign *= -1
                i += 1
            } else if chars[i].isNumber {
                var num = ""
                while i < chars.count, chars[i].isNumber {
                    num.append(chars[i])
                    i += 1
                }
                let node = TreeNode(Int(num)! * sign)
                sign = 1

                if !stack.isEmpty {
                    let parent = stack.last!
                    if parent.left == nil {
                        parent.left = node
                    } else {
                        parent.right = node
                    }
                }
                stack.append(node)
            } else if chars[i] == ")" {
                stack.removeLast()
                i += 1
            } else if chars[i] == "(" {
                i += 1
            }
        }        
        
        return stack.first
    }
}