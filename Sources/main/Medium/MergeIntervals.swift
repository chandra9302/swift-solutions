class MergeIntervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard !intervals.isEmpty else { return [] }
        
        // Sort intervals by the start time
        let sorted = intervals.sorted { $0[0] < $1[0] }

        // Intialize an empty array to hold the merged intervals
        var merged = [[Int]]()

        // Loop through each interval
        for interval in sorted {
            // If merged is not empty, get the last merged interval
            // and check if the current interval overlaps with it
            if let last = merged.last, last[1] >= interval[0] {
                // If they overlap, merge them by updating the end time of the last merged interval
                merged[merged.count - 1][1] = max(last[1], interval[1])
            } else {
                // If they do not overlap, simply append the current interval to merged
                merged.append(interval)
            }
        }
        
        // Return the merged intervals
        return merged
    }
}