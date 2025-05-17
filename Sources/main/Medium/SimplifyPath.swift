class SimplifyPath {
    func simplifyPath(_ path: String) -> String {
        // Split the path by "/" and initialize an empty stack
        let pathComponents = path.split(separator: "/")
        var stack = [String]()

        // Iterate through each component of the path
        pathComponents.forEach { component in
            // If the component is "..", pop the last element from the stack
            if component == ".." {
                // Check if the stack is not empty before popping
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else if component != "." && !component.isEmpty {
                // If the component is not "." and not empty, push it onto the stack
                stack.append(String(component))
            }
        }

        return "/" + stack.joined(separator: "/")
    }
}