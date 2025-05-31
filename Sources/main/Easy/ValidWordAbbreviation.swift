class ValidWordAbbreviation {
    func validWordAbbreviation(_ word: String, _ abbr: String) -> Bool {
        let wordChars = Array(word)
        let abbrChars = Array(abbr)

        var i = 0, j = 0

        // Iterate through both the word and abbreviation
        // Use two pointers i for word and j for abbr
        while i < wordChars.count, j < abbrChars.count {
            // If the current character in abbr is a digit
            // we need to handle the number and skip that many characters in word
            if abbrChars[j].isNumber {
                // If the first character is '0', it's invalid
                if abbrChars[j] == "0" { return false }
                var num = 0
                // Read the full number from the abbreviation
                while j < abbrChars.count, abbrChars[j].isNumber {
                    num = num * 10 + Int(String(abbrChars[j]))!
                    j += 1
                }
                // Move the word pointer i forward by num characters
                i += num
            } else {
                // If the current character in abbr is not a digit,
                // we need to check if it matches the current character in word
                // If it doesn't match, return false
                if i >= wordChars.count || wordChars[i] != abbrChars[j] { return false }
                // If it matches, move both pointers forward
                i += 1
                j += 1
            }
        }

        // After the loop, we need to check if both pointers have reached the end
        // If both pointers are at the end, it means the abbreviation is valid
        // If either pointer is not at the end, it means the abbreviation is invalid
        return i == wordChars.count && j == abbrChars.count
    }
}