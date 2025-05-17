class ShortestPathInBinaryMatrix {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        let rows = grid.count, cols = grid[0].count
        if grid[0][0] == 1 || grid[rows-1][cols-1] == 1 { return -1 }
        var grid = grid
        let directions = [
            (-1, -1), (-1, 0), (-1, 1),
            (0, -1),           (0, 1),
            (1, -1),  (1, 0),  (1, 1)            
        ]

        var queue = [(0, 0, 1)]

        while !queue.isEmpty {
            let (row, col, dist) = queue.removeFirst()

            if row == rows - 1, col == cols - 1 { return dist }

            for (dr, dc) in directions {
                let nr = row + dr, nc = col + dc
                if nr >= 0, nr < rows, nc >= 0, nc < cols, grid[nr][nc] == 0 {
                    grid[nr][nc] = 1
                    queue.append((nr, nc, dist + 1))
                }
            }
        }
        return -1
    }
}