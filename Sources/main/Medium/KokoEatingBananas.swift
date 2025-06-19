final class KokoEatingBananas {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        // Binary search space is between 1 and the maximum pile size
        var low = 1
        var high = piles.max() ?? 1

        // Helper function to check if Koko can finish eating all bananas at a given speed within h hours
        func canFinish(_ speed: Int) -> Bool {
            var hours = 0
            for pile in piles {
                // Calculate hours needed for each pile at the given speed
                /* 
                    This logic is equivalent to Int(ceil(Double(pile) / Double(speed)))
                    but avoids floating-point arithmetic for better performance and precision.
                    ✅ Why (pile + speed - 1) works:
                    •	(pile + speed - 1) // speed performs integer division that effectively rounds up.
                    •	This works because adding (speed - 1) ensures that any remainder in the division
                    causes the integer division to round up to the next whole number.
                    •	E.g: For pile = 8 and speed = 3:
                        - 8 / 3 = 2.666... which should round up to 3
                        - (8 + 3 - 1) // 3 = (10) // 3 = 3
                    ❌ Why (pile + speed) doesn't work:
                    •	If pile is exactly divisible by speed, (pile + speed) // speed would incorrectly add an extra hour.
                    •	E.g: (8 + 4) // 4 = 3 hours instead of 2 hours
                 */
                 hours += (pile + speed - 1) / speed // Equivalent to ceil(pile / speed) which avoids floating-point operations

                 // Early exit if we exceed the allowed hours
                 if hours > h { 
                    return false
                 } 
            }
            return true
        }

        // Perform binary search to find the minimum eating speed
        while low < high {
            let mid = low + (high - low) / 2
            if canFinish(mid) {
                high = mid
            } else {
                low = mid + 1
            }
        }
        return low
    }
}

/*
MARK: - Complexity Analysis
Time Complexity: O(n log m)
    •	n is the number of piles.
    •	m is the range of possible eating speeds (from 1 to max(piles)).
    •	log m comes from the binary search over the speed range.
    •	Each canFinish check takes O(n) time to iterate through the piles.
Space Complexity: O(1)
    •	We use a constant amount of extra space.
*/