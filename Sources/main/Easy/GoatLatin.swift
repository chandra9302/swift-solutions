class GoatLatin {
    func toGoatLatin(_ sentence: String) -> String {
        // Define a set of vowels for quick lookup
        let vowelSet = Set<Character>("aeiouAEIOU")

        // Split the sentence into words and process each word
        let words = sentence.split(separator: " ")
        // Initialize an array to hold the transformed words
        var result = [String]()
        // Iterate through each word and apply the Goat Latin transformation
         // If the first character is a vowel, append "ma" and "a" repeated index+1 times
         // If the first character is a consonant, move it to the end, append "ma" and "a" repeated index+1 times
        for (index, word) in words.enumerated() {
            var goatWord = ""
            let chars = Array(word)
            if vowelSet.contains(chars[0]) {
                goatWord.append(contentsOf: chars)
            } else {
                goatWord.append(contentsOf: chars[1...])
                goatWord.append(chars[0])
            }
            goatWord.append("ma")
            goatWord.append(contentsOf: repeatElement("a", count: index+1))
            result.append(goatWord)
        }

        // Join the transformed words into a single string and return it
         // The words are joined with a space separator
        return result.joined(separator: " ")
    }
}