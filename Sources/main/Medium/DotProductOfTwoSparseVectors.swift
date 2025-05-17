class SparseVector {
    // This is a sparse vector. It is represented as a dictionary where the key is the index and the value is the non-zero value at that index.
    // The dictionary is initialized with the non-zero values of the input array.
    var dict = [Int: Int]()
    init(_ nums: [Int]) {
        // Iterate through the input array and store the non-zero values in the dictionary.
        for (index, num) in nums.enumerated() where num != 0 {
            dict[index] = num
        }
    }

    func dotProduct(_ vec: SparseVector) -> Int {
        // Calculate the dot product of this sparse vector with another sparse vector.
        var result = 0
        // Iterate through the dictionary of this vector.
        for (index, num) in dict {
            // If the index exists in the other vector's dictionary, multiply the values and add to the result.
            // This is efficient because we only iterate through the non-zero values of this vector.
            if let otherNum = vec.dict[index] {
                result += num * otherNum
            }
        }
        return result
    }
}