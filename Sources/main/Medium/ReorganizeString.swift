/// A class that provides a method to reorganize a string so that no two adjacent characters are the same.
public class ReorganizeString {
    /// Rearranges the input string so that no two adjacent characters are the same.
    /// - Parameter s: The input string.
    /// - Returns: A reorganized string or an empty string if not possible.
    func reorganizeString(_ s: String) -> String {
        // Count the frequency of each character in the string
        var charCount = [Character: Int]()
        for char in s {
            charCount[char, default: 0] += 1
        }

        // If the most frequent character is more than half the string length (rounded up),
        // it's impossible to reorganize so that no two adjacent characters are the same
        if let maxCount = charCount.values.max(), maxCount > (s.count + 1) / 2 {
            return ""
        }

        // Create a max-heap (simulated with a sorted array) of (character, count) pairs
        var maxHeap = charCount.map { ($0.key, $0.value) }
            .sorted { $0.1 > $1.1 }

        var result = ""
        // Greedily pick the two most frequent characters and append them to the result
        while maxHeap.count >= 2 {
            var first = maxHeap.removeFirst()
            var second = maxHeap.removeFirst()
            
            result.append(first.0)
            result.append(second.0)
            
            first.1 -= 1
            second.1 -= 1

            // If there are still occurrences left, put them back into the heap
            if first.1 > 0 {
                maxHeap.append(first)
            }

            if second.1 > 0 {
                maxHeap.append(second)
            }

            // Re-sort the heap to maintain max-heap property
            maxHeap.sort { $0.1 > $1.1 }
        }

        // If one character remains, append it to the result
        if let last = maxHeap.first {
            result.append(last.0)
        }

        // Return the reorganized string
        return result
    }
}