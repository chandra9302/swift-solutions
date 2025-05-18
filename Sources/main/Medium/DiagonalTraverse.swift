class DiagonalTraverse {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty else { return [] }
        
        let rows = matrix.count
        let cols = matrix[0].count
        var result = [Int]()
        
        // This variable will help us determine the direction of traversal
        var up = true

        var row = 0, col = 0
        // Traverse the matrix diagonally
        while row < rows, col < cols {
            if up {
                // Traverse the current diagonal upwards

                // We will move up and to the right until we reach the top or the right edge
                while row > 0, col < cols - 1 {
                    result.append(matrix[row][col])
                    row -= 1
                    col += 1
                }
                // Add the last element of the diagonal
                result.append(matrix[row][col])
                // If we reach the top, we need to move to the next column
                if col == cols - 1 {
                    row += 1
                } else {
                    // If we reach the left edge, we need to move to the next row
                    col += 1
                }
            } else {
                // Traverse the current diagonal downwards

                // We will move down and to the left until we reach the bottom or the left edge
                while col > 0, row < rows - 1 {
                    result.append(matrix[row][col])
                    row += 1
                    col -= 1
                }
                // Add the last element of the diagonal
                result.append(matrix[row][col])
                // If we reach the bottom, we need to move to the next row
                if row == rows - 1 {
                    // Move to the next column
                    col += 1
                } else {
                    // If we reach the right edge, we need to move to the next row
                    row += 1
                }
            }
            // Toggle the direction for the next diagonal
            up.toggle()
        }
        return result
    }
}