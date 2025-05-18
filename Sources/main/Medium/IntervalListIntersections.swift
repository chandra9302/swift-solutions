class IntervalListIntersections {
    func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        // Check if either list is empty, if so, return an empty array
        guard !firstList.isEmpty && !secondList.isEmpty else { return [] }
        // Initialize an empty result array to store the intersections
        var result: [[Int]] = []
        // Initialize two pointers to iterate through both lists
        var i = 0, j = 0
        // Iterate through both lists until we reach the end of either list
        while i < firstList.count && j < secondList.count {
            // Find the maximum of the start points of the two intervals
            let lo = max(firstList[i][0], secondList[j][0])
            // Find the minimum of the end points of the two intervals
            let hi = min(firstList[i][1], secondList[j][1])

            // If the start point is less than or equal to the end point, we have an intersection
            if lo <= hi {
                result.append([lo, hi])
            }
            // Move the pointer of the interval that ends first
            // This is done to find the next potential intersection
            if firstList[i][1] < secondList[j][1] {
                i += 1
            } else {
                j += 1
            }
        }

        // Return the result array containing all intersections
        return result
    }
}