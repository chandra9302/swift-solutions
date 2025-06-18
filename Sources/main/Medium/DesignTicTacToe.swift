final class DesignTicTacToe {
    //rows are used to track the sum of each row
    private var rows: [Int]
    //cols are used to track the sum of each column
    private var cols: [Int]
    //diagonal is used to track the sum of the main diagonal (Top Left to Bottom Right)
    private var diagonal: Int
    //antiDiagonal is used to track the sum of the anti-diagonal (Top Right to Bottom Left)
    private var antiDiagonal: Int
    private let n: Int

    init(_ n: Int) {
        self.n = n
        self.rows = Array(repeating: 0, count: n)
        self.cols = Array(repeating: 0, count: n)
        self.diagonal = 0
        self.antiDiagonal = 0
    }

    func move(_ row: Int, _ col: Int, _ player: Int) -> Int {
        // Validate the player input
        let playerValue = player == 1 ? 1 : -1
        
        // Update the row sum
        rows[row] += playerValue
        // Update the column sum
        cols[col] += playerValue
        
        // Update the diagoanl (Top Left to Bottom Right) if applicable
        if row == col {
            diagonal += playerValue
        }
        
        // Update the anti-diagonal (Top Right to Bottom Left) if applicable
        if row + col == n - 1 {
            antiDiagonal += playerValue
        }
        
        // Check if the current player has won
        // A player wins if any row, column, diagonal, or anti-diagonal has a sum of n or -n
        if abs(rows[row]) == n || abs(cols[col]) == n || abs(diagonal) == n || abs(antiDiagonal) == n {
            // Return the player number who has won
            return player
        }
        
        // If no player has won, return 0
        return 0
    }
}