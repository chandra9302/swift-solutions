class MergeIntervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard !intervals.isEmpty else { return [] }
        
        // Sort the intervals based on the start time
        let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
        
        var merged = [sortedIntervals[0]]
        
        for i in 1..<sortedIntervals.count {
            let currentInterval = sortedIntervals[i]
            let lastMergedInterval = merged.last!
            
            // Check if there is an overlap
            if currentInterval[0] <= lastMergedInterval[1] {
                // Merge the intervals
                merged[merged.count - 1][1] = max(lastMergedInterval[1], currentInterval[1])
            } else {
                // No overlap, add the current interval to merged
                merged.append(currentInterval)
            }
        }
        
        return merged
    }
}