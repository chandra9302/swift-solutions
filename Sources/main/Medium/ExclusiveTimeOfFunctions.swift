class ExclusiveTimeOfFunctions {
    func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
        // Initialize an array to store the exclusive time for each function
        var result = Array(repeating: 0, count: n)
        // Stack to keep track of the function IDs
        var stack = [Int]() // Stack to keep track of function IDs
        // Variable to keep track of the previous time
        var prevTime = 0
        
        for log in logs {
            let parts = log.split(separator: ":")
            let functionId = Int(parts[0])!
            let time = Int(parts[2])!
            let isStart = parts[1] == "start"
            // If the function is starting, we need to update the exclusive time
            if isStart {
                // If the stack is not empty, we need to update the exclusive time of the last function
                if let lastFunctionId = stack.last {
                    // The exclusive time of the last function is the difference between the current time and the previous time
                    result[lastFunctionId] += time - prevTime
                }
                // Push the current function ID onto the stack
                stack.append(functionId)
                // Update the previous time to the current time
                prevTime = time
            } else {
                // If the function is ending, we need to update the exclusive time
                let functionId = stack.removeLast()
                // The exclusive time of the current function is the difference between the current time and the previous time
                result[functionId] += time - prevTime + 1
                // If the stack is not empty, we need to update the previous time to the current time
                prevTime = time + 1
            }
        }
        
        // Return the result array containing the exclusive time for each function
        return result
    }
}