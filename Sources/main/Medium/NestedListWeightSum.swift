// This is the interface that allows for creating nested lists.
// You should not implement it, or speculate about its implementation
public class NestedInteger {
    private var integer: Int?
    private var list: [NestedInteger]?

    // Initialize with an integer
    public init(_ value: Int) {
        self.integer = value
        self.list = nil
    }

    // Initialize with a list
    public init(_ nestedList: [NestedInteger]) {
        self.integer = nil
        self.list = nestedList
    }

    // Default initializer
    public init() {
        self.integer = nil
        self.list = []
    }

    // Return true if this NestedInteger holds a single integer, rather than a nested list.
    public func isInteger() -> Bool {
        return integer != nil
    }

    // Return the single integer that this NestedInteger holds, if it holds a single integer
    // The result is undefined if this NestedInteger holds a nested list
    public func getInteger() -> Int {
        return integer ?? 0
    }

    // Set this NestedInteger to hold a single integer.
    public func setInteger(value: Int) {
        self.integer = value
        self.list = nil
    }

    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
    public func add(elem: NestedInteger) {
        if list == nil {
            list = []
        }
        list?.append(elem)
    }

    // Return the nested list that this NestedInteger holds, if it holds a nested list
    // The result is undefined if this NestedInteger holds a single integer
    public func getList() -> [NestedInteger] {
        return list ?? []
    }
}

class NestedListWeightSum {
    func depthSum(_ nestedList: [NestedInteger]) -> Int {
        // This variable will hold the total sum
        var total = 0
        // Helper function to recursively calculate the sum
        func helper(_ nestedList: [NestedInteger], _ depth: Int) {
            // Iterate through each NestedInteger in the list
            nestedList.forEach { nestedInteger in
                // Check if the current NestedInteger is an integer or a list
                // If it's an integer, multiply it by the current depth and add to total
                if nestedInteger.isInteger() {
                    total += (nestedInteger.getInteger() * depth)
                } else {
                    // If it's a list, recursively call the helper function with the nested list and increased depth
                    helper(nestedInteger.getList(), depth + 1)
                }
            }
        }
        helper(nestedList, 1)    
        return total
    }
}