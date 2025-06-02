final class GroupShiftedStrings {
    func groupStrings(_ strings: [String]) -> [[String]] {
        // Dictionary to hold groups of shifted strings
        var groups: [String: [String]] = [:]
        
        // Iterate through each string in the input array
         // For each string, generate a key based on the differences between consecutive characters
         // and use this key to group the strings together.
        for str in strings {
            let key = getKey(for: str)
            groups[key, default: []].append(str)
        }
        
        // Return the values of the dictionary as an array of arrays
        return Array(groups.values)
    }
    // This function generates a key for each string based on the differences between consecutive characters.
    // Since the differences between each char are the same for shifted strings, this key can be used to group them together.
    private func getKey(for str: String) -> String {
        guard str.count > 1 else { return "single" } // Single character strings can be grouped together
        
        var diffs = [Int]()
        let chars = Array(str)
        for i in 1..<chars.count {
            // Calculate the difference between the current character and the previous one
            // Why wrap asciiValue with Int? Because asciiValue returns UInt8 which is unsigned and we cannot subtract unsigned ints.
            // Without this we will run into Swift runtime failure: arithmetic overflow

            // Why add 26? Because we want to ensure that the difference is always positive and within the range of 0-25.
            // In swift, % operator returns negative which would result in incorrect way to handle circular shifts.
            
            // True modulo is always non-negative 
            let diff = (Int(chars[i].asciiValue!) - Int(chars[i - 1].asciiValue!) + 26) % 26
            // Append the difference to the list of differences
            diffs.append(diff)
        }
        // Convert the differences to a string key
        return diffs.map { String($0) }.joined(separator: ",")
    }

}