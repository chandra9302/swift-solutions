final class LetterCombinationsOfAPhoneNumber {
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else { return [] }

        let digit2letters: [Character: String] = [
            "2" : "abc",
            "3" : "def",
            "4" : "ghi",
            "5" : "jkl",
            "6" : "mno",
            "7" : "pqrs",
            "8" : "tuv",
            "9" : "wxyz"
        ]

        let digitsArray = Array(digits)
        var results = [String]()

        func backtrack(_ index: Int, _ currentComb: String) {
            if index >= digits.count {
                results.append(currentComb)
                return
            }

            var currentComb = currentComb
            let digit = digitsArray[index]
            if let chars = digit2letters[digit] {
                for char in chars {
                    currentComb.append(char)

                    backtrack(index + 1, currentComb)

                    currentComb.removeLast()
                }
            }
        }

        backtrack(0, "")
        return results
    }
}