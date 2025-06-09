final class WordLadder {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        // Convert the word list to a set for O(1) lookups
        var wordSet = Set(wordList)
        
        // If the end word is not in the word list, return 0
        guard wordSet.contains(endWord) else { return 0 }
        
        // Use a queue for BFS
        var queue: [(String, Int)] = [(beginWord, 1)]
        
        while !queue.isEmpty {
            let (currentWord, depth) = queue.removeFirst()
            
            // If we reach the end word, return the number of steps
            if currentWord == endWord {
                return depth
            }
            
            // Create a mutable array of characters from the current word
            var nextWord = Array(currentWord)

            // Generate all possible next words by changing one letter at a time
            for i in 0..<currentWord.count {
                for char in "abcdefghijklmnopqrstuvwxyz" {
                    // Skip if the character is the same as the current one
                    if nextWord[i] == char { continue }
                    // Store the current character at position i to restore later
                    let currentChar = nextWord[i]
                    // Change the character at position i to the new character
                    nextWord[i] = char
                    // Convert the character array back to a string
                    let nextWordStr = String(nextWord)
                    // If the next word is in the set, add it to the queue and remove it from the set
                    if wordSet.contains(nextWordStr) {
                        // Append the new word and the incremented depth to the queue
                        queue.append((nextWordStr, depth + 1))
                        // Remove the word from the set to prevent cycles
                        wordSet.remove(nextWordStr)
                    }
                    // Restore the character for the next iteration
                    nextWord[i] = currentChar
                }
            }
        }
        
        // If we exhaust the queue without finding the end word, return 0
        return 0
    }
}

// This would lead to TLE for large inputs, so we use a more efficient BFS approach
// The BFS approach is more efficient as it explores all possible transformations level by level,
final class WordLadderBFS {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        guard wordList.contains(endWord) else { return 0 }
        
        var queue: [(String, Int)] = [(beginWord, 1)]
        var visited: Set<String> = [beginWord]
        
        while !queue.isEmpty {
            let (currentWord, depth) = queue.removeFirst()
            
            if currentWord == endWord {
                return depth
            }
            
            for word in wordList {
                if !visited.contains(word) && isOneLetterDifferent(currentWord, word) {
                    visited.insert(word)
                    queue.append((word, depth + 1))
                }
            }
        }
        
        return 0
    }
    
    private func isOneLetterDifferent(_ word1: String, _ word2: String) -> Bool {
        let count = zip(word1, word2).filter { $0 != $1 }.count
        return count == 1
    }
}