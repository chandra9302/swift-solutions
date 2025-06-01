final class MakingALargeIsland {
    func largestIsland(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var maxArea = 0
        // Unique island identifier for each identified island
        var islandId = 2
        // Map to store the area of each island identified by its unique id
        var areaMap = [Int: Int]()
        var grid = grid 
        let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]
        
        // Function to perform DFS and calculate area of the island
        func dfs(row: Int, col: Int) -> Int {
            if row < 0 || row >= n || col < 0 || col >= n || grid[row][col] != 1 {
                return 0
            }
            grid[row][col] = islandId // Mark the cell with the island id
            // Initialize area for this island
            var area = 1

            for (dr, dc) in directions {
                area += dfs(row: row + dr, col: col + dc)
            }
            
            return area
        }
        
        // Calculate areas of all islands and store in areaMap
        for row in 0..<n {
            for col in 0..<n {
                if grid[row][col] == 1 {
                    let area = dfs(row: row, col: col)
                    areaMap[islandId] = area
                    maxArea = max(maxArea, area)
                    islandId += 1
                }
            }
        }
        
        // Check each cell to see if changing it to land increases the area
        for row in 0..<n {
            for col in 0..<n {
                if grid[row][col] == 0 {
                    var newArea = 1 // Count the current cell as land
                    var seenIslands = Set<Int>()
                    
                    // Check all four directions
                    for (dr, dc) in directions {
                        let nr = row + dr, nc = col + dc
                        if nr >= 0 && nr < n && nc >= 0 && nc < n && grid[nr][nc] > 1 {
                            let id = grid[nr][nc]
                            if !seenIslands.contains(id) {
                                seenIslands.insert(id)
                                newArea += areaMap[id] ?? 0
                            }
                        }
                    }
                    
                    maxArea = max(maxArea, newArea)
                }
            }
        }
        // If no land was found, return 1 (the cell itself can be turned into land)
        return maxArea > 0 ? maxArea : 1
    }
}