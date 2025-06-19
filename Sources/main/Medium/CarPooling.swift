final class CarPooling {
    func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
        // Create an array to track the number of passengers at each time point
        var timeline = Array(repeating: 0, count: 1001) // 1000 is the max end time as per given constraints

        // Update the timeline based on the trips
        for trip in trips {
            let passengers = trip[0]
            let start = trip[1]
            let end = trip[2]

            // Increment passengers at the start time and decrement at the end time
            timeline[start] += passengers
            timeline[end] -= passengers
        }

        // Check if the capacity is exceeded at any time point
        var currentCapacity = 0
        for change in timeline {
            // Prefix sum to get the current number of passengers from the changes
            currentCapacity += change
            // If at any point the current capacity exceeds the maximum capacity, return false
            if currentCapacity > capacity {
                return false
            }
        }
        return true
    }


    func carPoolingUsingHeap(_ trips: [[Int]], _ capacity: Int) -> Bool {
        // Sort the trips based on the start time
        let sortedTrips = trips.sorted { $0[1] < $1[1] }
        // Initialize a min-heap to keep track of the end times of trips
        var minHeap = [(Int, Int)]() // (passengers, endtime)
        var currentCapacity = 0

        for trip in sortedTrips {
            // Extract passengers, start, and end from the trip
            let passengers = trip[0]
            let start = trip[1]
            let end = trip[2]

            // Remove trips that have ended by checking the trip end time of the top of the heap
            // and the start time of the current trip
            while !minHeap.isEmpty && minHeap[0].1 <= start {
                let (_, passengers) = minHeap.removeFirst()
                currentCapacity -= passengers
            }

            // Update the current capacity with the new trip
            currentCapacity += passengers
            // If the current capacity exceeds the maximum capacity, return false
            if currentCapacity > capacity {
                return false
            }

            // Add the current trip to the min-heap
            minHeap.append((passengers, end))
            minHeap.sort { $0.1 < $1.1 } // Sort the heap by end time

            // Check if the capacity is exceeded
            let totalPassengers = minHeap.reduce(0) { $0 + $1.0 }
            if totalPassengers > capacity {
                return false
            }
        }

        return true
    }
    /*
    // Time Complexity: O(n log n)
        •	n is the number of trips.
        •	Sorting the trips takes O(n log n).
        •	Each trip is processed once, and adding/removing from the heap takes O(log n) in the worst case.
    // Space Complexity: O(n)
        •	In the worst case, all trips could overlap, and we would store all of them in the heap.
    */
}