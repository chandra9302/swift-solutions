class SortColors {
    func sortColors(_ nums: inout [Int]) {
        // Three pointers approach
        var zeroIndex = 0
        var twoIndex = nums.count - 1

        var i = 0
        while i <= twoIndex {
            // If the current element is 0, swap it with the element at zeroIndex
            // and increment zeroIndex and i.
            if nums[i] == 0 && i > zeroIndex {
                nums.swapAt(i, zeroIndex)
                zeroIndex += 1
            } else if nums[i] == 2 && i < twoIndex {
                // If the current element is 2, swap it with the element at twoIndex
                // and decrement twoIndex and increment i.
                nums.swapAt(i, twoIndex)
                twoIndex -= 1
            } else {
                // If the current element is 1, just move to the next element.
                i += 1
            }
        }
    }    
}