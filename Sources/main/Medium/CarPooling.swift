final class CarPooling {
    func carPooling(_ trips: [[Int]], _ capacity: Int) -> Bool {
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
            // Add the current trip to the min-heap
            minHeap.append((passengers, end))
            minHeap.sort { $0.1 < $1.1 } // Sort the heap by end time

            if currentCapacity > capacity {
                return false
            }

            // Check if the capacity is exceeded
            let totalPassengers = minHeap.reduce(0) { $0 + $1.0 }
            if totalPassengers > capacity {
                return false
            }
        }

        return true
    }
}