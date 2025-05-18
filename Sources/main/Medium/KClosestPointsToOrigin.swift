class KClosestPointsToOrigin {
    func kClosestHeap(_ points: [[Int]], _ K: Int) -> [[Int]] {
        var maxHeap = [(Int, [Int])]()
        for point in points {
            let distance = point[0] * point[0] + point[1] * point[1]
            maxHeap.append((distance, point))
            maxHeap.sort { $0.0 < $1.0 }
            if maxHeap.count > K {
                maxHeap.removeLast()
            }
        }
        return maxHeap.map { $0.1 }
    }
}