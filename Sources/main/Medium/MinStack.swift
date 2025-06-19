final class MinStack {
    // Each element in the stack is a tuple containing the value and the current minimum at that point
    private var stack: [(value: Int, currentMin: Int)]

    init() {
        stack = []
    }

    func push(_ val: Int) {
        // Get previous minimum or set to val if stack is empty
        let currentMin = stack.last?.currentMin ?? val
        // Push the new value along with the updated minimum
        stack.append((val, min(val, currentMin)))
    }

    func pop() {
        // Remove the top element from the stack
        stack.popLast()
    }

    func top() -> Int {
        // Return the value of the top element
        stack.last!.value
    }

    func getMin() -> Int {
        // Return the current minimum value
        stack.last!.currentMin
    }
}