final class NumberOfIslands {
    func numIslands(_ grid: [[Character]]) -> Int {
         // If the grid is empty, return 0
         // This check is necessary to avoid accessing an empty array
        guard !grid.isEmpty else { return 0 }
        
        // Create a mutable copy of the grid to avoid modifying the original
        var grid = grid
        // Initialize a counter to keep track of the number of islands
        var count = 0
        
        // Depth-first search function to explore the island
        func dfs(_ i: Int, _ j: Int) {
            // Check if the current cell is out of bounds or not part of an island
            guard i >= 0, i < grid.count, j >= 0, j < grid[i].count, grid[i][j] == "1" else { return }
            
            // Mark the current cell as visited by changing it to "0"
            grid[i][j] = "0"
            
            // Recursively explore the neighboring cells (up, down, left, right)
            dfs(i + 1, j)
            dfs(i - 1, j)
            dfs(i, j + 1)
            dfs(i, j - 1)
        }

        // Iterate through each cell in the grid
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                // If the current cell is part of an island, increment the count and start DFS
                if grid[i][j] == "1" {
                    count += 1
                    dfs(i, j)
                }
            }
        }
        
        return count
    }
}