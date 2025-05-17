class BuildingsWithAnOceanView {
    func oceanViewBuildings(_ heights: [Int]) -> [Int] {
        // Result array to store the heights of buildings with an ocean view
        var result = [Int]()
        // Maximum height seen so far
        var maxHeight = 0
        
        for i in stride(from: heights.count - 1, through: 0, by: -1) {
            // If the current building is taller than the maximum height seen so far,
            if heights[i] > maxHeight {
                // Add the index of height to the result array
                result.append(i)
                // Update the maximum height
                maxHeight = heights[i]
            }
        }
        
        // Reverse the result array to maintain the original order
        // The buildings with an ocean view are added in reverse order
        return result.reversed()
    }
}