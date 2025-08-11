final class NQueens {
    func solveNQueens(_ n: Int) -> [[String]] {
        var board = Array(repeating: Array(repeating: ".", count: n), count: n)
        var cols = Set<Int>()
        var dg = Set<Int>()
        var adg = Set<Int>()
        var results = [[String]]()

        func dfs(_ row: Int) {
            if row == n {
                results.append(board.map { $0.joined() })
                return
            }

            for col in 0..<n {
                if cols.contains(col) || dg.contains(row + col) || adg.contains(row - col) {
                    continue
                }

                // Place queen
                board[row][col] = "Q"
                cols.insert(col)
                dg.insert(row + col)
                adg.insert(row - col)

                dfs(row + 1)

                // Backtrack
                board[row][col] = "."
                cols.remove(col)
                dg.remove(row + col)
                adg.remove(row - col)
            }
        }

        dfs(0)
        return results
    } 
}