final class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // Dictionary to hold grouped anagrams
        var groupedAnagrams = [String: [String]]()
        // Iterate through each string in the input array
        strs.forEach { str in
            let key = key(for: str) // Generate a key to identify anagrams
            groupedAnagrams[key, default: []].append(str) // Append the string to the corresponding anagram group
        }

        return Array(groupedAnagrams.values) // Return the grouped anagrams as an array of arrays
    }

    // Generate a key for the string, the algo can be changed without affecting the main logic.
    private func key(for str: String) -> String {
        return String(str.sorted())
    }
}

/*
MARK: - Complexity Analysis
•	Time Complexity: O(N * K log K)
    •	N is the number of strings in the input array, and K is the maximum length of a string.
    •	Sorting each string takes O(K log K) time, and we do this for all N strings.
•	Space Complexity: O(N * K)
    •	We store all strings in the dictionary, which in the worst case can take up O(N * K) space.
*/