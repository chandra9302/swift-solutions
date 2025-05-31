class NumMatrix {
    var matrix: [[Int]]
    var prefixSum: [[Int]]

    init(_ matrix: [[Int]]) {
        self.matrix = matrix
        let rows = matrix.count
        let cols = matrix[0].count
        // Initialize prefixSum with an extra row and column for easier calculations
        prefixSum = Array(repeating: Array(repeating: 0, count: cols + 1), count: rows + 1)

        // Calculate prefix sums
        for i in 1...rows {
            for j in 1...cols {
                // The below line calculates the sum of the submatrix from (0,0) to (i-1,j-1)
                // We need to adjust the indices since prefixSum has an extra row and column
                prefixSum[i][j] =
                    matrix[i - 1][j - 1] + prefixSum[i - 1][j] + prefixSum[i][j - 1]
                    - prefixSum[i - 1][j - 1]
            }
        }
    }

    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        // Calculate the sum of the submatrix from (row1, col1) to (row2, col2)
        // Using the prefix sums, we can calculate the sum in O(1) time
        return prefixSum[row2 + 1][col2 + 1] - prefixSum[row2 + 1][col1] - prefixSum[row1][col2 + 1]
            + prefixSum[row1][col1]
    }
}
