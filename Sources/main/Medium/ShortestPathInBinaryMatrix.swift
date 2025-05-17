class ShortestPathInBinaryMatrix {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        // Check if the grid is empty or if the start or end cell is blocked
        let rows = grid.count, cols = grid[0].count
        if grid[0][0] == 1 || grid[rows-1][cols-1] == 1 { return -1 }
        var grid = grid
        // Define the 8 possible directions (up, down, left, right, and the 4 diagonals)
        let directions = [
            (-1, -1), (-1, 0), (-1, 1),
            (0, -1),           (0, 1),
            (1, -1),  (1, 0),  (1, 1)            
        ]

        // Initialize a queue for BFS and mark the starting cell as visited
        var queue = [(0, 0, 1)]
        grid[0][0] = 1

        // Perform BFS
        while !queue.isEmpty {
            let (row, col, dist) = queue.removeFirst()
            // Check if we have reached the bottom-right corner
            if row == rows - 1, col == cols - 1 { return dist }

            // Explore all 8 possible directions
            for (dr, dc) in directions {
                // Calculate the new row and column indices
                let nr = row + dr, nc = col + dc
                // Check if the new indices are within bounds and if the cell is unvisited
                if nr >= 0, nr < rows, nc >= 0, nc < cols, grid[nr][nc] == 0 {
                    // Mark the cell as visited and add it to the queue
                    grid[nr][nc] = 1
                    queue.append((nr, nc, dist + 1))
                }
            }
        }
        return -1
    }
}