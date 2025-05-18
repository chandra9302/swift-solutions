class CustomSortString {
    func customSortString(_ order: String, _ str: String) -> String {
        // Create a frequency map to count the occurrences of each character in str
        var freqMap = [Character: Int]()
        // Iterate through the characters in the str string
        // and count the frequency of each character
        for char in str {
            // Count the frequency of each character in the order string
            freqMap[char, default: 0] += 1
        }

        var result = ""
        
        // Iterate through the characters in the str string
        for s in order {
            // If the character is in the order string, append it to the result by repeating it count times
            // The count is the number of times the character appears in str
            if let count = freqMap[s] {
                result.append(String(repeating: s, count: count))
                // Remove the character from the orderMap to avoid processing it again
                freqMap[s] = nil // Remove the character from the map after processing
            }
        }

        // Append the remaining characters that are not in the order string
        for key in freqMap.keys.sorted() {
            // Append the character to the result by repeating it count times
            // The count is the number of times the character appears in str
            result.append(String(repeating: key, count: freqMap[key]!))
        }
        
        return result
    }
}