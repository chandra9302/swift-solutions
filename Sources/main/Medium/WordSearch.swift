final class WordSearch {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        guard !word.isEmpty, !board.isEmpty else {
            return false
        }
        let chars = Array(word)
        let rows = board.count, cols = board[0].count
        var board = board

        func dfs(_ row: Int, _ col: Int, _ index: Int) -> Bool {
            if index == chars.count { return true }

            if row < 0 || row >= rows || col < 0 || col >= cols || board[row][col] != chars[index] {
                return false
            }

            let originalChar = board[row][col]
            board[row][col] = "$"

            let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
            for (dr, dc) in directions {
                let nr = dr + row, nc = dc + col
                if dfs(nr, nc, index + 1) {
                    return true
                }
            }

            board[row][col] = originalChar
            return false
        }

        for row in 0..<rows {
            for col in 0..<cols {
                if board[row][col] == chars[0], dfs(row, col, 0) {
                    return true
                }
            }
        }

        return false
    }
}