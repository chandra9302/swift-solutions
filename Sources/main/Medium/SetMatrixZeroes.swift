final class SetMatrixZeroes {
    func setZeroes(_ matrix: inout [[Int]]) {
        guard !matrix.isEmpty else { return }
        
        let rows = matrix.count
        let cols = matrix[0].count
        
        var firstRowHasZero = false
        var firstColHasZero = false
        
        // Check if the first row has any zero
        for j in 0..<cols {
            if matrix[0][j] == 0 {
                firstRowHasZero = true
                break
            }
        }
        
        // Check if the first column has any zero
        for i in 0..<rows {
            if matrix[i][0] == 0 {
                firstColHasZero = true
                break
            }
        }
        
        // Use the first row and column to mark zeroes
        for i in 1..<rows {
            for j in 1..<cols {
                if matrix[i][j] == 0 {
                    matrix[i][0] = 0
                    matrix[0][j] = 0
                }
            }
        }
        
        // Set the cells to zero based on the marks in the first row and column
        for i in 1..<rows {
            for j in 1..<cols {
                if matrix[i][0] == 0 || matrix[0][j] == 0 {
                    matrix[i][j] = 0
                }
            }
        }
        
        // Set the first row to zero if needed
        if firstRowHasZero {
            for j in 0..<cols {
                matrix[0][j] = 0
            }
        }
        
        // Set the first column to zero if needed
        if firstColHasZero {
            for i in 0..<rows {
                matrix[i][0] = 0
            }
        }
    }
}