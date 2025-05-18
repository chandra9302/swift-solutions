final class RandomPickIndex {
    // Dictionary to store the indices of each number
    // The key is the number, and the value is an array of indices where that number appears
    var indexMap : [Int: [Int]]
    
    init(_ nums: [Int]) {
        indexMap = [:]
        for (i, num) in nums.enumerated() {
            indexMap[num, default:[]].append(i)
        }
    }
    
    // Function to pick a random index of the target number
    func pick(_ target: Int) -> Int {
        // Check if the target exists in the index map
        // If it does, randomly select one of the indices
        // If it doesn't, return 0
        guard let indices = indexMap[target], let result = indices.randomElement() else { return 0 }
        return result
    }
}