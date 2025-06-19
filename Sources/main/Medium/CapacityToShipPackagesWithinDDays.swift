final class CapacityToShipPackagesWithinDDays {
    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
        // Binary search space variables
        var low = weights.max() ?? 0 // Ship's minimum capacity will be max of given weights.
        var high = weights.reduce(0, +) // Ship's maximum capacity will be sum of all weights.

        // Helper function to check if a given capacity can ship all packages within the specified days
        func canShip(_ capacity: Int) -> Bool {
            var daysNeeded = 1
            var load = 0

            for weight in weights {
                if load + weight > capacity { // adding current weight overloads, so ship next day
                    daysNeeded += 1 // start a new day
                    load = 0 // reset currentLoad
                }
                load += weight
                
                // If days needed exceeds the allowed days, return false as early exit
                if daysNeeded > days {
                    return false
                }
            }
            // If we can ship within the allowed days, return true
            return true
        }

        // Perform binary search to find the minimum capacity needed
        while low < high {
            let mid = low + (high - low) / 2
            if canShip(mid) {
                high = mid // Try for a smaller capacity
            } else {
                low = mid + 1 // Increase capacity
            }
        }

        // The minimum capacity needed to ship within the allowed days
        return low
        /*
        ✅ Why low holds the answer:
	    •	We’re searching from the smallest possible capacity (low) to the largest possible (high).
	    •	Whenever canShip(mid) is true, we don’t discard mid, because it might be the minimum valid capacity.
	    •	So we shrink the search space by doing high = mid instead of low = mid + 1.
	    •	Eventually, low == high, and at that point:
	        •	All values < low are invalid (fail canShip)
	        •	low is the smallest capacity that satisfies the condition → ✅ the correct answer.
        */
    }
}
/*
// MARK: - Complexity Analysis
Time Complexity: O(n log m)
    •	n is the number of packages (length of weights array).
    •	m is the range of possible capacities (from max(weights) to sum(weights)).
    •	log m comes from the binary search over the capacity range.
    •	Each canShip check takes O(n) time to iterate through the weights.
Space Complexity: O(1)
    •	We use a constant amount of extra space.
*/