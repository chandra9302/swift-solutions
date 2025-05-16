import Collections

class KthLargestElementInAnArray {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        
        // Create a min-heap to store the k largest elements
        var minHeap = Heap<Int>()
        
        nums.forEach { num in
            // Insert the current number into the min-heap
            minHeap.insert(num)
            // If the size of the min-heap exceeds k, remove the smallest element
            if minHeap.count > k {
                _ = minHeap.removeMin()
            }
        }
        // The root of the min-heap is the kth largest element
        return minHeap.min!
    }
}