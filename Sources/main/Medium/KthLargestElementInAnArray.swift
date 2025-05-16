import Collections

class KthLargestElementInAnArray {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        
        // Create a min-heap to store the k largest elements
        var minHeap = Heap<Int>()
        
        nums.forEach { num in
            minHeap.insert(num)
            if minHeap.count > k {
                _ = minHeap.removeMin()
            }
        }
        // The root of the min-heap is the kth largest element
        return minHeap.min!
    }
}