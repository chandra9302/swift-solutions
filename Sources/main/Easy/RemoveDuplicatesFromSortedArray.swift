final class RemoveDuplicatesFromSortedArray {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var write = 1 // Pointer to store next unique element

        // Start from the second element and compare with the previous one
        for read in nums.indices.dropFirst() {
            // If the current element is different from the previous one, write it to the next position
            if nums[read] != nums[read - 1] {
                // Write the unique element to the write pointer position
                nums[write] = nums[read]
                // Increment the write pointer
                write += 1
            }
        }
        // The write pointer now indicates the length of the array with unique elements
        return write
    }
}