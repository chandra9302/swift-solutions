final class GeneralizedAbbreviation {
    func generateAbbreviations(_ word: String) -> [String] {
        var abbrs = [String]()
        let chars = Array(word)

        func backtrack(_ index: Int, _ count: Int, _ current: String) {
            // If we have processed all characters, append the abbreviation
            // with the current count if greater than 0
            if index >= word.count {
                let abbr = current + (count > 0 ? "\(count)" : "")
                abbrs.append(abbr)
                return
            }

            // Abbreviate
            backtrack(index + 1, count + 1, current)

            // Don't abbreviate
            // Create string with current character
            let next = current + (count > 0 ? "\(count)" : "") + String(chars[index])
            backtrack(index + 1, 0, next)
        }

        backtrack(0, 0, "")
        return abbrs
    }
}