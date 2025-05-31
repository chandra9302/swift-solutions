class MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        // Start from the end of both arrays
        // nums1 has enough space to hold the elements of nums2
        var i = m - 1
        var j = n - 1
        // k is the index where we will place the next largest element
        var k = m + n - 1
        
        // While there are elements in both arrays to compare
        while i >= 0 && j >= 0 {
            // Compare the elements from the end of both arrays
            // Place the larger element at the end of nums1
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            // Move the index k to the left
            k -= 1
        }
        
        // If there are remaining elements in nums2, copy them to nums1
        // This is necessary if nums2 has smaller elements that need to be placed at the start of nums1
        while j >= 0 {
            nums1[k] = nums2[j]
            j -= 1
            k -= 1
        }
    }
}